<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Checkout extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		is_login();
		$this->load->model('checkout_model', 'checkout');
	}
	
	public function index()
	{
		$id 					= $this->session->userdata('id');   
		$data['title']		= 'Checkout';
		$data['page']		= 'pages/checkout/index';
		$data['cart']		= $this->checkout->getCart($id);
		$this->load->view('layouts/app',$data);
	}

	public function create()
	{
		$this->form_validation->set_rules('name', 'Name', 'required',[
			'required' => 'Nama penerima wajib diisi.',
		]);
		$this->form_validation->set_rules('address', 'Address', 'required',[
			'required' => 'Alamat lengkap wajib diisi.',
		]);
		$this->form_validation->set_rules('phone', 'Phone', 'required|numeric',[
			'required' => 'No handphone wajib diisi.',
			'numeric'  => 'No handphone harus berupa angka.'
		]);

		if($this->form_validation->run() != false) {
			$total = $this->checkout->total($this->session->userdata('id'));

			$data = [
				'user_id'	=> $this->session->userdata('id'),
				'date'		=> date('Y-m-d'),
				'invoice'	=> $this->session->userdata('id') . date('YmdHis'),
				'total'		=> $total,
				'name'		=> $this->input->post('name'),
				'address'	=> $this->input->post('address'),
				'phone'		=> $this->input->post('phone'),
				'status'		=> 'waiting',
			];

			// Masukkan data ke table orders
			if($order = $this->checkout->insertOrder($data)){
				$cart = $this->checkout->getCartByIdUser($this->session->userdata('id'));
				foreach($cart as $c) {
					$c['orders_id'] = $order;
					unset($c['id'], $c['user_id']);
					$this->checkout->insertOrdersDetail($c);
				}

				// Hapus data pada keranjang
				$this->checkout->deleteCart($this->session->userdata('id'));

				$this->session->set_flashdata('success', 'Data berhasil di simpan.');

				$data['title'] 	= 'Checkout Success';
				$data['content']	= $data;
				$data['page']		= 'pages/checkout/success';

				$this->load->view('layouts/app', $data);
			}
		}else{
			$data['title']		= 'Checkout';
			$data['page']		= 'pages/checkout/index';
			$data['cart']		= $this->checkout->getCart($this->session->userdata('id'));
			$this->load->view('layouts/app',$data);
		}
	}

}

/* End of file Checkout.php */
