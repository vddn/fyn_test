<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function index(){

    }

    public function add_user($data){
        $new_user = new User;
        $new_user->name = isset($data['name']) ? $data['name'] : '';
        $new_user->email = isset($data['email']) ? $data['email'] : '';
        $new_user->password = Hash::make('12345678');
        $new_user->mobile_number = isset($data['mobile_number']) ? $data['mobile_number'] : '';
        $new_user->created_at = date('Y-m-d H:i:s');
        $new_user->save();
        return $new_user->id;
    }

    public function _display($view, $data  = [])
    {
        return view($view, $data);
    }
}
