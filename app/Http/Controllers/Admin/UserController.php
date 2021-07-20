<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //
    public function index(Request $request){
        $user_list = User::where('users.status',1);
        $user_list->join('users_scores', 'users.id', '=', 'users_scores.users_id');
      
        if (request()->input('search', '') != '') {
            $search = request()->input('search', '');
            $user_list->where('name', 'like', '%' . $search . '%');
        }

        if (request()->input('sort', '') != '') {
            $sort = request()->input('sort', '');
            if($sort == 1){
                $user_list->orderBy('score', 'ASC');
            }elseif($sort == 2){
                $user_list->orderBy('score', 'DESC');
            }
            
        }

        $data['user_list'] = $user_list->paginate(15)->appends(request()->query());
        return $this->_display('admin.users',$data);
    }


    public function _display($view, $data  = [])
    {
        return view($view, $data);
    }
}
