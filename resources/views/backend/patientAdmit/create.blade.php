@extends('backend.master.master')

@section('title')
Create  Patient | {{ $ins_name }}
@endsection


@section('body')
<div class="page-content">
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Admit Patient Information</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                            <li class="breadcrumb-item active">Admit Patient</li>
                        </ol>
                    </div>

                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header align-items-center d-flex">
                        <h4 class="card-title mb-0 flex-grow-1">Basic Information</h4>
                    </div><!-- end card header -->
                    <div class="card-body">
                        <div class="live-preview">
                            <div class="row gy-4">
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Patient</label>
                                        <select class="form-control" name="" id="patientType">
                                            <option value="New">New</option>
                                            <option value="Already Registered">Already Registered</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div id="forNewPatient">
                                        <label for="" class="form-label">Patient ID</label>
                                        <input type="number" class="form-control" id="" value="<?php echo date('dmy').time(); ?>" >
                                    </div>

                                    <div id="forOldPatient">
                                        <label for="" class="form-label">Patient ID</label>
                                        <select class="form-control" name="" id="">
                                            <option >--Please Select-----</option>
                                            @foreach($patientList as $allPatientList)
                                            <option value="{{ $allPatientList->patient_id }}">{{ $allPatientList->patient_id }}</option>
                                         @endforeach
                                        </select>
                                    </div>

                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Name</label>
                                        <input type="text" class="form-control" id="" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Age</label>
                                        <input type="text" class="form-control" id="" placeholder="Age">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Gender</label>
                                        <select class="form-control" name="" id="">
                                            <option value="">Male</option>
                                            <option value="">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Address</label>
                                        <input type="text" class="form-control" id="" placeholder="Address">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Email Address</label>
                                        <input type="email" class="form-control" id=""
                                               placeholder="Email Address">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Phone/Mobile Number</label>
                                        <input type="email" class="form-control" id=""
                                               placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">National ID Number</label>
                                        <input type="email" class="form-control" id=""
                                               placeholder="National ID Number">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Nationality</label>
                                        <input type="text" class="form-control" id="" placeholder="Nationality">
                                    </div>
                                </div>

                                <div class="col-xxl-12 col-md-12">
                                    <div>
                                        <label for="" class="form-label">Type of accommodation</label>
                                        <textarea class="form-control" id="" rows="3"
                                                  style="height: 101px;"></textarea>
                                    </div>
                                </div>
                                <div class="col-xxl-12 col-md-12">
                                    <div>
                                        <label for="" class="form-label">Recommended doctor name  </label>
                                        <select class="js-example-basic-single form-control" name="state">
                                            <option>--Please Select --</option>
                                            @foreach($doctorList as $allDoctorList)
                                            <option value="{{ $allDoctorList->id }}">{{ $allDoctorList->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12" style="margin-bottom: -20px !important;">
                                    <h6 class="fs-14 text-muted">Duration of stay</h6>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Start Date</label>
                                        <input type="date" class="form-control" id="" placeholder="Nationality">
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">End Date</label>
                                        <input type="date" class="form-control" id="" placeholder="Nationality">
                                    </div>
                                </div>
                                <div class="col-xxl-12 col-md-12">
                                    <div>
                                        <label for="" class="form-label">Treatment package name </label>
                                        <select class="js-example-basic-multiple" name="states[]" multiple="multiple">
                                            @foreach($therapyLists as $alltherapyLists)
                                            <option value="{{ $alltherapyLists->id }}">{{ $alltherapyLists->name }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>
                                <div class="col-xxl-6 col-md-6">
                                    <div>
                                        <label for="" class="form-label">Routine</label>
                                        <input type="file" class="form-control" id="" placeholder="doc">
                                    </div>
                                </div>

                                <!--end col-->
                            </div>
                            <!--end row-->
                        </div>
                    </div>
                </div>
            </div>
            <!--end col-->
        </div>
        <!--end row-->

        <div class="text-end mb-3">
            <button type="submit" class="btn btn-primary w-sm" onclick="location.href='profile.php'">Submit</button>
        </div>
    </div>

    <!-- End Page-content -->


@endsection

@section('script')
<script>
    $(document).ready(function () {
    $('#form').validate({ // initialize the plugin

    });

    //patient type code


    $(function() {
    $('#forOldPatient').hide();
    $('#patientType').change(function(){
        if($('#patientType').val() == 'Already Registered') {
            $('#forOldPatient').show();
            $('#forNewPatient').hide();
        } else {
            $('#forOldPatient').hide();
            $('#forNewPatient').show();
        }
    });
});



 

    //patient type code
});
</script>

@endsection
