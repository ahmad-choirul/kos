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
					// if ($this->sendEmail($email)) {
					// 	$this->session->success = true;
					// 	redirect('Auth','refresh');
					// }else{
					// 	$this->session->erroremail = true;
					// 	redirect('Auth','refresh');
					// }
						$this->session->success = true;
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
	public function sendEmail($receiver){
        $from = "kpriabdajember@gmail.com";    //senders email address
        $subject = 'Verify email address';  //email subject
        
        //sending confirmEmail($receiver) function calling link to the user, inside message body
        $message = 'Dear User,<br><br> silahkan klik link dibawah ini untuk aktivasi akun koperasi anda<br><br>
        <a href=\'http://localhost/koperasikemenag/Cregistrasi/verifyEmail/'.md5($receiver).'\'>http://localhost/koperasikemenag/Cregistrasi/verifyEmail/'. md5($receiver) .'</a><br><br>Thanks';

        //config email settings
        $config['protocol'] = 'smtp';
        $config['smtp_host'] = 'ssl://smtp.mailgun.org';
        $config['smtp_port'] = '465';
        $config['smtp_user'] = 'postmaster@sandbox7a785d53b35e4e80b0b43e502baff1fd.mailgun.org';
        $config['smtp_pass'] = '396c6b22836915519b894a06b16b5d11-4836d8f5-ba36f78d';  //sender's password
        $config['mailtype'] = 'html';
        $config['charset'] = 'iso-8859-1';
        $config['wordwrap'] = 'TRUE';
        $config['newline'] = "\r\n"; 
        
        $this->load->library('email', $config);
        $this->email->initialize($config);
        //send email
        $this->email->from($from);
        $this->email->to($receiver);
        $this->email->subject($subject);
        $this->email->message($message);
        
        if($this->email->send()){
			//for testing
        	return true;
        }else{
        	echo "email send failed";
        	return false;
        }
        
        
    }
    public function kirimemail(){
        $from = "kpriabdajember@gmail.com";    //senders email address
        $subject = 'Verify email address';  //email subject
        
        //sending confirmEmail($receiver) function calling link to the user, inside message body
        $message = 'kirim email';

        //config email settings
        $config['protocol'] = 'smtp';
        $config['smtp_host'] = 'ssl://smtp.mailgun.org';
        $config['smtp_port'] = '465';
        $config['smtp_user'] = 'postmaster@sandbox7a785d53b35e4e80b0b43e502baff1fd.mailgun.org';
        $config['smtp_pass'] = '396c6b22836915519b894a06b16b5d11-4836d8f5-ba36f78d';  //sender's password
        $config['mailtype'] = 'html';
        $config['charset'] = 'iso-8859-1';
        $config['wordwrap'] = 'TRUE';
        $config['newline'] = "\r\n"; 
        
        $this->load->library('email', $config);
        $this->email->initialize($config);
        //send email
        $this->email->from($from);
        $this->email->to('ahmadchoirul58@gmail.com');
        $this->email->subject($subject);
        $this->email->message($message);
        
        if($this->email->send()){
			echo("berhasil");
        	return true;
        }else{
        	echo "email send failed";
        	return false;
        }
        
        
    }
    //activate account
    function verifyEmail($key){
    	$data = array('status' => 1);
    	$this->db->where('md5(email)',$key);
    	$this->session->succesemail = true;
    	if( $this->db->update('pendaftaran', $data)>0){
    		redirect('Auth','refresh');
    	}   else{
    		echo("gagal verifikasi");
    	}
    }
}

?>