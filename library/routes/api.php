<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\RecordController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::group([

    'prefix' => 'auth'

], function ($router) {

    Route::post('login', [AuthController::class,'login']);
    Route::post('logout', [AuthController::class,'logout']);
    Route::post('refresh', [AuthController::class,'refresh']);
    Route::post('me', [AuthController::class,'me']);
    Route::post('invalidate',[AuthController::class,'failed']);
    Route::post('check',[AuthController::class,'check']);

    Route::get('menu',[AuthController::class,'getMenu']);



});
Route::group(['prefix'=>'book'],function (){

    Route::post('add',[BookController::class,'addBook' ]);
    Route::post('update',[BookController::class,'updateBook' ]);
    Route::get('clc',[BookController::class,'loadClc' ]);
    Route::get('publish',[BookController::class,'loadPublish' ]);
    Route::get('search',[BookController::class, 'searchBookByLike']);
    Route::get('delete',[BookController::class,'delBook' ]);
});


Route::group(['prefix'=>'realBook'],function (){

    Route::get('add',[BookController::class,'addRealBook' ]);
    Route::get('search',[BookController::class,'searchRealBookByLike' ]);
    Route::get('delete',[BookController::class,'deleteRealBook' ]);
});


Route::group(['prefix'=>'user'],function (){



    Route::get('search',[UserController::class,'searchUserByLike' ]);
    Route::get('role',[UserController::class,'loadRole' ]);
    Route::get('title',[UserController::class,'loadTitle' ]);
    Route::get('grade',[UserController::class,'loadGrade' ]);
    Route::get('nowUserInformation',[UserController::class,'getNowUserInformation' ]);
    Route::post('update',[UserController::class,'updateUser']);
    Route::post('add',[UserController::class,'addUser']);
    Route::get('delete',[UserController::class,'deleteUser']);

});

Route::group(['prefix'=>'record'],function (){



    Route::get('add',[RecordController::class,'addRecord' ]);
    Route::get('searchByUserId',[RecordController::class,'searchByUserId' ]);
    Route::get('return',[RecordController::class,'returnBook' ]);

    Route::get('fine',[RecordController::class,'getFine' ]);
    Route::get('pay',[RecordController::class,'payFine' ]);
    Route::get('searchAll',[RecordController::class,'searchAllRecord' ]);
    Route::get('returnTime',[RecordController::class,'changeReturnTime' ]);
    Route::get('searchByGrade',[RecordController::class,'searchByGrade' ]);
});



