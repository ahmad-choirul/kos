<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ceditdataakun extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Meditdataakun');
		$this->load->helper('url');
		if (!isset($_SESSION['logged_in'])) {
			redirect('Auth');
		}
	}

	public function index($errorfile = null, $errorfile2 = null)
	{
		$where = array('username' => $this->session->userdata('username'));
		$data['akun'] = $this->Meditdataakun->getdata($where,'akun');
		$data['judul']= "edit data akun";
		$data['errorfile']= $errorfile;
		$data['errorfile2']= $errorfile2;
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		if ($this->session->userdata('level')=="admin") {
			$this->load->view('template/sidebaradmin');
		}else{
			$this->load->view('template/sidebaruser');
		}
		$this->load->view('editdataakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function edit($id_akun, $errorfile = null, $errorfile2 = null)
	{
		$where = array('id_akun' => $id_akun);
		$data['akun'] = $this->Meditdataakun->getdata($where,'akun');
		$data['judul']= "edit data akun";
		$data['errorfile']= $errorfile;
		$data['errorfile2']= $errorfile2;
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('editdataakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function updatedata()
	{
		$this->load->helper('file');
		$this->load->library('upload');
		if ($this->session->userdata('level')=="admin") {
			$kta = $this->input->post('KTA');
		} else {
			$kta = $this->session->userdata('KTA');
		}
		if ($this->input->post('pilpensiun')=="PNS") {
			$this->form_validation->set_rules('nip', 'Nip', 'required|alpha_dash|numeric|is_unique[pendaftaran.NIP]');
		}
		$this->form_validation->set_rules('nama', 'nama', 'required');
		$this->form_validation->set_rules('no_hp', 'no_hp', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('no_wa', 'no_wa', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('email', 'email', 'trim|required|valid_email|is_unique[pendaftaran.email]');
		$this->form_validation->set_rules('tempat_tugas', 'tempat_tugas', 'required');
		$this->form_validation->set_rules('tgl_lahir', 'tgl_lahir', 'callback_checkDateFormat');
		$this->form_validation->set_rules('pilkpa', 'pilkpa', 'required');
		$this->form_validation->set_rules('pilpensiun', 'pilpensiun', 'required');
		$this->form_validation->set_message('required', 'Wajib diisi!');
		$this->form_validation->set_message('alpha_dash', 'Tidak boleh mengandung spasi!');
		$this->form_validation->set_message('is_unique', 'Data sudah ada!');
		$this->form_validation->set_message('numeric', 'Hanya boleh diisi angka!');
		if ($this->form_validation->run() == FALSE) {
			if ($this->session->userdata('level')=="admin") {
				$this->edit($kta);
			} else {
				$this->index('Lengkapi form di atas terlebih dahulu');
			}
		} else {
			$pilstatuspegawai = $this->input->post('pilstatuspegawai');
			$NIP = $this->input->post('NIP');
			$nama = $this->input->post('nama');
			$no_hp = $this->input->post('no_hp');
			$no_wa = $this->input->post('no_wa');
			$email = $this->input->post('email');
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
	function checkDateFormat($date) {
		$d = DateTime::createFromFormat('Y-m-d', $date);
		if ($d == FALSE) {
			$this->form_validation->set_message('checkDateFormat', 'Format tanggal salah!');
		}
		return $d && $d->format('Y-m-d') === $date;
	} 
}

/* End of file Ceditdataakun */
/* Location: ./application/controllers/Ceditdataakun */