<?php

class Track_statuses_model extends CI_Model 
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

	}

	// --------------------------------------------------------------------
	
	function get_select_options()
	{
		$query = $this->db->query("SELECT *
								  FROM {$this->_table['track_statuses']}
								  ORDER BY track_status_order ASC"
								  );
		
		$status_list = array();

		if ($query->num_rows() > 0)
		{
			$status_list[''] = 'Please select';
			$status_list[' '] = '------------';
	
			foreach ($query->result() as $status)
			{
				$status_list[$status->track_status_id] = $status->track_status_name;
			}
		}
	
		$query->free_result();
		return $status_list;
	}

	// --------------------------------------------------------------------
}	
?>