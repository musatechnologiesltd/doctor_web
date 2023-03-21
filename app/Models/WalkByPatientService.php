<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WalkByPatientService extends Model
{
    use HasFactory;

    protected $fillable = [
        'walk_by_patient_id', 'name', 'detail'
    ];

    public function walk_by_patient()
    {
        return $this->belongsTo('App\Model\WalkByPatient');
    }
}
