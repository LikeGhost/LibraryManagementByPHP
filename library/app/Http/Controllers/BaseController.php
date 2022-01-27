<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BaseController extends Controller
{
    protected function create($data,$msg = '',$code = 0){

        $result =[
            'code'=> $code,
            'msg' => $msg,
            'data' => $data
        ];
        return response($result);
    }

    protected function createFailed($data,$msg = '',$code =400){

        $result =[
            'code'=> $code,
            'msg' => $msg,
            'data' => $data
        ];
        return response($result);
    }
}
