<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\User;

class AuthController extends Controller
{
    //

    /** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */
    public function register(Request $request)
    {
        //validating
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3',
            'email' => 'required|email',
            'password' => 'required|confirmed|min:5',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        //creating user
        $attributes = $request->all();
        $attributes['password'] = bcrypt($attributes['password']);
        $user = User::create($attributes);

        //token
        $token = $user->createToken('Personal API Token')->accessToken;
        $data = [
            'token'         => $token,
            'token_type'    => 'Bearer',
            'user'          => $user
        ];


        return response()->json(['response' => $data], 200);
    }



    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */
    public function login(Request $request)
    {
        //validating
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|min:5',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $credentials = request(['email', 'password']);

        if (!Auth::attempt($credentials)) {

            return response()->json(['error' => 'Unauthorised'], 401);
        }

        $user = $request->user();
        $token = $user->createToken('Personal API Token')->accessToken;

        $data = [
            'token'         => $token,
            'token_type'    => 'Bearer',
            'user'          => $user
        ];

        return response()->json(['response' => $data], 200);
    }

    /**
     * Logout user (Revoke the token)
     *
     * @return \Illuminate\Http\Response 
     */
    public function logout(Request $request)
    {
        if (Auth::check()) {
            $request->user()->token()->revoke();
            return response()->json(['response' =>'Successfully logged out of application'],200);
        }else{
           // dd("I am here");
            return response()->json(['error' =>'api.something_went_wrong'], 500);
        }

    }
}
