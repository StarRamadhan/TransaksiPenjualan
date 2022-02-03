<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
    var $data;
    function __construct()
    {
        parent::__construct(); // needed when adding a constructor to a controller
        $this->load->library('encryption');
        $this->load->model("Login_model");
    }

    public function index(){
        $name = $this->input->post('name');
        $password = SHA1($this->input->post('password'));
        $otenPengguna = $this->Login_model->otenPengguna($name, $password);
        $this->load->view('login');
        $rowPengguna = $otenPengguna->num_rows();

		if ($rowPengguna > 0) {
        echo "user ada";
        }
    }
}
