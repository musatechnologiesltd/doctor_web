<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyList extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];


    public function therapy_details()
    {
        return $this->hasMany('App\Model\TherapyDetail');
    }


}
