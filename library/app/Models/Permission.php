<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    use HasFactory;


    protected $table='permission';
    protected $primaryKey='id';
    protected $fillable =['id','permission'];
    public $timestamps=false;


    public function roles()
    {
        return $this->belongsToMany('App\Models\Role','role_permission','permission_id','role_id');
    }
}
