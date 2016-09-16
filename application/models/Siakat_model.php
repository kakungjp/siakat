<?php
class Siakat_model extends CI_Model {

    public function __construct(){
            $this->load->database();
    }

    public function jadwal($semester = 1){
    	$this->db->select('*');
        $this->db->from('jadwal'); 
        $this->db->join('matkul', 'matkul.mtk_kode=jadwal.jdw_matkul', 'left');
        $this->db->join('dosen', 'dosen.dsn_nidn=jadwal.jdw_dosen', 'left');
        $this->db->where('jadwal.jdw_semester',$semester);
        $this->db->order_by('jadwal.jdw_kode','asc');         
        $query = $this->db->get(); 
        if($query->num_rows() != 0)
        {
            return $query->result_array();
        }
        else
        {
            return false;
        }
	}

	public function dosen($nidn = false){
		if($nidn != false){
			$this->db->select('*');
	        $this->db->from('dosen'); 
	        $this->db->where('dsn_nidn',$nidn);
	        $this->db->order_by('dsn_nama','asc');         
	        $query = $this->db->get(); 
	        if($query->num_rows() != 0)
	        {
	            return $query->result_array();
	        }
	        else
	        {
	            return false;
	        }
		}
    	$this->db->select('*');
        $this->db->from('dosen');
        $this->db->order_by('dsn_nama','asc');      
        $query = $this->db->get(); 
        if($query->num_rows() != 0)
        {
            return $query->result_array();
        }
        else
        {
            return false;
        }
	}

	public function tambahkontak($username){
	    $this->load->helper('url');

	    $data = array(
	    	'username' => $username,
	        'nama' => $this->input->post('nama'),
	        'nomor' => $this->input->post('nomor')
	    );

	    return $this->db->insert('buku_telepon', $data);
	}

	public function login($data){
	    $this->db->where('username', $data['username']);
		$this->db->where('password', $data['password']);
		$this->db->from('user');
	    return $this->db->count_all_results();
	}

	public function selectdata($id, $username){
		$this->db->where('kode', $id);
		$this->db->where('username', $username);
        $query = $this->db->get('buku_telepon');
        return $query->row_array(); 
	}

    public function tesmodel(){
        $query = $this->db->get('tabel1');
        return $query->result_array();
	}

	public function deletedata($id){
		$this->db->where('id', $id);
		$this->db->delete('tabel1');
	}

	public function input($data){
	    $this->load->helper('url');

	    $val = array(
	        'nama' => $data['nama'],
	        'nomor' => $data['nomor']
	    );
	    $this->db->insert('buku_telepon', $val);
	}

	public function pilihdata($id){
		$this->db->where('kode', $id);
        $query = $this->db->get('buku_telepon');
        return $query->row_array(); 
	}
}
?>