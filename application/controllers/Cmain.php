<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cmain extends CI_Controller {
	public function index()
	{
		$this->load->view('layouts/template', [
			'mainContent' => 'main'
		]);
	}
}
