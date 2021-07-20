<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
 

    public function show_admin_login(Request $request)
    {
        if (Auth::guard('admin')->check()) {
            return redirect()->route('admin.dashboard');
        } else {
            return view('admin.login');
        }
    }

    public function admin_authenticate(Request $request)
    {
        $validator = $request->validate([
            'email' => 'required',
            'password' => 'required|min:6',
        ]);
        
        if (Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->get('remember'))) {
            return redirect()->route('admin.dashboard');
        } else {
            return back()->withInput($request->only('email', 'remember'));
        }
    } 
}
