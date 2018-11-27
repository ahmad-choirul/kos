<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdaftarakun extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function getalldata($number,$offset,$search=""){
		if($search != ''){
			$this->db->like('username', $search);
			$this->db->or_like('nama', $search);
		}
		return $query = $this->db->get('akun',$number,$offset)->result();
	}
	public function getdatabyid($id){
		$this->db->where('id_registrasi', $id);
// here we select every column of the table
		$q = $this->db->get('t_registrasi');
		return $data->result(); 
	}
	public function getdatabykta($kta){
		$this->db->select('id_akun');
		$this->db->from('akun');
		$this->db->where('uername', $kta);
		return $this->db->get()->row()->id_akun;
	}

	public function editstatus($id)
	{
		$update_data=array("status"=>2);
		$this->db->where('t_registrasi.id_registrasi', $id);
		$res=$this->db->update("t_registrasi",$update_data);
		return $res;
	}
	public function hapuspendaftaran($id){
		$this->db->where('t_registrasi.id_registrasi', $id);
		return $this->db->delete('t_registrasi');
	}
	public function totaldata($search=""){
		if($search != ''){
			$this->db->like('username', $search);
			$this->db->or_like('nama', $search);
		}
		return $this->db->get('akun')->num_rows();
	}
}

/* End of file Mpermohonan.php */
/* Location: ./application/models/Mpermohonan.php */