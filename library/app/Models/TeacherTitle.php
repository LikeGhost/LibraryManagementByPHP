<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherTitle extends Model
{
    use HasFactory;

    protected $table='teacher_title';
    protected $primaryKey='id';
    protected $fillable =['id','teacher_title'];
    public $timestamps=false;
}
