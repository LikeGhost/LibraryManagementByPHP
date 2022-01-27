<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailSendController extends BaseController
{
    //
    public function sendEmail(Request $request){



        $email = $request->input("email");
        if(User::where('email',$email)->first()!=null){
            return $this->create(['code'=>201],"该邮箱已被注册");
        }
        $captcha = rand(10000,99999);
//        var_dump($request->session()->get('captcha'));
        $request->session()->put('captcha',$captcha);

        Mail::raw($captcha ,function ($message) use($email){
            $message->subject("验证码");
            // 指定发送到哪个邮箱账号
            $message->to($email);
        });

        // 判断邮件是否发送失败
        if(count(Mail::failures())) {
            return $this->create(['code'=>201],'邮件发送失败');
        }

        return $this->create(['code'=>200],'邮件发送成功');
    }
}
