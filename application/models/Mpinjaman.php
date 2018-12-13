<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mpinjaman extends CI_Model {
	
	public function getnextid()
	{
		$this->db->select('AUTO_INCREMENT');
		$this->db->from('information_schema.TABLES');
		$this->db->where('TABLE_SCHEMA', 'dbkoperasi');
		$this->db->where('TABLE_NAME', 'pinjaman');
		return $this->db->get()->row();
	}

	public function add($data)
	{
		$insert = $this->db->insert('pinjaman', $data);
		return $data;
	}
	public function getdatapengajuanpinjaman($status){		
		$this->db->where('pinjaman.status',$status);
		$this->db->join('akun', 'akun.KTA = pinjaman.KTA');
		return $this->db->get('pinjaman')->result();
	}
	public function getdatapengajuanpinjamanbyid($idpinjaman){
		return $this->db->get_where('pinjaman', array('id_pinjaman' => $idpinjaman))->result();
	}
	public function getdatapinjaman($number,$offset,$search="",$status=""){
		if($search != ''){
			$this->db->like('akun.kta', $search);
		}
		if ($status != '') {
			$this->db->where('pinjaman.status', $status);
		}
		$this->db->select('*, pinjaman.status as sp');
		$this->db->where('pinjaman.status !=','0');
		$this->db->where('pinjaman.status !=','1');
		$this->db->join('akun', 'akun.KTA = pinjaman.KTA');
		return $this->db->get('pinjaman',$number,$offset)->result();
	}
	public function getpilpensiun($kta)
	{
		$this->db->select('pilpensiun');
		$this->db->from('akun');
		$this->db->where('kta', $kta);
		return $this->db->get()->row();
	}

	public function gettanggallahir($kta){
		$this->db->select('tgl_lahir');
		$this->db->from('akun');
		$this->db->where('kta', $kta);
		return $this->db->get()->row()->tgl_lahir;
	}

	public function getpensiun($kta){
		$this->db->select('TIMESTAMPDIFF(MONTH, tgl_lahir, CURRENT_DATE) + 1 as pensiun');
		$this->db->from('akun');
		$this->db->where('kta', $kta);
		return $this->db->get()->row()->pensiun;
	}
	public function statpinjaman($kta)
	{
		$this->db->where('kta', $kta);
		$query = $this->db->from('stat_pinjaman');
		return $query->get()->row_array();
	}
	public function createdatapinjaman($kta)
	{
		$data = array(
			'kta' => $kta
		);

		$this->db->insert('stat_pinjaman', $data);
	}
	public function updatesp($sp, $value, $kta)
	{
		$this->db->set($sp, $value);
		$this->db->where('kta', $kta);
		$this->db->update('stat_pinjaman');
	}
	public function updatestatuspinjamanbyadmin($id_pinjaman,$status,$jumlah)
	{
		$data = array(
			'status' => $status
		);

		$this->db->where('id_pinjaman', $id_pinjaman);
		$query = $this->db->update('pinjaman', $data);
		return $query;
	}
	public function totaldata($search="",$status=""){
		if($search != ''){
			$this->db->like('akun.kta', $search);
		}
		if ($status != '') {
			$this->db->where('pinjaman.status', $status);
		}
		$this->db->select('*, pinjaman.status as sp');
		$this->db->where('pinjaman.status !=','0');
		$this->db->where('pinjaman.status !=','1');
		$this->db->join('akun', 'akun.KTA = pinjaman.KTA');
		return $this->db->get('pinjaman')->num_rows();
	}
	public function tambahangsuran($idpinjaman,$jumlah)
	{
		$query = $this->db->query("UPDATE `pinjaman` SET `angsuran_terbayar` = ".$jumlah.", `pembayaran_terakhir` = current_timestamp WHERE `id_pinjaman` = ".$idpinjaman);
		return $query;
	}
	public function lunas($idpinjaman)
	{
		$query = $this->db->query("UPDATE `pinjaman` SET `angsuran_terbayar` = `angsuran`, `pembayaran_terakhir` = current_timestamp WHERE `id_pinjaman` = ".$idpinjaman);
		return $query;
	}
	public function getangsuranterbayar($idpinjaman){
		$this->db->select('kta,unit,angsuran_terbayar, angsuran');
		$this->db->from('pinjaman');
		$this->db->where('id_pinjaman', $idpinjaman);
		return $this->db->get()->row_array();
	}
}


