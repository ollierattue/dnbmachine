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
		$this->load->model('artist_model');
		$this->load->model('track_statuses_model');
		$this->load->model('record_label_model');
    }
	
	// --------------------------------------------------------------------
	
	function view()
	{
		$this->data['results'] = $this->track_model->get();
		build_page('track/view/all', $this->data, NULL, 'track');
	}

	// --------------------------------------------------------------------

	function op($action = "add", $track_url_slug = NULL)
	{
		switch($action)
		{
			case "add":
				
				$this->data["track_data"] = array(
												'track_name' 				=> NULL,
												'track_url_slug'			=> NULL,
												'track_artist_id' 			=> NULL,
												'track_record_label_id'		=> NULL,
												'track_status_id' 			=> NULL,
												'track_soundcloud_url' 		=> NULL,
												'track_soundcloud_id' 		=> NULL,
												'track_youtube_url' 		=> NULL,
												'track_youtube_id' 			=> NULL,
												'track_buy_url'				=> NULL
												);
				
				$page_title = 'Add a track';
				
			break;
			
			case "edit":
				
				$result = $this->track_model->get(NULL, $track_url_slug);

				if ($result->num_rows == 0)
				{
					$this->session->set_flashdata('flash', "track cannot be found.", 'error');
					redirect('track/view/all');
				}
				
				$this->data["track_data"] = $result->row_array();
				
				$page_title = 'Edit a track';
				
			break;
			
			default:
				redirect('artist/view/all');
			break;
		}
		
		$this->form_validation->set_rules('track_name', 'track name', 'max_length[300]');			
		$this->form_validation->set_rules('track_artist_id', 'track artist', 'max_length[10]');			
		$this->form_validation->set_rules('track_record_label_id', 'track label', 'max_length[3]');
		$this->form_validation->set_rules('track_status_id', 'track status', 'max_length[2]');			
		$this->form_validation->set_rules('track_soundcloud_url', 'track Soundcloud url', 'max_length[500]');			
		$this->form_validation->set_rules('track_soundcloud_id', 'track soundcloud id', 'max_length[20]');			
		$this->form_validation->set_rules('track_youtube_url', 'track YouTube url', 'max_length[500]');			
		$this->form_validation->set_rules('track_youtube_id', 'YouTube id', 'max_length[20]');
		$this->form_validation->set_rules('track_buy_url', 'Buy url', 'max_length[400]');
		
		$this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->data['action'] = $action;
			$this->data["track_url_slug"] = $track_url_slug;
			$this->data['artist_select_options'] = $this->artist_model->get_select_options();
			$this->data['record_label_select_options'] = $this->record_label_model->get_select_options();
			$this->data['track_status_select_options'] = $this->track_statuses_model->get_select_options();
			
			build_page('track/op/add_edit_form', $this->data, NULL, 'track');	
		}
		else
		{
			$form_data = array(
		  					'track_name' 		    	=> set_value('track_name'),
		  					'track_artist_id' 	    	=> set_value('track_artist_id'),
							'track_record_label_id' 	=> set_value('track_record_label_id'),
		  					'track_status_id' 	   		=> set_value('track_status_id'),
		  					'track_soundcloud_url'  	=> set_value('track_soundcloud_url'),
		  					'track_soundcloud_id'   	=> set_value('track_soundcloud_id'),
		  					'track_youtube_url'     	=> set_value('track_youtube_url'),
		  					'track_youtube_id' 	  		=> set_value('track_youtube_id'),
							'track_buy_url' 	  		=> set_value('track_buy_url')
							);
					
			if ($this->track_model->save($form_data, $action, $track_url_slug, $track_id))
			{
				if ($action == 'add')
				{
					$this->session->set_flashdata('flash', 'successfully added track.', 'success');	
				}
				
				if ($action == 'edit')
				{
					$this->session->set_flashdata('flash', 'track changes saved.', 'success');
				}
			}
			else
			{
				$this->session->set_flashdata('flash', "there was a problem saving the track. Please try again", 'error');
			}
			
			redirect('track/view/all');
		}	
	}

	// --------------------------------------------------------------------

	function delete($track_slug = NULL)
	{
		
	}

	// --------------------------------------------------------------------
}
?>