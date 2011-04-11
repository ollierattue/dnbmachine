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
	
	function get($track_status = NULL)
	{
		$this->db->select('*');
       	$this->db->from($this->_table['tracks']);
		$this->db->join($this->_table['artists'], "{$this->_table['artists']}.artist_id = {$this->_table['tracks']}.track_artist_id", 'left');
		$this->db->join($this->_table['track_statuses'], "{$this->_table['track_statuses']}.track_status_id = {$this->_table['tracks']}.track_status_id", 'left');
		
		if ($track_status)
		{
			$this->db->where("{$this->_table['track_statuses']}.track_status_slug", $track_status);
		}
		
		return $this->db->get();
	}

	// --------------------------------------------------------------------

}	
?>