<?php

class Articles_model extends CI_Model{

	public function get_articles(){

		$query = $this->db->get('articles');
		return $query->result();
	}

	public function show_articles_model($article_url){

		$this->db->where('article_url', $article_url);
		$query = $this->db->get('articles');
		return $query->row();

	}

}