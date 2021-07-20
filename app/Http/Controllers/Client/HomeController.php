<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;


class HomeController extends Controller
{
    //
    public function index(){
        $data = [];
        return $this->_display('client.index',$data);
    }

    public function _display($view, $data  = [])
    {
        return view($view, $data);
    }
}
