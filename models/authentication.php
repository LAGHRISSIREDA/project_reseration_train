<?php 

require_once "connection.php";

class Authentication {
    private $table = 'users';

    public function __construct() {
    }

    public function signup($fullname, $email, $password) {
        $ctn = new Connection();
        $ctn->insert($this->table, ['role', 'full_name', 'email', 'password'], ['0', $fullname, $email, $password]);
    }
    public function signin($email, $password) {
        $ctn = new Connection();
        $datta =$ctn->selectOne($this->table, $email, $password);
        if(!empty($datta)){
            session_start();
            $_SESSION["id"] = $datta['id'];
            $_SESSION["email"] = $datta['email'];
            $_SESSION["full_name"] = $datta['full_name'];
            $_SESSION["role"] = $datta['role'];
            header('location: http://localhost/booking_train/home');
            exit();
        }
		    header('location: http://localhost/booking_train/signin');
    }
}