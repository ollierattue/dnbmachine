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
	
	function get($type = NULL)
	{
		$this->db->select('*');
       	$this->db->from($this->_table['tracks']);
		$this->db->join($this->_table['artists'], "{$this->_table['artists']}.artist_id = {$this->_table['tracks']}.track_artist_id", 'left');
		$this->db->join($this->_table['track_types'], "{$this->_table['track_types']}.track_type_id = {$this->_table['tracks']}.track_type_id", 'left');
		
		if ($type)
		{
			$this->db->where("{$this->_table['track_types']}.track_type_slug", $type);
		}
		
		return $this->db->get();
	}

	// --------------------------------------------------------------------

}	
?>