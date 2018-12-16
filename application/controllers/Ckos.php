<?php
class Ckos extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model(array('Mkos'));

    }
    function index() {
        if ($this->session->userdata('KTA')) {
            if ($this->session->userdata('level')=="admin") {
                redirect('Cdashboardadmin');
            }
            if ($this->session->userdata('level')=="owner") {
                redirect('Cdashboarduser');
            }
        }else{

          $data['kos'] = $this->Mkos->getDataKos();
          $this->load->view('detailkos',$data);
        }
    }

}
