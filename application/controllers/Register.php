<<<<<<< HEAD
<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('register_model', 'register');
	}

	public function index()
	{
		$data['title']	= 'Register';
		$data['page']	= 'pages/auth/register';

		$this->load->view('layouts/app', $data);
	}

	public function register()
	{
		
		$this->form_validation->set_rules('name', 'Name', 'required',[
			'required'		=> 'Masukan nama anda',
		]);
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email',[
			'required'		=> 'Masukan email anda',
			'valid_email'	=> 'Email tidak valid'
		]);
		$this->form_validation->set_rules('password', 'Password', 'required|trim',[
			'required'		=> 'Masukan password anda'
		]);
		$this->form_validation->set_rules('password2', 'Password confirmation', 'required|trim|matches[password]',[
			'required'		=> 'Masukan konfirmasi password anda',
			'matches'		=> 'Konfirmasi password tidak sama'
		]);

		if($this->form_validation->run() == false) {
			$this->index();
		}else{
			$data = [
				'name'		=> $this->input->post('name'),
				'email'		=> $this->input->post('email'),
				'password'	=> hashEncrypt($this->input->post('password')),
				'role'		=> 2,
			];

			$this->register->register($data);
			$this->session->set_flashdata('success', 'Berhasil daftar, silahkan masuk.');

			redirect(base_url('login'));
		}
	}


}

/* End of file Register.php */
=======
<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('register_model', 'register');
	}

	public function index()
	{
		$data['title']	= 'Register';
		$data['page']	= 'pages/auth/register';

		$this->load->view('layouts/app', $data);
	}

	public function register()
	{
		
		$this->form_validation->set_rules('name', 'Name', 'required',[
			'required'		=> 'Masukan nama anda',
		]);
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email',[
			'required'		=> 'Masukan email anda',
			'valid_email'	=> 'Email tidak valid'
		]);
		$this->form_validation->set_rules('password', 'Password', 'required|trim',[
			'required'		=> 'Masukan password anda'
		]);
		$this->form_validation->set_rules('password2', 'Password confirmation', 'required|trim|matches[password]',[
			'required'		=> 'Masukan konfirmasi password anda',
			'matches'		=> 'Konfirmasi password tidak sama'
		]);

		if($this->form_validation->run() == false) {
			$this->index();
		}else{
			$data = [
				'name'		=> $this->input->post('name'),
				'email'		=> $this->input->post('email'),
				'password'	=> hashEncrypt($this->input->post('password')),
				'role'		=> 2,
			];

			$this->register->register($data);
			$this->session->set_flashdata('success', 'Berhasil daftar, silahkan masuk.');

			redirect(base_url('login'));
		}
	}


}

/* End of file Register.php */
>>>>>>> master
