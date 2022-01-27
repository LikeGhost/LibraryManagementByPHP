<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publish extends Model
{
    use HasFactory;
    protected $table='publish';
    protected $primaryKey='id';
    public $incrementing = true;
    public $timestamps=false;
    protected $fillable =['id','name','area'];
//    protected $attributes = [
//        'total' => 0,
//        'borrow_num'=>0
//    ];



}
