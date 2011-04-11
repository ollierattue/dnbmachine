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

	function save($artist_data = array(), $action = NULL, $artist_url_slug = NULL, &$artist_id)
	{
		switch($action)
		{
			case "add":
				$artist_data['artist_url_slug'] = create_slug($artist_data['artist_name']);
				
				$this->db->insert($this->_table['artists'], $artist_data);

				if ($this->db->affected_rows() == '1')
				{
					$artist_id = $this->db->insert_id();
					return TRUE;
				}
			break;

			case "edit":
				$this->db->where('artist_url_slug', $artist_url_slug);
				$this->db->update($this->_table['artists'], $artist_data);
				return TRUE;		
			break;
		}

		return FALSE;
	}

	// --------------------------------------------------------------------
	
	function get_select_options()
	{
		$query = $this->db->query("SELECT *
								  FROM {$this->_table['artists']}
								  ORDER BY artist_name ASC"
								  );
		
		$artists_list = array();

		if ($query->num_rows() > 0)
		{
			$artists_list[''] = 'Please select';
			$artists_list[' '] = '------------';
	
			foreach ($query->result() as $artist)
			{
				$artists_list[$artist->artist_id] = $artist->artist_name;
			}
		}
	
		$query->free_result();
		return $artists_list;
	}

	// --------------------------------------------------------------------
}	
?>