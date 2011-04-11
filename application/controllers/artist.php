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
	
	function edit($artist_url_slug = NULL)
	{
		$result = $this->artist_model->get($artist_url_slug);
		
		if ($result->num_rows == 0)
		{
			redirect('artist/view/all');
		}
		
		$this->data['artist'] = $result->row();  
		
		$this->form_validation->set_rules('artist_name', "Artist's name", 'max_length[300]');			
		$this->form_validation->set_rules('artist_soundcloud', "Artist's soundcloud", 'max_length[500]');			
		$this->form_validation->set_rules('artist_twitter', "Artist's twitter", 'max_length[50]');
		$this->form_validation->set_rules('artist_facebook', "Artist's facebook", 'max_length[100]');
		$this->form_validation->set_rules('artist_website', "Artist's website", 'max_length[500]');
		
		$this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
	
		if ($this->form_validation->run() == FALSE)
		{
			build_page('artist/edit/form', $this->data, NULL, 'artist');
		}
		else
		{
		 	// build array for the model
			
			$form_data = array(
					       	'artist_name' 		=> set_value('artist_name'),
					       	'artist_soundcloud' => set_value('artist_soundcloud'),
					       	'artist_twitter' 	=> set_value('artist_twitter'),
							'artist_facebook' 	=> set_value('artist_facebook'),
							'artist_website' 	=> set_value('artist_website'),
						);
					
			// run insert model to write data to db
		
			if ($this->artist_model->update($artist_url_slug, $form_data) == TRUE)
			{
				$this->session->set_flashdata('flash', "artist updated", 'success');
			}
			else
			{
				$this->session->set_flashdata('flash', "there was a problem updating the artist info. Please try again", 'error');
			}
			
			redirect('artist/view/all');
		}
		
			
	}

	// --------------------------------------------------------------------
	
	function delete($artist_slug = NULL)
	{
		
	}

	// --------------------------------------------------------------------

}
?>