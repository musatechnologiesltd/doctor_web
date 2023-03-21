<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TherapyAppointment extends Model
{
    use HasFactory;

    protected $fillable = [
        'admin_id', 'patient_id'
    ];

    public function admin()
    {
        return $this->belongsTo('App\Model\Admin');
    }



    public function therapy_appointment_date_and_times()
    {
        return $this->hasMany('App\Model\TherapyAppointmentDateAndTime');
    }

    public function therapy_appointment_details()
    {
        return $this->hasMany('App\Model\TherapyAppointmentDetail');
    }
}
