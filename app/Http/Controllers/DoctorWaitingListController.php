<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\Doctor;
use App\Models\Patient;
use App\Models\WalkByPatient;
use App\Models\DoctorAppointment;
use App\Models\PatientHistory;
class DoctorWaitingListController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }



    public function doctorWaitingList(){


        if (is_null($this->user) || !$this->user->can('doctorWaitingListView')) {
            abort(403, 'Sorry !! You are Unauthorized to View !');
               }

          $doctorWaitingList = DoctorAppointment::where('appointment_date',date('Y-m-d'))->where('status','=',null)->latest()->get();



               return view('backend.doctorWaitingListView.index',compact('doctorWaitingList'));
           }


           public function addPatientHistory($id){

             $doctorWaitingList = DoctorAppointment::where('id',$id)->first();
             $walkByPatientList = WalkByPatient::where('patient_reg_id',$doctorWaitingList->patient_id)->get();



             if(count($walkByPatientList) == 0){

               $patientList = Patient::where('patient_id',$doctorWaitingList->patient_id)->first();
               $patientType = "Patient";

             }else{
                $patientList = WalkByPatient::where('patient_reg_id',$doctorWaitingList->patient_id)->first();
                $patientType = "Walk By Patient";
             }

             $getPatientHistoryData = PatientHistory::where('doctor_appointment_id',$id)->value('admin_id');

              if(empty($getPatientHistoryData)){

                $finalGetData = 0;

              }else{

                $finalGetData = PatientHistory::where('doctor_appointment_id',$id)->first;
              }


            return view('backend.doctorWaitingListView.addPatientHistory',compact('doctorWaitingList','patientList','patientType','getPatientHistoryData','finalGetData'));

           }
}
