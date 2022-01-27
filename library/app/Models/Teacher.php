<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Teacher extends Model
{
    use HasFactory,SoftDeletes;


    protected $table='teacher';
    protected $primaryKey='id';
    protected $fillable =['id','user_id','nickname','teacher_title_id'];
    function user(){
        return $this->belongsTo("App\Models\User");
    }
}
