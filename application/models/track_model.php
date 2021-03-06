<?php

class Track_model extends CI_Model 
{	
	// Protected or private properties
	protected $_table;
	
	function __construct()
    {
        parent::__construct();
    	$this->_table = $this->config->item('database_tables');
	}
	
	// --------------------------------------------------------------------
	
	function get($track_status = NULL, $track_url_slug = NULL)
	{
		$this->db->select('*');
       	$this->db->from($this->_table['tracks']);
		$this->db->join($this->_table['artists'], "{$this->_table['artists']}.artist_id = {$this->_table['tracks']}.track_artist_id", 'left');
		$this->db->join($this->_table['track_statuses'], "{$this->_table['track_statuses']}.track_status_id = {$this->_table['tracks']}.track_status_id", 'left');
		
		if ($track_status)
		{
			$this->db->where("{$this->_table['track_statuses']}.track_status_slug", $track_status);
		}
		
		if ($track_url_slug)
		{
			$this->db->where('track_url_slug', $track_url_slug);
		}
		
		$this->db->order_by('track_added', 'desc');
		return $this->db->get();
	}

	// --------------------------------------------------------------------
	
	function save($track_data = array(), $action = NULL, $track_url_slug = NULL, &$track_id)
	{
		switch($action)
		{
			case "add":
				$track_data['track_url_slug'] = create_slug($track_data['track_name']);
				$track_data["track_added"]	= date("Y-m-d H:i:s");
				
				$this->db->insert($this->_table['tracks'], $track_data);

				if ($this->db->affected_rows() == '1')
				{
					$track_id = $this->db->insert_id();
					return TRUE;
				}
			break;

			case "edit":
				$track_data['track_url_slug'] = create_slug($track_data['track_name']);
				$track_data["track_modified"] = date("Y-m-d H:i:s");
				
				$this->db->where('track_url_slug', $track_url_slug);
				$this->db->update($this->_table['tracks'], $track_data);
				return TRUE;		
			break;
		}

		return FALSE;
	}

	// --------------------------------------------------------------------
	
}	
?>