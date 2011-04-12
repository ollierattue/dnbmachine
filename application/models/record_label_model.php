<?php

class Record_label_model extends CI_Model 
{	
	// Protected or private properties
	protected $_table;
	
	function __construct()
    {
        parent::__construct();
    	$this->_table = $this->config->item('database_tables');
	}
	
	// --------------------------------------------------------------------

	function get_select_options()
	{
		$query = $this->db->query("SELECT *
								  FROM {$this->_table['record_labels']}
								  ORDER BY record_label_name ASC"
								  );
		
		$labels_list = array();

		if ($query->num_rows() > 0)
		{
			$labels_list[''] = 'Please select';
			$labels_list[' '] = '------------';
	
			foreach ($query->result() as $label)
			{
				$labels_list[$label->record_label_id] = $label->record_label_name;
			}
		}
	
		$query->free_result();
		return $labels_list;
	}

	// --------------------------------------------------------------------
}	
?>