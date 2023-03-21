<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyIngredient extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function therapy_details()
    {
        return $this->belongsToMany('App\Model\TherapyDetail')->withTimestamps();
    }


}
