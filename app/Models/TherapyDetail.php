<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyDetail extends Model
{
    use HasFactory;

    protected $fillable = [
        'therapy_list_id','therapy_ingredient_id','quantity','unit'
    ];


    public function therapy_list()
    {
        return $this->belongsTo('App\Model\TherapyList');
    }

    public function therapy_ingredients()
    {
        return $this->belongsToMany('App\Model\TherapyIngredient')->withTimestamps();
    }
}
