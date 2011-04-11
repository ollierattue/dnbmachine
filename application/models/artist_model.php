<?php

class Artist_model extends CI_Model 
{	
	// Protected or private properties
	protected $_table;
	
	function __construct()
    {
        parent::__construct();
    	$this->_table = $this->config->item('database_tables');
	}
	
	// --------------------------------------------------------------------
	
	function get()
	{
		$this->db->select('*');
       	$this->db->from($this->_table['artists']);
		$this->db->order_by('artist_name', 'asc');
		return $this->db->get();
	}

	// --------------------------------------------------------------------

}	
?>