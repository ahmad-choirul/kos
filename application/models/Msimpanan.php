<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Msimpanan extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function getdata($number,$offset,$search="",$id_jenis){
		if($search != ''){
			$this->db->like('`akun`.`kta`', $search);
			$this->db->or_like('`akun`.`nama`', $search);
		}
		$this->db->join('jenis_simpanan', '`simpanan`.`id_jenis` = `jenis_simpanan`.`id_jenis`');
		$this->db->join('akun', '`simpanan`.`id_akun` = `akun`.`id_akun`');
		$this->db->where('`simpanan`.`id_jenis` =',$id_jenis);
		return $query = $this->db->get('simpanan',$number,$offset)->result();	
	}	
	public function getdatatransaksi($number,$offset,$search="",$id_jenis=""){
		$this->db->select('*, simpanan_transaksi.tanggal as tanggal_transaksi, simpanan_transaksi.jumlah as jumlah_transaksi');
		if($search != ''){
			$this->db->like('`akun`.`kta`', $search);
			$this->db->or_like('`akun`.`nama`', $search);
		}
		if ($id_jenis != '') {
			$this->db->where('`simpanan`.`id_jenis` =',$id_jenis);
		}
		$this->db->join('simpanan', '`simpanan_transaksi`.`id_simpanan` = `simpanan`.`id_simpanan`');
		$this->db->join('jenis_simpanan', '`simpanan`.`id_jenis` = `jenis_simpanan`.`id_jenis`');
		$this->db->join('akun', '`simpanan`.`id_akun` = `akun`.`id_akun`');
		$this->db->order_by('simpanan_transaksi.tanggal', 'DESC');
		return $query = $this->db->get('simpanan_transaksi',$number,$offset)->result();	
	}
	public function ambildata($kta)
	{
		$get = $this->db->get_where('akun', array('kta' => $kta));
		if (count($get->result()) > 0) {
			foreach ($get->result() as $qad) {
				$data['KTA'] = $qad->kta;
				$data['nama'] = $qad->nama;
			}
		} 
		return $data;
	}
	public function tambahdata($data)
	{
		return $this->db->insert('simpanan', $data);
	}	
	public function transaksi($id_simpanan,$jenis_transaksi,$jumlah)
	{
		$this->db->set('id_simpanan', $id_simpanan);
		$this->db->set('jenis_transaksi', $jenis_transaksi);
		$this->db->set('jumlah', $jumlah);
		return $this->db->insert('simpanan_transaksi');
	}
	public function tambah($id_simpanan, $jumlah)
	{
		$query = $this->db->query("UPDATE `simpanan` SET `jumlah`= `jumlah` + ".$jumlah." WHERE id_simpanan = ".$id_simpanan);
	}	
	public function kurang($id_simpanan, $jumlah)
	{
		$query = $this->db->query("UPDATE `simpanan` SET `jumlah`= `jumlah` - ".$jumlah." WHERE id_simpanan = ".$id_simpanan);
	}	
	public function totaldata($search="",$id_jenis){
		if($search != ''){
			$this->db->like('`akun`.`kta`', $search);
			$this->db->or_like('`akun`.`nama`', $search);
		}
		$this->db->join('jenis_simpanan', 'simpanan.id_jenis = jenis_simpanan.id_jenis');
		$this->db->join('akun', 'simpanan.id_akun = akun.id_akun');
		$this->db->where('simpanan.id_jenis = ',$id_jenis);
		return $this->db->get('simpanan')->num_rows();
	}
	public function totaldatatransaksi($search="",$id_jenis){
		$this->db->select('*, simpanan_transaksi.tanggal as tanggal_transaksi, simpanan_transaksi.jumlah as jumlah_transaksi');
		if($search != ''){
			$this->db->like('`akun`.`kta`', $search);
			$this->db->or_like('`akun`.`nama`', $search);
		}
		if ($id_jenis != '') {
			$this->db->where('`simpanan`.`id_jenis` =',$id_jenis);
		}
		$this->db->join('simpanan', '`simpanan_transaksi`.`id_simpanan` = `simpanan`.`id_simpanan`');
		$this->db->join('jenis_simpanan', '`simpanan`.`id_jenis` = `jenis_simpanan`.`id_jenis`');
		$this->db->join('akun', '`simpanan`.`id_akun` = `akun`.`id_akun`');
		$this->db->order_by('simpanan_transaksi.tanggal', 'DESC');
		return $query = $this->db->get('simpanan_transaksi')->num_rows();
	}
}

/* End of file Msimpanan.php */
/* Location: ./application/models/Msimpanan.php */