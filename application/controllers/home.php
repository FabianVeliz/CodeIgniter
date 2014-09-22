<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Articles_model');
	}

	public function view(){

		$data['title'] = 'Home';
		$data['articles'] = $this->Articles_model->get_articles();
		$this->load->view('templates/header', $data);
		$this->load->view('pages/home');
		$this->load->view('templates/footer', $data);


	}

}
