<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Doctor extends Model
{
    use HasFactory;


    protected $fillable = [
        'admin_id', 'name', 'address','gender','email_address','phone_or_mobile_number','nid_number','nationality','years_of_experience','doctor_certificate',
    ];

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }

    public function patient_admits()
    {
        return $this->hasMany('App\Models\PatientAdmit');
    }

    public function doctor_appointments()
    {
        return $this->hasMany('App\Models\DoctorAppointment');
    }

    public function doctor_consult_dates()
    {
        return $this->hasMany('App\Models\DoctorConsultDate');
    }
}
