<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Meditdataakun extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function getdata($where,$table){		
		return $this->db->get_where($table,$where)->result();
	}
	public function getdataakun($usr) {
        // $p = md5(mysql_real_escape_string($psw));
		$cekdata = $this->db->get_where('akun', array('kta' => $usr));
		if (count($cekdata->result()) > 0) {
			foreach ($cekdata->result() as $qck) {
				foreach ($cekdata->result() as $qad) {

					$data = array(
						'KTA' => $usr,
						'NIP' => $qad->NIP,
						'nama' => $qad->nama,
						'no_hp' => $qad->no_hp, 
						'no_wa' => $qad->no_wa, 
						'email' => $qad->email, 
						'pilkpa' => $qad->pilkpa, 
						'pilstatuspegawai' =>$qad->pilstatuspegawai, 
						'tempat_tugas' => $qad->tempat_tugas, 
						'tempat_lahir' => $qad->tempat_lahir, 
						'tgl_lahir' => $qad->tgl_lahir, 
						'pilpensiun' => $qad->pilpensiun,  
						'tgl_pendaftaran' => $qad->tgl_pendaftaran, 
						'scan_ktp' => $qad->scan_ktp, 
						'password' => $qad->password
					); 
				}
			}
			return $data;
		}
	}
	public function update($data,$kta){
		$this->db->where('kta', $kta);
		$query = $this->db->update('akun',$data);
		return $query;
	}	
}
/* End of file Meditdataakun.php */
/* Location: ./application/models/Meditdataakun.php */