<?php

class Product_model extends CI_Model{

	function autocomplete_product_model($q){

	  $this->db->select('*');
	  $this->db->like('product_name', $q);
	  $query = $this->db->get('products');

	  if($query->num_rows > 0){
	    foreach ($query->result_array() as $row){
	      $new_row['label']=htmlentities(stripslashes($row['product_name']));
	      $new_row['price']=htmlentities(stripslashes($row['product_price']));
	      $new_row['stock']=htmlentities(stripslashes($row['product_stock']));
	      $row_set[] = $new_row; //build an array
	    }
	  }
	  
	  echo json_encode($row_set); //format the array into json data
	  
	}

}

/*

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

*/

