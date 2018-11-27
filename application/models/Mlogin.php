<?php
class Mlogin extends CI_Model {
    private $table = "akun";
    function cek($username, $password) {
        $this->db->where("username", $username);
        $this->db->where("password", $password);
        return $this->db->get("akun");
    }
    function cek_login($table,$where){      
        return $this->db->get_where($table,$where);
    }
    function semua() {
        return $this->db->get("akun");
    }
    function cekKode($kode) {
        $this->db->where("username", $kode);
        return $this->db->get("akun");
    }
    function cekId($kode) {
        $this->db->where("id_akun", $kode);
        return $this->db->get("akun");
    }

    function getLoginData($usr, $psw) {
        // $p = md5(mysql_real_escape_string($psw));
        $q_cek_login = $this->db->get_where('akun', array('username' => $usr, 'password' => $psw));
        if (count($q_cek_login->result()) > 0) {
            foreach ($q_cek_login->result() as $qck) {
                foreach ($q_cek_login->result() as $qad) {
                    $sess_data['logged_in'] = 'berhasil masuk';
                    $sess_data['id_akun'] = $qad->id_akun;
                    $sess_data['username'] = $qad->username;
                    $sess_data['password'] = $qad->password;
                    $sess_data['NIK'] = $qad->NIK;
                    $sess_data['nama'] = $qad->nama;
                    $sess_data['no_wa'] = $qad->no_wa;
                    $sess_data['email'] = $qad->email;
                    $sess_data['tempat_lahir'] = $qad->tempat_lahir;
                    $sess_data['scan_ktp'] = $qad->scan_ktp;
                    $sess_data['level'] = $qad->level;
                    $sess_data['status'] = $qad->status;
                    $sess_data['foto_profil'] = $qad->foto_profil;
                    $this->session->set_userdata($sess_data);
                    print_r($sess_data);
                }
            }
        } else {
            $this->session->set_flashdata('result_login', '<br>Username atau Password yang anda masukkan salah.');
            header('location:' . base_url() . 'login');
        }
    }
}