<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

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
        return response()->json($users, 200);
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
        if (!User::where('id', $id)->exists()) {
            return response()->json(['error' => 'Not Found'], 404);
        }
        $user = User::findOrFail($id);
        return response()->json($user, 200);
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
        return response()->json($request->user(), 200);
    }

    /**
     * @name userUpdate
     * @role update user details info into the database
     * @param Request from array
     * @return json response
     *
     */

    public function userUpdate(Request $request)
    {
        $id = $request->id;
        if (!User::where('id', $id)->exists()) {
            return response()->json(['error' => 'Not Found'], 404);
        }

        $user = User::findOrFail($id);

        //validating
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3',
            'email' => 'required|email',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $attributes = $request->all();
        $user->update($attributes);

        return response()->json(['response' => $user], 200);
        
    }


    /**
     * @name userDelete
     * @role delete user from the database
     * @param Request from array
     * @return json response
     *
     */
    public function userDelete(Request $request)
    {
        $id = $request->id;
        if (!User::where('id', $id)->exists()) {
            return response()->json(['error' => 'Not Found'], 404);
        }

        $user = User::findOrFail($id);
        if ($user->delete()) {
            return response()->json(['response' => 'Successfully Deleted'], 200);
        } else {
            return response()->json(['error' => 'Something Went Wrong'], 500);
        }
        
        

    }
}
