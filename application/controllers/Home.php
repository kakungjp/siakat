<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Siakat_model');
        $this->load->helper('url_helper');
	}

	public function index()
	{
		$data['title'] = 'Dashboard';
		$data['menu'] = 'dashboard';
		$this->load->view('frontend/template/head.php', $data);
		$this->load->view('frontend/template/sidebar.php');
		$this->load->view('frontend/template/navbar.php');
		$this->load->view('frontend/dashboard.php');
		$this->load->view('frontend/template/footer.php');
		$this->load->view('frontend/dashboard_footer.php');
	}

	public function jadwal()
	{
		$data['title'] = 'Jadwal Kuliah';
		$data['menu'] = 'jadwal';
		$data['hasil'] = $this->Siakat_model->jadwal();
		$this->load->view('frontend/template/head.php', $data);
		$this->load->view('frontend/template/sidebar.php');
		$this->load->view('frontend/template/navbar.php');
		$this->load->view('frontend/jadwal.php', $data);
		$this->load->view('frontend/template/footer.php');
		$this->load->view('frontend/dashboard_footer.php');
	}
}