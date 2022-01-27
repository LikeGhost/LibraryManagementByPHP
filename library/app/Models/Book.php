<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use HasFactory,SoftDeletes;

    protected $table='book';
    protected $primaryKey='id';
    protected $fillable =['id','isbn','clc_id','name','author','publish_at','price','information','total','deleted_at','updated_at'];
    protected $attributes = [
        'total' => 0,
    ];

    public function realBooks()
    {
        return $this->hasMany('App\Models\RealBook');
    }






}
