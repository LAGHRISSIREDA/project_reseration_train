<?php 


require_once __DIR__ . '/../models/authentication.php';


class SigninController
{
	
	public function __construct()
	{
	}

	public function index()
	{
		session_start();
		if(!empty($_SESSION['i']) && isset($_SESSION['is'])){
			header('location:http://localhost/booking_train/home');
		}else{
			
		require_once __DIR__."/../views/signin.php";
		}
		
	}

	public function signin() {
		$email = $_POST['email'];
		$password = $_POST['password'];
		$auth = new Authentication();
		$auth->signin($email, $password);
	}
}