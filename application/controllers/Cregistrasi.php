<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cregistrasi extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Mregistrasi');
		$this->load->helper('file');
		$this->load->library('upload');
		$this->load->library('form_validation');
		$this->load->helper(array('form','url'));
		$this->load->library('session');

		$this->load->library('email');
		$this->load->database();
	}
	public function index()
	{
		$data['judul']= "Registrasi";
		$data['errorfile']= "";
		$this->load->view('template/head',$data);
		$this->load->view('registrasi',$data);//isi view
	}
	
	public function registrasibaru()
	{
		$result = (array) $this->Mregistrasi->getnextid();
		$id = $result["AUTO_INCREMENT"];
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('no_wa', 'No_wa', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[t_registrasi.email]');
		$this->form_validation->set_rules('tgllahir', 'Tgllahir', 'callback_checkDateFormat');
		$this->form_validation->set_message('required', 'Wajib diisi!');
		$this->form_validation->set_message('alpha_dash', 'Tidak boleh mengandung spasi!');
		$this->form_validation->set_message('is_unique', 'NIK sudah diajukan!');
		$this->form_validation->set_message('numeric', 'Hanya boleh diisi angka!');

		if ($this->form_validation->run() == FALSE) {
			$data['judul']= "Registrasi";
			$data['errorfile']= "";
			$this->load->view('template/head',$data);
			$this->load->view('registrasi',$data);
		} else if ($this->input->post('password')==$this->input->post('password1')) {
			$nik = $this->input->post('nik');
			$password = $this->input->post('password');
			$nama = $this->input->post('nama');
			$no_wa = $this->input->post('no_wa');
			$email = $this->input->post('email');
			$tempat_lahir = $this->input->post('tempat_lahir');
			$tgllahir = $this->input->post('tgllahir');

			$config['allowed_types'] = 'jpg|jpeg';
			$config['overwrite'] = true;
			$config['upload_path'] = 'assets/gambar_upload/scanktp/';
			$config['file_name'] = $id.'_ktp';
			$config['max_size'] = 2000;

			$this->upload->initialize($config);

			if ($this->upload->do_upload('ktp')){

				$ktp = $config['upload_path'].$this->upload->data('file_name');
				$data = array(
					'NIK' => $nik,
					'nama' => $nama,
					'no_wa' => $no_wa,
					'email' => $email,
					'password' => $password,
					'tempat_lahir' => $tgllahir,
					'tgl_lahir' => $tgllahir,
					'scan_ktp' => $ktp,
					'status' => 1
				);
				
				$inser = $this->Mregistrasi->registrasi($data);

				if ($inser > 0) {
					$this->session->success = true;
					if ($this->kirimemail($email)) {
						$this->session->set_userdata('success');
					}else{
						$this->session->set_userdata('erroremail');
					}
					redirect('Auth','refresh');
				} else {
					$this->session->error = true;
					$data['judul']= "Registrasi";
					$data['errorfile']= "Input file gagal!";
					$this->load->view('template/head',$data);
					$this->load->view('registrasi',$data);
					unlink($ktp);
				}

			} else {
				$data['judul']= "Registrasi";
				$data['errorfile']= "Input file gagal!";
				$this->load->view('template/head',$data);
				$this->load->view('registrasi',$data);
			}
		}
		else{
			$data['judul']= "Registrasi";
			$data['errorfile']= "gagal registrasi password tidak cocok!";
			$this->load->view('template/head',$data);
			$this->load->view('registrasi',$data);
		}

	}
	
	function checkDateFormat($date) {
		$d = DateTime::createFromFormat('Y-m-d', $date);
		if ($d == FALSE) {
			$this->form_validation->set_message('checkDateFormat', 'Format tanggal salah!');
		}
		return $d && $d->format('Y-m-d') === $date;
	} 

	// ======================================================================================================
	public function kirimemail()
	{
		$emailtujuan = 'ahmadchoirul58@gmail.com';
		$this->load->library('email');

		$message = 'Dear User,<br><br> silahkan klik link dibawah ini untuk aktivasi akun anda<br><br>
		<a href=\'http://localhost/kos/Cregistrasi/verifyEmail/'.md5($emailtujuan).'\'>http://localhost/kos/Cregistrasi/verifyEmail/'. md5($emailtujuan) .'</a><br><br>Thanks';
		$this->email->initialize(array(
			'protocol' => 'smtp',  
			'smtp_host' => 'ssl://smtp.googlemail.com',  
			'smtp_port' => 465,  
			'smtp_user' => 'choirulbackup@gmail.com',   
			'smtp_pass' => '08031997 Choirul',   
			'mailtype' => 'html',   
			'charset' => 'iso-8859-1'  
		));

		$this->email->from('admin@kosabal-abal.com', 'ibu kos');
		$this->email->to($emailtujuan);
		$this->email->subject('Email verifikasi');
		$this->email->message($message);
		if($this->email->send()){
			echo("berhasil");
			return true;
		}else{
			echo "email send failed";
			echo $this->email->print_debugger();
			return false;
		}

	}
    //activate account
	function verifyEmail($key){
		$data = array('status' => 1);
		$this->db->where('md5(email)',$key);
		$this->session->succesemail = true;
		if( $this->db->update('t_registrasi', $data)>0){
			redirect('Auth','refresh');
		}   else{
			echo("gagal verifikasi");
		}
	}
}

?>