<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {

	public function __construct(){
		parent::__construct();
	}

	public function product_list(){

		$data['title'] = 'Show product';
		$data['content'] = 'show_product';

		$this->load->view('/pages/base_layout', $data);


	}



}
