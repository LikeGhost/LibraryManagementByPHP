<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clc extends Model
{
    use HasFactory;
    protected $table='clc';
    protected $primaryKey='id';
    public $incrementing = true;
    public $timestamps=false;
    protected $fillable =['id','content','sign'];
//    protected $attributes = [
//        'total' => 0,
//        'borrow_num'=>0
//    ];

}
