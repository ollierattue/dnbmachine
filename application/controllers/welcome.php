<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function Welcome()
	{
		parent::__construct();
			
		$this->load->model('track_model');
		$this->load->model('artist_model');
		$this->load->model('track_statuses_model');
			
		if (ENABLE_PROFILER == TRUE)
		{
			$this->output->enable_profiler(TRUE);
		}
	}
	
	// --------------------------------------------------------------------
		
	function index($track_status = 'forthcoming')
	{
		$this->data['results'] = $this->track_model->get('forthcoming');
		$this->data['track_status'] = $track_status;
		build_page('welcome/index/index', $this->data, NULL, 'homepage');
	}
	
	// --------------------------------------------------------------------

	function type($track_status = 'forthcoming')
	{
		$this->data['track_status'] = $track_status;
		$this->data['results'] = $this->track_model->get($track_status);
		build_page('welcome/index/index', $this->data, NULL, 'homepage');
	}
	
	// --------------------------------------------------------------------

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */