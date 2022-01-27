<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RegisterController extends BaseController
{
    public function register(Request $request ){


        $email = $request->get("email");
        $nickname =$request->get('nickname');
        if(User::where('email',$email)->first()!=null){
            return $this->create(['code'=>201],"该邮箱已被注册");
        }
        if(User::where('name',$nickname)->first()!=null){
            return $this->create(['code'=>201],"该用户名已被注册");
        }

        $captcha =$request->session()->get('captcha');

        if($request->get('vercode')!=$captcha){
            return $this->create(['code'=>201],"验证码错误");
        }

        $register = new User();

        $register->password=bcrypt($request->get('password'));
        $register->name=$request->get('nickname');
        $register->email=$request->get('email');
        $register->save();
        DB::table('role_user')->updateOrInsert(['user_id'=>$register->id,'role_id'=>2]);
        return $this->create(['code'=>200,$register],"注册成功");

    }
}
