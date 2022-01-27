<?php

use App\Http\Controllers\MailSendController;
use App\Http\Controllers\RegisterController;
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

Route::get('/', function () {
    return view('index');
});


Route::get('/sendEmail',[MailSendController::class,'sendEmail']);


Route::get('/hello',function (){
    return "hello";
});


Route::get('/register',[RegisterController::class,'register']);

//Route::get('/captcha',)



