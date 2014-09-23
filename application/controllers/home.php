<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Articles_model');
	}

	public function view(){

		$header['title'] = 'Home';
		$data['articles'] = $this->Articles_model->get_articles();
		
		$this->load->view('templates/header', $header);
		$this->load->view('pages/home', $data);
		$this->load->view('templates/footer');


	}

	public function show_articles($article_url){
		//$this->output->enable_profiler(TRUE);

		$clean_url = $this->security->xss_clean($article_url);

		$data['article'] = $this->Articles_model->show_articles_model($clean_url);
		$header['title'] = $data['article']->article_name;

		$this->load->view('templates/header', $header);
		$this->load->view('pages/view_article', $data);
		$this->load->view('templates/footer');


	}

}
