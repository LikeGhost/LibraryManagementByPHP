<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RealBook extends Model
{

    use HasFactory,SoftDeletes;

    protected $table='real_book';
    protected $primaryKey='id';
    protected $fillable =['id','book_id','book_status_id','put_time','library_id'];
    public $timestamps=false;
    protected $attributes = [
        'library_id' => 1,

    ];


    public function book()
    {
        return $this->belongsTo('App\Models\Book');
    }
}
