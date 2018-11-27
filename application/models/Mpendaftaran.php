<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mpendaftaran extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		$this->load->library('email');
		
		
	}
	public function getalldata($number,$offset,$search=""){
		if($search != ''){
			$this->db->like('nama', $search);
		}
		$this->db->where('status', 1);
		return $query = $this->db->get('t_registrasi',$number,$offset)->result();
	}
	public function getdatabyid($id){
		$query = $this->db->get_where('t_registrasi',array('id_registrasi'=>$id));

		return $query->row_array();
	}
		// public function getdatabyid($id){
		// 	$this->db->where('ID_pendaftaran', $id);
		// 	// here we select every column of the table
		// 	$q = $this->db->get('pendaftaran');
		// 	return $q->row(); 
		// }

	public function editstatus($id)
	{
			// 			$this->db->where('pendaftaran.ID_pendaftaran', $id);
			// return $this->db->update('pendaftaran.status',1);
		$update_data=array("status"=>2);
		$this->db->where('t_registrasi.id_registrasi', $id);
		$res=$this->db->update("t_registrasi",$update_data);
		return $res;
	}

	public function createakun($data)
	{
		$data2 = array(
			'username' => $data['email'],
			'password' => $data['password'],
			'NIK' => $data['NIK'],
			'nama' => $data['nama'],
			'no_wa' => $data['no_wa'], 
			'email' => $data['email'], 
			'tempat_lahir' => $data['tempat_lahir'], 
			'scan_ktp' => $data['scan_ktp'], 
			'status' => $data['status'], 
			'level' =>'owner',
			'status' =>'1'

		);
		$insert = $this->db->insert('akun', $data2);
		// $this->sendEmail($data['email'],$data['nama'],$datacreate['KTA'],$datacreate['password'],"disetujui");
		return $insert;
	}
function sendEmail($receiver,$nama,$kta,$pass,$status){
        $from = "kpriabdajember@gmail.com";    //senders email address
        $subject = 'Permohonan Disetujui';  //email subject
        
        //sending confirmEmail($receiver) function calling link to the user, inside message body
        if ($status=="disetujui") {
        	$message = 'Yth '.$nama.',<br><br> Permohonan anda telah disetujui data akun anda adalah<br><br>
        Nama   : '.$nama.' <br>
        KTA     : '.$kta.' <br>
        password     : '.$pass.' <br>
        silahkan login menggunakan KTA dan password tersebut.
        ';
        }else{
        	$message = 'Yth '.$nama.',<br><br> Permohonan anda tidak dapat di penuhi silahkan menghubungi admin untuk info lebih lanjut
        ';
        }
        

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
	public function hapuspendaftaran($id){
		$this->db->where('pendaftaran.ID_pendaftaran', $id);
		return $this->db->delete('pendaftaran');
	}

	public function totaldata($search=""){
		if($search != ''){
			$this->db->like('nama', $search);
		}
		$this->db->where('status', 1);
		return $this->db->get('t_registrasi')->num_rows();
	}
}

/* End of file Mpermohonan.php */
/* Location: ./application/models/Mpermohonan.php */