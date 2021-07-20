<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

//------------------------client routes
Route::get('/', 'Client\HomeController@index')->name('client.home');
Route::post('/mcq-test', 'Client\McqController@index')->name('client.mcq.test');
Route::post('/result', 'Client\McqController@mcq_result')->name('client.mcq.test.submit');
//-------------------------client routes ends here

//------------------------admin routes
Route::get('/admin', 'Admin\AuthController@show_admin_login')->name('admin.login');
Route::post('/admin/authenticate', 'Admin\AuthController@admin_authenticate')->name('admin.admin_authenticate');

Route::group(['middleware' => ['auth:admin'], 'as' => 'admin.', 'prefix' => 'admin'], function () {

    Route::get('/dashboard', 'Admin\HomeController@dashboard')->name('dashboard');
    Route::get('/users', 'Admin\UserController@index')->name('users');

        Route::get('/logout', function () {
            Auth::guard('admin')->logout();
            return redirect('/admin');
        })->name('logout');
    });
//--------------------------admin routes ends here