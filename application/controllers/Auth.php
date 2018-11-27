<?php
class Auth extends CI_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model(array('Mlogin'));
        
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

            $this->load->view('login');
        }
    }
    function proses() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where = array(
            'username' => $username,
            'password' => $password
        );
        $cek = $this->Mlogin->cek_login("akun",$where)->num_rows();
        if($cek > 0){
    
         $result = $this->Mlogin->getLoginData($username,$password); 
         if ( $this->session->userdata('level') =="admin") {
            redirect('Cdashboardadmin');
        }
        else if ( $this->session->userdata('level') =="owner")
        {
            redirect('Cdashboarduser');
        }
    }else{
        $this->session->error = true;
        redirect('Auth','refresh');
    }
}
function logout() {
    $this->session->sess_destroy();
    redirect('Auth');
}
}