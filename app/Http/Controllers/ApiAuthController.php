<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Tymon\JWTAuth\Exceptions\JWTExceptions;	
use JWTAuth;
use App\User;

class ApiAuthController extends Controller
{

	public function authenticat()
	{
		$credentials = request()->only('email', 'password');
		try {
			$token = JWTAuth::attempt($credentials);
			if (!$token) {
				return response()->json(['error' => 'invalid_credentials'], 401);
			}
			
		} catch (JWTException $e) {
			return response()->json(['error'=> 'something went wrong'], 500);
			
		}

		return response()->json(['token' => $token], 200);
	}

	public function register(){

 		$email = request()->email;
		$name = request()->name;
		$password = request()->password;

		$user = User::create(['email' => $email,'name' => $name,'password' => bcrypt( $password)]);
		$token = JWTAuth::fromUser($user);

		return response()->json(['token'=>$token], 200);
	}

}
