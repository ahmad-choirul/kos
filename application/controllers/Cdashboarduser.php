<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cdashboarduser extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('level')=="") {
			redirect('Auth');
		}
		if ($this->session->userdata('level') != "owner") {
			redirect('Blank');
		}
	}

	public function index()
	{
		$data['judul']= "dashboard";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaruser');
		$this->load->view('dashboarduser',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
}

/* End of file  */
/* Location: ./application/controllers/ */