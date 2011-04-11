<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Artist extends CI_Controller
{
 	public function __construct()
    {
        parent::__construct();

		if (!$this->simpleloginsecure->is_logged_in()) 
		{ 
			redirect('login'); 
		}
		
		$this->load->model('artist_model');
    }
	
	// --------------------------------------------------------------------
	
	function view()
	{
		$this->data['results'] = $this->artist_model->get();
		build_page('artist/view/all', $this->data, NULL, 'artist');
	}

	// --------------------------------------------------------------------

	function add()
	{
		build_page('artist/add/form', NULL, NULL, 'artist');
	}

	// --------------------------------------------------------------------
	
	function edit($artist_slug = NULL)
	{
		build_page('artist/edit/form', NULL, NULL, 'artist');	
	}

	// --------------------------------------------------------------------
	
	function delete($artist_slug = NULL)
	{
		
	}

	// --------------------------------------------------------------------

}
?>