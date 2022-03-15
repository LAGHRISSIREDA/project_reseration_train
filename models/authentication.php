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
        $maska =$ctn->selectOne($this->table, $email, $password);
        if(!empty($maska)){
            session_start();
            $_SESSION["id"] = $maska['id'];
            $_SESSION["email"] = $maska['email'];
            $_SESSION["full_name"] = $maska['full_name'];
            $_SESSION["role"] = $maska['role'];
            header('location: http://localhost/booking_train/home');
            exit();
        }
		    header('location: http://localhost/booking_train/signin');
    }
}