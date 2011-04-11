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
	
	function op($action = "add", $artist_url_slug = NULL)
	{	
		switch($action)
		{
			case "add":
				
				$this->data["artist_data"] = array(
												'artist_name' 			=> NULL,
												'artist_url_slug'		=> NULL,
												'artist_soundcloud' 	=> NULL,
												'artist_twitter' 		=> NULL,
												'artist_facebook' 		=> NULL,
												'artist_myspace' 		=> NULL,
												'artist_disogs' 		=> NULL,
												'artist_website' 		=> NULL
												);
				
				$artist_slug = NULL;
				$page_title = 'Add an artist';
				
			break;
			
			case "edit":
				
				$result = $this->artist_model->get($artist_url_slug);

				if ($result->num_rows == 0)
				{
					$this->session->set_flashdata('flash', "Artist cannot be found.", 'error');
					redirect('artist/view/all');
				}
				
				$this->data["artist_data"] = $result->row_array();
				
				$page_title = 'Edit an artist';
				
			break;
			
			default:
				redirect('artist/view/all');
			break;
		}
		
		$this->form_validation->set_rules('artist_name', "Artist's name", 'max_length[300]');			
		$this->form_validation->set_rules('artist_soundcloud', "Artist's soundcloud", 'max_length[500]');			
		$this->form_validation->set_rules('artist_twitter', "Artist's twitter", 'max_length[50]');
		$this->form_validation->set_rules('artist_facebook', "Artist's facebook", 'max_length[100]');
		$this->form_validation->set_rules('artist_myspace', "Artist's myspace", 'max_length[200]');
		$this->form_validation->set_rules('artist_disogs', "Artist's disogs", 'max_length[200]');
		$this->form_validation->set_rules('artist_website', "Artist's website", 'max_length[500]');

		$this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->data['action'] = $action;
			$this->data["artist_url_slug"] = $artist_url_slug;
			
			build_page('artist/op/add_edit_form', $this->data, NULL, 'artist');
		}
		else
		{
			$form_data = array(
					       	'artist_name' 		=> set_value('artist_name'),
					       	'artist_soundcloud' => set_value('artist_soundcloud'),
					       	'artist_twitter' 	=> set_value('artist_twitter'),
							'artist_facebook' 	=> set_value('artist_facebook'),
							'artist_myspace' 	=> set_value('artist_myspace'),
							'artist_disogs' 	=> set_value('artist_disogs'),
							'artist_website' 	=> set_value('artist_website')
						);
					
			if ($this->artist_model->save($form_data, $action, $artist_url_slug, $artist_id))
			{
				if ($action == 'add')
				{
					$this->session->set_flashdata('flash', 'successfully added artist.', 'success');	
				}
				
				if ($action == 'edit')
				{
					$this->session->set_flashdata('flash', 'artist changes saved', 'success');
				}
			}
			else
			{
				$this->session->set_flashdata('flash', "there was a problem saving the artist. Please try again", 'error');
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