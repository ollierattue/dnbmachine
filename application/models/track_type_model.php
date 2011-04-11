<?php

class Track_type_model extends CI_Model 
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
		return $this->db->count_all($this->_table['barometers']);
	}

	// --------------------------------------------------------------------

}	
?>