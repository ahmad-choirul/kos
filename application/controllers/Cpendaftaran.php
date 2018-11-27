<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cpendaftaran extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Mpendaftaran');
		$this->load->model('Mdaftarakun');
		$this->load->helper('url');
		if ($this->session->userdata('level')=="") {
			redirect('Auth');
		}
		if ($this->session->userdata('level') != "admin") {
			redirect('Blank');
		}
	}

	public function index()
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
		$config['base_url'] = site_url('Cpendaftaran/index');
		$config['total_rows'] = $this->Mpendaftaran->totaldata($cari);
		$config['per_page'] = 20;
		$from = $this->uri->segment(3);

		$this->pagination->initialize($config);

		$data['cari'] = $cari;
		$data['pendaftaran'] = $this->Mpendaftaran->getalldata($config['per_page'],$from,$cari);
		$data['judul'] = "pendaftaran";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('pendaftaran',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function editstatus($id)
	{

		if ($this->Mpendaftaran->editstatus($id) > 0) {
		// transfer data pendaftaran
			$getdata = $this->Mpendaftaran->getdatabyid($id);

			$ext = pathinfo($getdata['scan_ktp'], PATHINFO_EXTENSION);
			$cektransfer = $this->Mpendaftaran->createakun($getdata);
			redirect('Cpendaftaran','refresh');
		}
	}
	public function hapuspendaftaran($id)
	{
		$query = $this->Mpendaftaran->hapuspendaftaran($id);
		if($query){
			redirect('Cpendaftaran','refresh');
		}
	}
// public function getdatabyid($id)
// {
// 	$query = $this->Mpendaftaran->getdatabyid($id);
// 	$array =  (array) $query;
// 	$nama = $array['nama'];
// 	return $nama;
// }
}

/* End of file Cpermohonan.php */
/* Location: ./application/controllers/Cpermohonan.php */