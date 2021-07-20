<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index(){

    }
    
    public function dashboard(Request $request)
    {
        $data = [];
        return $this->_display('admin.dashboard',$data);
    }


    public function _display($view, $data  = [])
    {
        return view($view, $data);
    }
}
