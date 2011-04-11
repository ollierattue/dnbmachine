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
	
	function get($artist_url_slug = NULL)
	{
		$this->db->select('*');
       	$this->db->from($this->_table['artists']);

		if ($artist_url_slug)
		{
			$this->db->where('artist_url_slug', $artist_url_slug);
		}
		
		$this->db->order_by('artist_name', 'asc');
		return $this->db->get();
	}

	// --------------------------------------------------------------------

	function add()
	{
		
	}

	// --------------------------------------------------------------------

	function update($artist_url_slug = NULL, $artist_data)
	{
		$this->db->where('artist_url_slug', $artist_url_slug);
		$this->db->update($this->_table['artists'], $artist_data);
		return TRUE;		
	}

	// --------------------------------------------------------------------

}	
?>