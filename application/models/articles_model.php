<?php

class Articles_model extends CI_Model{

	public function get_articles(){

		$query = $this->db->get('articles');
		return $query->result();
	}

	public function show_articles_model($article_url){

		$this->db
				->where('article_url', $article_url)
				->from('articles AS a')
				->join('categories AS c','a.category_id=c.category_id','left');

		$query = $this->db->get();

		$data = $query->result_object();

		if(count($data)==1){
			return $data[0];
		}

	}

}