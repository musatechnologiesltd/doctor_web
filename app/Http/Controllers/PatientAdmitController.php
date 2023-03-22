<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\PatientAdmit;
use App\Models\Patient;
use App\Models\TherapyList;
use App\Models\Doctor;

class PatientAdmitController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }



    public function index(){


        if (is_null($this->user) || !$this->user->can('PatientAdmitView')) {
            abort(403, 'Sorry !! You are Unauthorized to View !');
               }

          $patientAdmitList = PatientAdmit::latest()->get();



               return view('backend.patientAdmit.index',compact('patientAdmitList'));
           }


    public function create(){
 if (is_null($this->user) || !$this->user->can('PatientAdmitAdd')) {
            abort(403, 'Sorry !! You are Unauthorized to Add !');
        }
        $patientList = Patient::latest()->get();
        $doctorList = Doctor::latest()->get();
        $therapyLists = TherapyList::latest()->get();
        return view('backend.patientAdmit.create',compact('doctorList','therapyLists','patientList'));
    }
}
