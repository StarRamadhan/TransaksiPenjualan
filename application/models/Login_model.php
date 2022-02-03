<?php defined('BASEPATH') or exit('No direct script access allowed');

class Login_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function otenPengguna($name, $password)
    {
        $sql = $this->db->query("SELECT * FROM user WHERE nmUser='$name' AND password='$password'");
        return $sql;
    }

    public function getUserInfo($IdPengguna)
    {
        $query = $this->db->get_where('pengguna', array('IdPengguna' => $IdPengguna), 1);
        if ($this->db->affected_rows() > 0) {
            $row = $query->row();
            return $row;
        } else {
            echo "User Not Found";
            return false;
        }
    }
}
