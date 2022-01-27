<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class AuthController extends BaseController
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login','check']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $credentials = request(['name', 'password']);
      //  dd(User::where('name',$request->input('name'))->get()->toArray());
        if (! $token = auth()->attempt($credentials)) {


//            if(User::where('name',$request->input('name'))==null){
                return $this->create(['code'=>202],'用户名或密码错误');
//            }

        }

        return $this->respondWithToken($token);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {

        $user=auth()->user();
        $role=$user->roles[0];
        return $this->create(['user'=>$user,'role'=>$role],"");
//        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'Authorization' => 'Bearer ' . $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'code' => 0,
            'data'=>['code'=>200]
        ]);
    }

    public function failed()
    {
        dd(auth()->invalidate(true));
        return $this->respondWithToken(auth()->refresh());
    }
    public function check(){
        $token = auth()->tokenById(5);
        dd($token);
    }

    public function getMenu(){
      //  $path = storage_path() . "/json/${filename}.json"; // ie: /var/www/laravel/app/storage/json/filename.json

//        dd(file_get_contents(storage_path() . "/json/menuJson/adminMenu.json"));
        $user=auth()->user();
        $role=$user->roles()->first();
        $permission=$role->permissions()->first();
        $adminMenu = json_decode(file_get_contents(storage_path() . "/json/menuJson/adminMenu.json"), true);
        $normalUserMenu = json_decode(file_get_contents(storage_path() . "/json/menuJson/normalUserMenu.json"), true);

        if($permission->permission=='admin'){
            return $adminMenu;
        }
        else if($permission->permission=='normal'){
            return $normalUserMenu;
        }
        else{
            return $this->create(['code'=>202],'无权访问',0);
        }

    }
}
