<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    //
    /**
     * @name users
     * @role fetch list of all users from database
     * @param 
     * @return json response
     *
     */

    public function users()
    {
        $users = User::get();
        return response()->json($users,200);
    }

    /**
     * @name userDetails
     * @role fetch details of a single user from database
     * @param Request from array
     * @return json response
     *
     */
    public function userDetails(Request $request)
    {
        $id = $request->id;
        if (!User::where('id',$id)->exists()) {
            return response()->json(['error' => 'Not Found'], 404);
        }
        $user = User::findOrFail($id);
        return response()->json($user,200);
    }

    /**
     * @name authUserDetails
     * @role fetch loggedin user details info from database
     * @param Request from array
     * @return json response
     *
     */
    public function authUserDetails(Request $request)
    {
        return response()->json($request->user(),200);
    }
}
