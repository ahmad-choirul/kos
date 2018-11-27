<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ceditakun extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		 if ($this->session->userdata('level')=="admin") {
		 	$data['judul']= "Registrasi";
            $data['judul']= "edit akun";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('editakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
            }
            if ($this->session->userdata('level')=="user") {
            $data['judul']= "edit akun";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('editakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
            }
		// $data['akun'] = $this->Mdaftarakun->getalldata();
		
	}

}

/* End of file Ceditakun.php */
/* Location: ./application/controllers/Ceditakun.php */