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
	public function editdatakos($id_kos)
	{
		$data['judul']= "akun anggota";
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
		$this->load->view('daftarkos',$data);//isi view
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
			$pilkpa = $this->input->post('pilkpa');
			$tempat_tugas = $this->input->post('tempat_tugas');
			$tempat_lahir = $this->input->post('tempat_lahir');
			$tgl_lahir = $this->input->post('tgl_lahir');
			$pilpensiun = $this->input->post('pilpensiun');
			$password = $this->input->post('password');
			$data = array(
				'NIP' => $NIP,
				'nama' => $nama,
				'no_hp' => $no_hp,
				'no_wa' => $no_wa,
				'email' => $email,
				'pilkpa' => $pilkpa,
				'pilstatuspegawai' => $pilstatuspegawai,
				'tempat_tugas' => $tempat_tugas,
				'tempat_lahir' => $tempat_lahir,
				'tgl_lahir' => $tgl_lahir,
				'pilpensiun' => $pilpensiun,
				'password' => $password
			);
			$query = $this->Meditdataakun->update($data,$kta);
			if ($query>0) {
				if (!empty($_FILES['ktp']['name'])) {
					$filename = $_FILES['ktp']['name'];
					$ext = pathinfo($filename, PATHINFO_EXTENSION);
					$config['allowed_types'] = 'jpg|jpeg';
					$config['overwrite'] = true;
					$config['upload_path'] = 'assets/gambar_upload/scanktp/';
					$config['file_name'] = $kta.'_ktp.'.$ext;
					$config['max_size'] = 2000;

					$this->upload->initialize($config);

					if ($this->upload->do_upload('ktp')){
						$ktp = $config['upload_path'].$this->upload->data('file_name');
						$data = array(
							'scan_ktp' => $ktp
						);
						$this->Meditdataakun->update($data,$kta);
						$errorfile = "";
					} else {
						$errorfile = "Input gambar KTP gagal!";
					}
				} else {
					$errorfile = "";
				}
				if (!empty($_FILES['profil']['name'])) {
					$filename = $_FILES['profil']['name'];
					$ext = pathinfo($filename, PATHINFO_EXTENSION);
					$config['allowed_types'] = 'jpg|jpeg';
					$config['overwrite'] = true;
					$config['upload_path'] = 'assets/gambar_upload/profil/';
					$config['file_name'] = $kta.'_profil.'.$ext;
					$config['max_size'] = 2000;

					$this->upload->initialize($config);

					if ($this->upload->do_upload('profil')){
						$profil = $config['upload_path'].$this->upload->data('file_name');
						$data = array(
							'gambar_profil' => $profil
						);
						$this->Meditdataakun->update($data,$kta);
						$errorfile2 = "";

						$configr['image_library'] = 'gd2';
						$configr['source_image'] = $profil;
						$configr['maintain_ratio'] = FALSE;
						$configr['width']         = 100;
						$configr['height']       = 100;

						$this->load->library('image_lib', $configr);

						$this->image_lib->resize();
						if ($this->input->post('KTA') == $this->session->userdata('KTA')) {
							$_SESSION['gambar_profil'] = $profil;
						}
					} else {
						$errorfile2 = "Input gambar profil gagal!";
					}
				} else {
					$errorfile2 = "";
				}
				if (isset($errorfile) || isset($errorfile2)) {
					if ($this->session->userdata('level')=="admin") {
						$this->edit($kta, $errorfile, $errorfile2);
					} else {
						$this->index($errorfile, $errorfile2);
					}
				} else {
					if ($this->session->userdata('level')=="admin") {
						redirect('Cdaftarakun','refresh');
					}
					else{
						redirect('Ceditdataakun','refresh');
					}	
				}
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