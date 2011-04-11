<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Track extends CI_Controller
{
 	public function __construct()
    {
        parent::__construct();

		if (!$this->simpleloginsecure->is_logged_in()) 
		{ 
			redirect('login'); 
		}
		
		$this->load->model('track_model');
    }
	
	// --------------------------------------------------------------------
	
	function view()
	{
		$this->data['results'] = $this->track_model->get();
		build_page('track/view/all', $this->data, NULL, 'track');
	}

	// --------------------------------------------------------------------

	function add()
	{
		build_page('track/add/form', NULL, NULL, 'track');
	}

	// --------------------------------------------------------------------

	function edit($track_slug = NULL)
	{
		build_page('track/edit/form', NULL, NULL, 'artist');	
	}

	// --------------------------------------------------------------------

	function delete($track_slug = NULL)
	{
		
	}

	// --------------------------------------------------------------------
}
?>