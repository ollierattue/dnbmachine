<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller
{
 	public function __construct()
    {
        parent::__construct();
    }
	
	// --------------------------------------------------------------------
	
	function login()
	{
		if ($this->simpleloginsecure->is_logged_in()) 
		{ 
			redirect('dashboard'); 
		}

       $this->form_validation->set_rules('email', 'email', 'trim|required|xss_clean');
       $this->form_validation->set_rules('password', 'password', 'required|xss_clean');

		if ($this->form_validation->run() == FALSE) 
		{ 		
			build_page('auth/login/form');
		} 
		else 
		{
			$user_email = set_value('email');
			$user_pass = set_value('password');
			
			if ($this->simpleloginsecure->login($user_email, $user_pass))
			{
				$this->session->set_flashdata('flash', "Login successful. Welcome", 'success');
			}
			else
			{
				$this->session->set_flashdata('flash', 'Login unsuccessful', 'error');
			}
			
			redirect('dashboard');
		}
	}
	
	// --------------------------------------------------------------------
	
	function logout ()
	{
		$this->simpleloginsecure->logout();
		redirect('');
	}
	
	// --------------------------------------------------------------------
}
?>