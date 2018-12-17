<?php
class Ckos extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model(array('Mkos'));

    }
    function detail($id_kos) {
        if ($this->session->userdata('KTA')) {
            if ($this->session->userdata('level')=="admin") {
                redirect('Cdashboardadmin');
            }
            if ($this->session->userdata('level')=="owner") {
                redirect('Cdashboarduser');
            }
        }else{

          $data['detail_kos'] = $this->Mkos->getdatakosbyid($id_kos);
          $data['akun'] = $this->Mkos->getPemilik($id_kos);
          $data['data_kamar'] = $this->Mkos->getdatadetailkos($id_kos);
          $this->load->view('detailkos',$data);
        }
    }
    public function cari()
    {
        $kata = $this->input->post('kata');
        $data['kos'] = $this->Mkos->pencarian($kata);
        $this->load->view('pencarian',$data);
    }

}
