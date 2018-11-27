<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cdaftarkos extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Mkos');
		$this->load->helper('url');
		$this->load->helper('file');
		$this->load->library('upload');
		$this->load->library('form_validation');
		$this->load->library('session');
		if ($this->session->userdata('level')=="") {
			redirect('Auth');
		}
	}
	public function index()
	{
		if ($this->session->userdata('level')=="owner") {
			$this->indexuser();
		}
		if ($this->session->userdata('level')=="admin") {
			$this->indexadmin();
		}
	}
	public function indexadmin()
	{
		$data['judul'] = "Daftar pengajuan pinjaman";
		$data['daftar'] = $this->Mpinjaman->getdatapengajuanpinjaman(1);
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('daftarpengajuanpinjaman',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function verifikasipinjaman($idpinjaman)
	{
		$data['judul'] = "Verifikasi pengajuan pinjaman";
		$data['daftar'] = $this->Mpinjaman->getdatapengajuanpinjamanbyid($idpinjaman);
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('detailpengajuanpinjaman',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function indexuser()
	{				
	// 		$data['judul'] = "Pengajuan";
	// 		$data['errorfile']= "";
	// 	$data['daftar'] = $this->Mkos->getalldata($config['per_page'],$from,$cari);

	// 		$this->load->view('template/head',$data);
	// 	$this->load->view('template/topbar');
	// 	$this->load->view('template/sidebaruser');
	// 	$this->load->view('daftarpinjaman',$data);//isi view
	// 	$this->load->view('template/js');
	// 	$this->load->view('template/foot');
		$this->load->library('pagination');
		$this->load->library('session');
		if ($this->uri->segment(2)!='index') {
			$this->session->unset_userdata('cari');
		}
		$cari = "";
		if($this->input->get('submit') != NULL ){
			$cari = $this->input->get('cari');
			$this->session->set_userdata(array("cari"=>$cari));
		}else{
			if($this->session->userdata('cari') != NULL){
				$cari = $this->session->userdata('cari');
			}
		}
		$config['base_url'] = site_url('Cpengajuan/index');
		$config['total_rows'] = $this->Mkos->totaldata($cari);
		$config['per_page'] = 20;
		$from = $this->uri->segment(3);

		$this->pagination->initialize($config);

		$data['cari'] = $cari;
		$data['daftar'] = $this->Mkos->getalldata($config['per_page'],$from,$cari);
		$data['judul']= "akun anggota";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('daftarkos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function pengajuanbyadmin($kta)
	{
		$tanggallahir = $this->Mpinjaman->gettanggallahir($kta);
		if (is_null($tanggallahir)) {
			$this->session->set_userdata('error','Data diri anda belum lengkap. Silahkan isi di profil');
			redirect('Cpengajuan', 'refresh');
		} else {
			$data['judul'] = "Pengajuan";
			$data['errorfile']= "";
			if ($this->Mpinjaman->statpinjaman($kta) == null) {
				$this->Mpinjaman->createdatapinjaman($kta);
			}
			$data['statpinjaman'] = $this->Mpinjaman->statpinjaman($kta);
			$this->view($data);
		}
	}	
	function updateverifikasipinjaman(){
		$id_pinjaman = $this->input->post('id_pinjaman');
		$kta = $this->input->post('kta');
		$unitpinjaman = $this->input->post('unit');
		if($this->input->post('submit')=='terima'){
		//diterima
			if ($this->Mpinjaman->updatestatuspinjamanbyadmin($id_pinjaman,2)>0) {
				redirect('Cpengajuan','refresh');
			}else{
				echo "gagal update";
			}
		}else{
			//ditolak
			if ($this->Mpinjaman->updatestatuspinjamanbyadmin($id_pinjaman,0)>0) {
				$this->Mpinjaman->updatesp($unitpinjaman, 0, $kta);
				redirect('Cpengajuan','refresh');
			}else{
				echo "gagal update";
			}
		}
	}
	public function tambahdatakos()
	{				
		$data['judul']= "akun anggota";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('form_tambah_kos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}	

	public function datakosbaru()
	{
		
		$this->form_validation->set_rules('harga_atas', 'harga_atas', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('harga_bawah', 'harga_bawah', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('nama_kos', 'nama_kos', 'required');
		$this->form_validation->set_rules('alamat_kos', 'alamat_kos', 'required');
		$this->form_validation->set_rules('deskripsi', 'deskripsi', 'required');
		$this->form_validation->set_message('required', 'Wajib diisi!');
		$this->form_validation->set_message('alpha_dash', 'Tidak boleh mengandung spasi!');
		$this->form_validation->set_message('numeric', 'Hanya boleh diisi angka!');

		if ($this->form_validation->run() == FALSE) {
			$data['judul'] = "Pengajuan kos baru";
			$data['errorfile']= "";
			$this->load->view('template/head',$data);
			$this->load->view('template/topbar');
			$this->load->view('template/sidebaruser');
			$this->load->view('form_tambah_kos',$data);
			$this->load->view('template/js');
			$this->load->view('template/foot');
		} else {
			$result = (array) $this->Mkos->getnextid();
		$id = $result["AUTO_INCREMENT"];

			$nama_kos = $this->input->post('nama_kos');
			$alamat_kos = $this->input->post('alamat_kos');
			$harga_bawah = $this->input->post('harga_bawah');
			$harga_atas = $this->input->post('harga_atas');
			$deskripsi = $this->input->post('deskripsi');
			$foto_kos = $this->input->post('foto_kos');
			

			$config['allowed_types'] = 'jpg|jpeg';
			$config['overwrite'] = true;
			$config['upload_path'] = 'assets/gambar_upload/fotokos/';
			$config['file_name'] = $id.'_kos';
			$config['max_size'] = 2000;

			$this->upload->initialize($config);
			if ($this->upload->do_upload('foto_kos')) {
				$foto_kos = $config['upload_path'].$this->upload->data('file_name');

				$data = array(
					'id_kos' 		=> null,
					'id_akun' 		=> $this->session->userdata('id_akun'),
					'nama_kos' 		=> $nama_kos,
					'alamat_kos' 	=> $alamat_kos,
					'harga_bawah' 	=> $harga_bawah,
					'harga_atas' 	=> $harga_atas,
					'deskripsi' 	=> $deskripsi,
					'foto_kos' 		=> $foto_kos
					
				);
				if ($this->Mkos->add($data)) {
					$this->session->set_userdata('success','Penambahan data kos telah terkirim. Silahkan isi deskripsi kamar kos');
					redirect('Cdaftarkos', 'refresh');
				} else {
					$data['judul'] = "Pengajuan";
					$data['errorfile']= "Input file gagal!";
					$this->view($data);
					unlink($fotokos);
				}
			}
		}}
		function unitpinjaman($up){
			if ($up== 'sp1') {
				return 1;
			}
			if ($up== 'sp2') {
				return 2;
			}
			if ($up== 'sp3') {
				return 3;
			}
			if ($up== 'sp') {
				return 4;
			}
		}
		function checkdateformat($date) {
			$d = DateTime::createFromFormat('Y-m-d', $date);
			if ($d == FALSE) {
				$this->form_validation->set_message('checkdateformat', 'Format tanggal salah!');
			}
			return $d && $d->format('Y-m-d') === $date;
		} 

		function checkmasapensiun($angsuran = null) {
			if ($angsuran == null) {
				return true;
			} else {
				$kta = $this->session->userdata('KTA');
				$pilPensiun = $this->Mpinjaman->getpilpensiun($kta);
				$bulanPensiun;
				if ($pilPensiun == '58') {
					$bulanPensiun = 696;
				} else {
					$bulanPensiun = 720;
				}
				$sisaPensiun = $bulanPensiun - $this->Mpinjaman->getpensiun($kta);
				if ($sisaPensiun - $angsuran < 0) {
					$this->form_validation->set_message('checkmasapensiun', 'Angsuran melebihi masa pensiun anda!');
					return false;
				} else {
					return true;
				}
			} 
		}

	}