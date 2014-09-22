<?php

class Articles_model extends CI_Model{

	public function get_articles(){

		$query = $this->db->get('articles');
		return $query->result();
	}

}