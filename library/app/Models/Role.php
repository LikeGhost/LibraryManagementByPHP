<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    protected $table='role';
    protected $primaryKey='id';
    protected $fillable =['id','role'];
    public $timestamps=false;

    public function users()
    {
        return $this->belongsToMany('App\Models\User','role_user','role_id','user_id');
    }

    public function permissions()
    {
        return $this->belongsToMany('App\Models\Permission','role_permission','role_id','permission_id');
    }

}
