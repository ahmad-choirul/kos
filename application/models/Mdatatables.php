 <?php  
 class Mdatatables extends CI_Model  
 {  
      var $table = "akun";  
      var $select_column = array("id_akun", "kta","password","nama","pilkpa","tempat_tugas","status","ID_pengurus","tgl_pendaftaran","scan_ktp","level");  
      function make_query()  
      {  
           $this->db->select($this->select_column);  
           $this->db->from($this->table);  
           if(isset($_POST["search"]["value"]))  
           {  
                $this->db->like("id_akun", $_POST["search"]["value"]);  
                $this->db->or_like("kta", $_POST["search"]["value"]);  
                $this->db->like("password", $_POST["search"]["value"]);  
                $this->db->or_like("nama", $_POST["search"]["value"]); 
                 $this->db->like("pilkpa", $_POST["search"]["value"]);  
                $this->db->or_like("tempat_tugas", $_POST["search"]["value"]);  
                $this->db->like("status", $_POST["search"]["value"]);  
                $this->db->or_like("ID_pengurus", $_POST["search"]["value"]);  
                $this->db->like("tgl_pendaftaran", $_POST["search"]["value"]); 
           }  
                $this->db->order_by('id', 'DESC');  
      }  
      function make_datatables(){  
           $this->make_query();  
           if($_POST["length"] != -1)  
           {  
                $this->db->limit($_POST['length'], $_POST['start']);  
           }  
           $query = $this->db->get();  
           return $query->result();  
      }  
      function get_filtered_data(){  
           $this->make_query();  
           $query = $this->db->get();  
           return $query->num_rows();  
      }       
      function get_all_data()  
      {  
           $this->db->select("*");  
           $this->db->from($this->table);  
           return $this->db->count_all_results();  
      }  
 }  