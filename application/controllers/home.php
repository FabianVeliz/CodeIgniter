<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Articles_model');
	}

	public function view(){

		$data['title'] = 'Home';
		$data['articles'] = $this->Articles_model->get_articles();
		$data['content'] = 'home';

		$this->load->view('/pages/base_layout', $data);


	}

	public function show_articles($article_url){

		$clean_url = $this->security->xss_clean($article_url);

		$data['article'] = $this->Articles_model->show_articles_model($clean_url);
		$data['title'] = $data['article']->article_name;
		$data['content'] = 'view_article';

		$this->load->view('/pages/base_layout', $data);


	}

}
