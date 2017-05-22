<?php

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

Route::get('/', 'GeneralController@index');

Auth::routes();

Route::get('/admin', 'AdminController@index')->middleware('auth');
Route::get('/admin/general', 'AdminController@general')->middleware('auth');
Route::post('/admin/general/save', 'AdminController@save')->middleware('auth');
Route::get('/admin/CV', 'AdminController@cv')->middleware('auth');
Route::post('/admin/CV/save', 'AdminController@save')->middleware('auth');
Route::get('/admin/about', 'AdminController@about')->middleware('auth');
Route::post('/admin/about/save', 'AdminController@save')->middleware('auth');
Route::get('/admin/project', 'AdminController@project')->middleware('auth');
Route::post('/admin/project/save', 'AdminController@save')->middleware('auth');

Route::post('/send', function () {
    // send an email to "batman@batcave.io"
    Mail::to('poczta@mariuszb.eu')->send(new \App\Mail\Mariuszb_website());
    
    return redirect('/');
});


Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
