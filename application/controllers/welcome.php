<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function Welcome()
	{
		parent::__construct();
			
		$this->load->model('track_model');
		$this->load->model('artist_model');
		$this->load->model('track_type_model');
			
		if (ENABLE_PROFILER == TRUE)
		{
			$this->output->enable_profiler(TRUE);
		}
	}
	
	// --------------------------------------------------------------------
		
	function index($type = 'forthcoming')
	{
		$this->data['results'] = $this->track_model->get('forthcoming');
		$this->data['type'] = $type;
		build_page('welcome/index/index', $this->data, NULL, 'homepage');
	}
	
	// --------------------------------------------------------------------

	function type($type = 'forthcoming')
	{
		$this->data['type'] = $type;
		$this->data['results'] = $this->track_model->get($type);
		build_page('welcome/index/index', $this->data, NULL, 'homepage');
	}
	
	// --------------------------------------------------------------------

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */