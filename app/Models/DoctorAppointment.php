<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DoctorAppointment extends Model
{
    use HasFactory;

    protected $fillable = [
        'admin_id', 'patient_id', 'doctor_id','appointment_date','patient_type','serial_number'
    ];

    public function admin()
    {
        return $this->belongsTo('App\Models\Admin');
    }



    public function doctor()
    {
        return $this->belongsTo('App\Models\Doctor');
    }
}
