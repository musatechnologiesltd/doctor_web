<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyAppointmentDateAndTime extends Model
{
    use HasFactory;

    protected $fillable = [
        'therapy_appointment_id', 'therapist','therapy','date','start_time','end_time',
    ];

    public function therapy_appointment()
    {
        return $this->belongsTo('App\Model\TherapyAppointment');
    }
}
