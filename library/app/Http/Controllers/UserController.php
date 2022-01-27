<?php

namespace App\Http\Controllers;

use App\Models\Grade;
use App\Models\Role;
use App\Models\Student;
use App\Models\StudentTitle;
use App\Models\Teacher;
use App\Models\TeacherTitle;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends BaseController
{
    //

    public function __construct()
    {
        $this->middleware('auth:api', ['except' => []]);
    }


    public function searchUserByLike(Request $request){
        $keywords =$request->input('keywords');

        $limit=$request->input('limit');

        $user = DB::table('users')
            ->leftJoin('role_user','users.id','=','role_user.user_id')
            ->leftJoin('role','role.id','=','role_user.role_id')
            ->select('users.id as user_id','role.id as role_id','users.*,','role.*')
            ->where('users.deleted_at','=',null)
            ->where(function ($query)use ($keywords) {
                $query ->where('name','like','%'.$keywords.'%')
                    ->orWhere('email','like','%'.$keywords.'%');
            })
            ->paginate($limit)
            ->toArray();

        return $this->create($user,"",0);
    }

    public function loadRole(Request $request){
        $role = Role::all()->toArray();
        return $this->create($role,"",200);
    }

    public function loadTitle(Request $request){

        $role_now=$request->input('role_now');

        if($role_now==2){

            return $this->create(StudentTitle::all(),'',200);
        }
        else if($role_now==3){
            return $this->create(TeacherTitle::all(),'',200);

        }
    }

    public function loadGrade(Request $request){
        return $this->create(Grade::all(),'',200);
    }


    public function getNowUserInformation(Request $request){

        $role_now =$request->input('role_now');
        $user_now =$request->input('user_now');

        if($role_now==2){

//            dd(User::find($user_now)->student);
            $student = User::find($user_now)->student;

            return $this->create($student,"",200);
        }
        else if ($role_now==3){
            $teacher =User::find($user_now)->teacher;
            return $this->create($teacher,"",200);
        }

    }


    public function updateUser(Request $request){

        $role=$request->input('role');
        $user_id=$request->input('user_now');
        $user=User::find($user_id);

        if($role==2){
            $student= $user->student;
            if(!$student) {
                $student = new Student();
            }
            $student->user_id=$user_id;
            $student->nickname=$request->input('nickname');
            $student->grade_id=$request->input('grade');
            $student->student_title_id=$request->input('title');
            $student->save();
        }
        else if($role==3){
            $teacher= $user->teacher;
            if(!$teacher) {
                $teacher = new Teacher();
            }
            $teacher->user_id=$user_id;
            $teacher->nickname=$request->input('nickname');
            $teacher->teacher_title_id=$request->input('title');
            //dd($teacher->toArray());
            $teacher->save();
        }

        $user->name=$request->input('name');
        $user->email=$request->input('email');
        $password=$request->input('password');
        if($password!=null){
            $user->password=bcrypt($password);
        }

        $user->save();

        DB::table('role_user')->where('user_id','=',$user_id)->update(['role_id'=>$role]);

        if($password&&auth()->user()->roles[0]->role!=1){
            return $this->create(['code'=>202],"修改成功",200);
        }
        else{
            return $this->create(['code'=>201],"修改成功",200);
        }

    }

    public function addUser(Request $request){

        $email=$request->input('email');
        $name=$request->input('name');
        $role=$request->input('role');

        if(User::where('email',$email)->first()!=null){
            return $this->create(['code'=>201],"该邮箱已被注册");
        }
        if(User::where('name',$name)->first()!=null){
            return $this->create(['code'=>201],"该用户名已被注册");
        }

        $user=new User();
        $user->name=$name;
        $user->password=bcrypt($request->input('password'));
        $user->email=$request->input('email');

        $user->save();
        if($role==2){

            $student = new Student();
            $student->user_id=$user->id;
            $student->nickname=$request->input('nickname');
            $student->grade_id=$request->input('grade');
            $student->student_title_id=$request->input('title');
            $student->save();
        }
        else if($role==3){

            $teacher = new Teacher();
            $teacher->user_id=$user->id;
            $teacher->nickname=$request->input('nickname');
            $teacher->teacher_title_id=$request->input('title');
            $teacher->save();
        }

        DB::table('role_user')->where('user_id','=',$user->id)->updateOrInsert(['role_id'=>$role,'user_id'=>$user->id]);
        return $this->create(['code'=>201],"添加成功",200);
    }

    public function deleteUser(Request $request){

//        dd($request->all());
        $user=User::find($request->input('user_id'));
        $user->delete();
        return $this->create(['code'=>201],'删除成功',200);

    }
}
