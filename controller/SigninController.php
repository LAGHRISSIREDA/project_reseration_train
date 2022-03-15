<?php 


require_once __DIR__ . '/../models/authentication.php';


class SigninController
{
	
	public function __construct()
	{
	}

	public function index()
	{
		// $produits=Produit::select();
		require_once __DIR__."/../views/signin.php";
	}

	public function signin() {
		$email = $_POST['email'];
		$password = $_POST['password'];
		$auth = new Authentication();
		$auth->signin($email, $password);
	}
}