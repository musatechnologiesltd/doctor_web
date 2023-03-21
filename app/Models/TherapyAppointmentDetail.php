<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyAppointmentDetail extends Model
{
    use HasFactory;

    protected $fillable = [
        'therapy_appointment_id', 'therapy_name','name','amount'
    ];

    public function therapy_appointment()
    {
        return $this->belongsTo('App\Model\TherapyAppointment');
    }
}
