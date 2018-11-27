<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cdaftarakun extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
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
		$config['base_url'] = site_url('Cdaftarakun/index');
		$config['total_rows'] = $this->Mdaftarakun->totaldata($cari);
		$config['per_page'] = 20;
		$from = $this->uri->segment(3);

		$this->pagination->initialize($config);

		$data['cari'] = $cari;
		$data['akun'] = $this->Mdaftarakun->getalldata($config['per_page'],$from,$cari);
		$data['judul']= "akun anggota";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('daftarakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}

	public function editstatus($id)
	{

		if ($this->Mpendaftaran->editstatus($id) >0) {
			redirect('Cpendaftaran','refresh');
		}
		else {

		}
	}

	public function hapuspendaftaran($id)
	{
		$query = $this->Mpendaftaran->hapuspendaftaran($id);
		if($query){
			redirect('Cpendaftaran','refresh');
		}
	}
	
	public function getdatabyid($id)
	{
		$query = $this->Mpendaftaran->getdatabyid($id);
		return $query['nama'];
	}

	public function update($kta)
	{
		
		if ($this->input->post('pilpensiun')=="PNS") {
			$this->form_validation->set_rules('nip', 'Nip', 'required|alpha_dash|numeric|is_unique[pendaftaran.NIP]');
		}
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('no_hp', 'No_hp', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('no_wa', 'No_wa', 'required|alpha_dash|numeric');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[pendaftaran.email]');
		$this->form_validation->set_rules('tempat_tugas', 'Tempat_tugas', 'required');
		$this->form_validation->set_rules('tgllahir', 'Tgllahir', 'callback_checkDateFormat');
		$this->form_validation->set_rules('pilkpa', 'pilkpa', 'required');
		$this->form_validation->set_rules('pilpensiun', 'Pilpensiun', 'required');
		$this->form_validation->set_message('required', 'Wajib diisi!');
		$this->form_validation->set_message('alpha_dash', 'Tidak boleh mengandung spasi!');
		$this->form_validation->set_message('is_unique', 'NIP sudah diajukan!');
		$this->form_validation->set_message('numeric', 'Hanya boleh diisi angka!');

		$data['listkpa'] = $this->Meditdataakun->getlistkpa();
		$data['getdataakun'] = $this->Meditdataakun->getdataakun($kta);
		$data['judul']= "edit data akun";
		$data['errorfile']= "";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('editdataakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function edit($kta)
	{
		$where = array('kta' => $kta);
		$data['akun'] = $this->Meditdataakun->getdata($where,'akun');
		$data['listkpa'] = $this->Meditdataakun->getlistkpa();
		$data['judul']= "edit data akun";
		$data['errorfile']= "";
		$this->load->view('template/head',$data);
		$this->load->view('template/topbar');
		$this->load->view('template/sidebaradmin');
		$this->load->view('editdataakun',$data);//isi view
		$this->load->view('template/js');
		$this->load->view('template/foot');
	}
	public function updatedata()
	{
		$kta = $this->input->post('kta');
		$NIP = $this->input->post('NIP');
		$nama = $this->input->post('nama');
		$no_hp = $this->input->post('no_hp');
		$no_wa = $this->input->post('no_wa');
		$email = $this->input->post('email');
		$pilkpa = $this->input->post('pilkpa');
		$tempat_tugas = $this->input->post('tempat_tugas');
		$pilpensiun = $this->input->post('pilpensiun');
		$scan_ktp = $this->input->post('ktp');
		$data = array(
			'nama' => $nama,
			'no_hp' => $no_hp,
			'no_wa' => $no_wa,
			'email' => $email,
		// 'pilkpa' => $pilkpa,
			'tempat_tugas' => $tempat_tugas,
		// 'pilpensiun' => $pilpensiun,
			'scan_ktp' => $scan_ktp
		);
		
		$this->Meditdataakun->update($data,$kta);

		redirect('Cdaftarakun');
		
	}
}

/* End of file Cpermohonan.php */
/* Location: ./application/controllers/Cpermohonan.php */