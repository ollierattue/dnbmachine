<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
 	public function __construct()
    {
        parent::__construct();

		if (!$this->simpleloginsecure->is_logged_in()) 
		{ 
			redirect('login'); 
		}
    }
	
	// --------------------------------------------------------------------
	
	function index()
	{
		build_page('dashboard/index/index', NULL, NULL, 'dashbaord');
	}

	// --------------------------------------------------------------------

}
?>