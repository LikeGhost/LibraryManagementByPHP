<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Record extends Model
{
    use HasFactory,SoftDeletes;

    protected $table='record';
    protected $primaryKey='id';
    protected $fillable =['id','real_book_id','user_id','borrow_at','return_at','record_status_id','updated_at','created_at','deleted_at'];

    public function user(){
        return $this->belongsTo("App\Models\User");
    }


    public function realBook(){
        return $this->belongsTo("App\Models\RealBook");
    }

    public function fine(){
        return $this->hasOne("App\Models\Fine");
    }
}
