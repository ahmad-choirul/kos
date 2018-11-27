<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mregistrasi extends CI_Model {

	public function registrasi($data)
	{
		$insert = $this->db->insert('t_registrasi', $data);
		return $data;
	}

public function hapus($receiver)
{
	$this->db->delete('t_registrasi', array('email' => $receiver));
}
	public function getnextid()
	{
		$this->db->select('AUTO_INCREMENT');
		$this->db->from('information_schema.TABLES');
		$this->db->where('TABLE_SCHEMA', 'dbkos');
		$this->db->where('TABLE_NAME', 't_registrasi');
		return $this->db->get()->row();
	}
}