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
	public function detidkosbyidkamar($id_detail_kos)
	{
		$this->db->select('id_kos as id');
		$this->db->where('id_detail_kos', $id_detail_kos);
		return $this->db->get('detail_kos')->result_array()[0]['id'];
	}
	public function update($data,$id){
		$this->db->where('id_kos', $id);
		$query = $this->db->update('datakos',$data);
		return $query;
	}
	public function updatestatuskamar($data,$id){
		$this->db->where('id_detail_kos', $id);
		$query = $this->db->update('detail_kos',$data);
		return $query;
	}
	public function updatekamar($data,$id){
		$this->db->where('id_detail_kos', $id);
		$query = $this->db->update('detail_kos',$data);
		return $query;
	}
	public function getalldata($number,$offset,$search=""){
			$this->db->where('id_akun', $this->session->userdata('id_akun'));
		return $query = $this->db->get('datakos',$number,$offset)->result();
	}
	public function getdatadetailkos($id_kos)
	{
		$this->db->where('id_kos', $id_kos);
		return $this->db->get('detail_kos')->result();
	}
	public function getdatakamarkos($id_detail_kos)
	{
		$this->db->where('id_detail_kos', $id_detail_kos);
		$this->db->join('datakos', 'datakos.id_kos = detail_kos.id_kos', 'left');
		return $this->db->get('detail_kos')->result();
	}
	public function getdatakosbyid($id_kos)
	{
		$this->db->where('id_kos', $id_kos);
		return $this->db->get('datakos')->result();
	}
public function add($data)
	{
		$insert = $this->db->insert('datakos', $data);
		return $data;
	}
	public function addkamar($data)
	{
		$insert = $this->db->insert('detail_kos', $data);
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
	public function getDataKos()
	{
		$query = $this->db->get('datakos');
		return $query->result();
	}
	
	public function getPemilik($id_kos)
	{
		$this->db->where('id_kos', $id_kos);
		$this->db->join('datakos', 'datakos.id_akun = akun.id_akun', 'left');
		return $this->db->get('akun')->result();
	}

}

/* End of file Mpermohonan.php */
/* Location: ./application/models/Mpermohonan.php */
