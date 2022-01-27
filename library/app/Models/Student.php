<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Student extends Model
{
    use HasFactory,SoftDeletes;

    protected $table='student';
    protected $primaryKey='id';
    protected $fillable =['id','user_id','nickname','grade_id','student_title_id'];

    public function user(){
        return $this->belongsTo("App\Models\User");
    }
}
