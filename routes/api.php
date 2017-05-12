<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/user', function (Request $request) {
   $token = JWTAuth::getToken();
   $user = JWTAuth::toUser($token);
   return $user;
    // return $request->user();
})->middleware('jwt.auth');
// ->middleware('auth:api');
Route::post('/authenticate',['uses' => 'ApiAuthController@authenticat']);
Route::post('/register',['uses' => 'ApiAuthController@register']);
