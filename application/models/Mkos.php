<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mkos extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function getnextid()
	{
		$this->db->select('AUTO_INCREMENT');
		$this->db->from('information_schema.TABLES');
		$this->db->where('TABLE_SCHEMA', 'dbkos');
		$this->db->where('TABLE_NAME', 'datakos');
		return $this->db->get()->row();
	}
	public function getalldata($number,$offset,$search=""){
		if($search != ''){

			$this->db->like('nama_kos', $search);
			$this->db->or_like('alamat_kos', $search);
			$this->db->or_like('deskripsi', $search);
			$this->db->where('id_akun', $this->session->userdata('id_akun'));
			
		}
		return $query = $this->db->get('datakos',$number,$offset)->result();
	}
	public function getdatabyid($id){
		$this->db->where('id_registrasi', $id);
// here we select every column of the table
		$q = $this->db->get('t_registrasi');
		return $data->result(); 
	}
public function add($data)
	{
		$insert = $this->db->insert('datakos', $data);
		return $data;
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
			$this->db->where('id_akun', $this->session->userdata('id_akun'));
			$this->db->like('username', $search);
			$this->db->or_like('nama', $search);
		}
		return $this->db->get('akun')->num_rows();
	}
}

/* End of file Mpermohonan.php */
/* Location: ./application/models/Mpermohonan.php */