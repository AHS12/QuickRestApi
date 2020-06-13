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

Route::post('login', 'Api\AuthController@login');
Route::post('register', 'Api\AuthController@register');
//Route::post('logout', 'Api\AuthController@logout');

Route::group(['middleware' => 'auth:api'], function () {
    //logout route
    Route::post('logout', 'Api\AuthController@logout');

    //user route
    Route::post('user', 'Api\UserController@authUserDetails');
    Route::get('users','Api\UserController@users');
    Route::get('user/{id}','Api\UserController@userDetails');
});


//for normal testing without auth
Route::get('noauth/users','Api\UserController@users');
Route::get('noauth/user/{id}','Api\UserController@userDetails');

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
