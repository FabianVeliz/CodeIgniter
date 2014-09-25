<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Product_model');
	}

	public function product_sell(){

		$data['title'] = 'Sell product';
		$data['content'] = 'product_sell';
		$this->load->view('/pages/base_layout', $data);

	}

	function autocomplete_product(){
		
		if (isset($_GET['term'])){
			$q = strtolower($_GET['term']);
			$this->Product_model->autocomplete_product_model($q);
		}

	}

	public function product_add(){

		$data['title'] = 'Add product';
		$data['content'] = 'product_add';

		$this->load->view('/pages/base_layout', $data);
	}


	public function product_modify(){

		$data['title'] = 'Modify product';
		$data['content'] = 'product_modify';

		$this->load->view('/pages/base_layout', $data);


	}

	public function product_delete(){
		$data['title'] = 'Delete product';
		$data['content'] = 'product_delete';

		$this->load->view('/pages/base_layout', $data);
	}

}

/* 

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

*/