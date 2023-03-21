<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Traits\HasRoles;
class Admin extends Authenticatable
{
    use HasFactory,Notifiable, HasRoles;

    public $table = "admins";

    protected $fillable = [
        'name', 'email', 'password','staff_id','therapist_id','phone','username','image','status','position'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function doctors()
    {
        return $this->hasMany('App\Model\Doctor');
    }

    public function walk_by_patients()
    {
        return $this->hasMany('App\Model\WalkByPatient');
    }


    public function patients()
    {
        return $this->hasMany('App\Model\Patient');
    }


    public function patient_admits()
    {
        return $this->hasMany('App\Model\PatientAdmit');
    }


    public function doctor_appointments()
    {
        return $this->hasMany('App\Model\DoctorAppointment');
    }

    public function therapy_appointments()
    {
        return $this->hasMany('App\Model\TherapyAppointment');
    }

    public function staff()
    {
        return $this->hasMany('App\Model\Staff');
    }



    public function therapists()
    {
        return $this->hasMany('App\Model\Therapist');
    }





    public static function getpermissionGroups()
    {
        $permission_groups = DB::table('permissions')
            ->select('group_name as name')
            ->groupBy('group_name')
            ->get();
        return $permission_groups;
    }

    public static function getpermissionsByGroupName($group_name)
    {
        $permissions = DB::table('permissions')
            ->select('name', 'id')
            ->where('group_name', $group_name)
            ->get();
        return $permissions;
    }

    public static function roleHasPermissions($role, $permissions)
    {
        $hasPermission = true;
        foreach ($permissions as $permission) {
            if (!$role->hasPermissionTo($permission->name)) {
                $hasPermission = false;
                return $hasPermission;
            }
        }
        return $hasPermission;
    }
}
