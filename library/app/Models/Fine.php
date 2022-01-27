<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fine extends Model
{
    use HasFactory;


    protected $table='fine';
    protected $primaryKey='id';
    protected $fillable =['id','record_id','money','updated_at','created_at'];

   public function record(){
       return $this->belongsTo("App\Models\Record");
   }

}
