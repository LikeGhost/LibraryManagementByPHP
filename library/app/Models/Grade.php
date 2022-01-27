<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grade extends Model
{
    use HasFactory;

    use HasFactory;

    protected $table='grade';
    protected $primaryKey='id';
    protected $fillable =['id','grade'];
    public $timestamps=false;
}
