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
	
	public function indexuser()
	{				
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
		$data['judul']= "Daftar Kos";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('daftarkos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editdatakos($id_kos,$error1=null)
	{
		$data['judul']= "akun anggota";
		$data['error1'] = $error1;
		$data['datakos'] = $this->Mkos->getdatakosbyid($id_kos);
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('form_edit_kos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function detail($id_kos)
	{
		$data['daftar'] = $this->Mkos->getdatadetailkos($id_kos);
		$data['judul']= "Daftar Kamar Kos";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('daftarkamarkos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
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
	public function tambahdatakamarkos()
	{				
		$data['judul']= "akun anggota";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('form_tambah_kamar_kos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function updatedatakos()
	{
		$this->load->helper('file');
		$this->load->library('upload');
		$this->form_validation->set_rules('nama_kos', 'nama_kos', 'required');
		$this->form_validation->set_rules('harga_atas', 'harga_atas', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('harga_bawah', 'harga_bawah', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('alamat_kos', 'alamat_kos', 'required');
		$this->form_validation->set_rules('deskripsi', 'deskripsi', 'required');
		$this->form_validation->set_message('required', 'Wajib diisi!');
		$this->form_validation->set_message('alpha_dash', 'Tidak boleh mengandung spasi!');
		$this->form_validation->set_message('is_unique', 'Data sudah ada!');
		$this->form_validation->set_message('numeric', 'Hanya boleh diisi angka!');
		if ($this->form_validation->run() == FALSE) {
			$this->editdatakos($this->input->post('id_kos'));
		} else {
			$id_kos = $this->input->post('id_kos');
			$nama_kos = $this->input->post('nama_kos');
			$alamat_kos = $this->input->post('alamat_kos');
			$harga_bawah = $this->input->post('harga_bawah');
			$harga_atas = $this->input->post('harga_atas');
			$deskripsi = $this->input->post('deskripsi');
			$data = array(
				'id_kos' => $id_kos,
				'nama_kos' => $nama_kos,
				'alamat_kos' => $alamat_kos,
				'harga_bawah' => $harga_bawah,
				'harga_atas' => $harga_atas,
				'deskripsi' => $deskripsi
			);
			$query = $this->Mkos->update($data,$id_kos);
			if ($query>0) {
				if (!empty($_FILES['foto_kos']['name'])) {
					$filename = $_FILES['foto_kos']['name'];
					$ext = pathinfo($filename, PATHINFO_EXTENSION);
					$config['allowed_types'] = 'jpg|jpeg';
					$config['overwrite'] = true;
					$config['upload_path'] = 'assets/gambar_upload/fotokos/';
					$config['file_name'] = $id_kos.'_kos.'.$ext;
					$config['max_size'] = 2000;

					$this->upload->initialize($config);

					if ($this->upload->do_upload('foto_kos')){
						$foto_kos = $config['upload_path'].$this->upload->data('file_name');
						$data = array(
							'foto_kos' => $foto_kos
						);
						$this->Mkos->update($data,$id_kos);
					} else {
						$errorfile = "Input Foto Kos gagal!";
					}
				}
				// ========================================

				if (isset($errorfile) ) {
					if ($this->session->userdata('level')=="admin") {
						$this->editdatakos($id_kos, $errorfile);
					} else {
						$this->editdatakos($id_kos,$errorfile);
					}
				} else {
					if ($this->session->userdata('level')=="admin") {
						redirect('Cdaftarkos','refresh');
					}
					else{
						redirect('Cdaftarkos','refresh');
					}	
				}
				// =====================================================
			}else{
				echo "gagal update";
			}
		}
	}
	public function editstatuskamarkos($stat,$id_detail_kos)
	{	
		$data = array(
			'status' => $stat
		);
		$query = $this->Mkos->updatestatuskamar($data,$id_detail_kos);
		if ($query>0) {
			# code...
		}else{
			echo("gagal update");
		}
		$id_kos = $this->Mkos->detidkosbyidkamar($id_detail_kos);
		redirect('Cdaftarkos/detail/'.$id_kos.'','refresh');
	}
	public function editdatakamarkos($id_kamar_kos,$errorfile='')
	{
		$data['judul']= "akun anggota";
		$data['kamarkos'] = $this->Mkos->getdatakamarkos($id_kamar_kos);
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('form_edit_kamar_kos',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function updatedatakamarkos()
	{
		$this->load->helper('file');
		$this->load->library('upload');
		$this->form_validation->set_rules('nama_kos', 'nama_kos', 'required');
		$this->form_validation->set_rules('nama_kamar', 'nama_kamar', 'required');
		$this->form_validation->set_rules('harga', 'harga', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('deskripsi', 'deskripsi', 'required');
		$this->form_validation->set_message('required', 'Wajib diisi!');
		$this->form_validation->set_message('alpha_dash', 'Tidak boleh mengandung spasi!');
		$this->form_validation->set_message('is_unique', 'Data sudah ada!');
		$this->form_validation->set_message('numeric', 'Hanya boleh diisi angka!');
		if ($this->form_validation->run() == FALSE) {
			print_r($this->input->post('id_detail_kos'));
			// print_r('asfjh');
			$this->editdatakamarkos($this->input->post('id_detail_kos'));
		} else {
			$id_detail_kos = $this->input->post('id_detail_kos');
			$nama_kamar = $this->input->post('nama_kamar');
			$harga = $this->input->post('harga');
			$deskripsi = $this->input->post('deskripsi');
			$data = array(
				'id_detail_kos' => $id_detail_kos,
				'nama_kamar' => $nama_kamar,
				'harga' => $harga,
				'deskripsi' => $deskripsi
			);
			$query = $this->Mkos->updatekamar($data,$id_detail_kos);
			if ($query>0) {
				if (!empty($_FILES['foto_kamar_kos']['name'])) {
					$filename = $_FILES['foto_kamar_kos']['name'];
					$ext = pathinfo($filename, PATHINFO_EXTENSION);
					$config['allowed_types'] = 'jpg|jpeg';
					$config['overwrite'] = true;
					$config['upload_path'] = 'assets/gambar_upload/fotokamarkos/';
					$config['file_name'] = $id_detail_kos.'_kamar_kos.'.$ext;
					$config['max_size'] = 2000;

					$this->upload->initialize($config);

					if ($this->upload->do_upload('foto_kamar_kos')){
						$foto_kamar_kos = $config['upload_path'].$this->upload->data('file_name');
						$data = array(
							'foto_kamar_kos' => $foto_kamar_kos
						);
						$this->Mkos->updatekamar($data,$id_detail_kos);
					} else {
						$errorfile = "Input Foto Kos gagal!";
					}
				}
				// ========================================

				if (isset($errorfile) ) {
					if ($this->session->userdata('level')=="admin") {
						$this->editdatakos($id_detail_kos, $errorfile);
					} else {
						$this->editdatakamarkos($id_detail_kos,$errorfile);
					}
				} else {
					if ($this->session->userdata('level')=="admin") {
						redirect('Cdaftarkos','refresh');
					}
					else{
						redirect('Cdaftarkos','refresh');
					}	
				}
				// =====================================================
			}else{
				echo "gagal update";
			}
		}
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
		
		function checkdateformat($date) {
			$d = DateTime::createFromFormat('Y-m-d', $date);
			if ($d == FALSE) {
				$this->form_validation->set_message('checkdateformat', 'Format tanggal salah!');
			}
			return $d && $d->format('Y-m-d') === $date;
		} 
	}