 @php
     $usr = Auth::guard('admin')->user();
 @endphp


@include('backend.include.header');

<!-- removeNotificationModal -->
<div id="removeNotificationModal">
</div><!-- /.modal -->
<!-- ========== App Menu ========== -->
<div class="app-menu navbar-menu">
    <!-- LOGO -->
    <div class="navbar-brand-box">
        <!-- Dark Logo-->
        <a href="index.html" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="{{ asset('/') }}{{ $logo }}" alt="" height="22">
                    </span>
            <span class="logo-lg">
                        <img src="{{ asset('/') }}{{ $logo }}" alt="" height="17">
                    </span>
        </a>
        <!-- Light Logo-->
        <a href="index.html" class="logo logo-light">
                    <span class="logo-sm">
                        <img src="{{ asset('/') }}{{ $logo }}" alt="" height="22">
                    </span>
            <span class="logo-lg">
                        <img src="{{ asset('/') }}{{ $logo }}" alt="" height="17">
                    </span>
        </a>
        <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover"
                id="vertical-hover">
            <i class="ri-record-circle-line"></i>
        </button>
    </div>

    <div id="scrollbar">
        <div class="container-fluid">

            <div id="two-column-menu">
            </div>
            <ul class="navbar-nav" id="navbar-nav">
                <li class="menu-title"><span data-key="t-menu">Dashboard</span></li>
                <li class="nav-item">
                    <a class="nav-link menu-link  {{ Route::is('admin.dashboard') ? 'active' : '' }}" href="{{ route('admin.dashboard') }}">
                        <i class="ri-dashboard-2-line"></i> <span data-key="t-widgets">Dashboard</span>
                    </a>
                </li>

                <li class="menu-title"><span data-key="t-menu">Reception</span></li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#patient" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarLanding">
                        <i class="ri-apps-2-line"></i> <span data-key="t-landing">Patient</span>
                    </a>
                    <div class="collapse menu-dropdown" id="patient">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="walk_by_patient.php" class="nav-link" data-key="t-one-page">Walk By Patient</a>
                            </li>
                            <li class="nav-item">
                                <a href="patient_list.php" class="nav-link" data-key="t-nft-landing"> Patient </a>
                            </li>
                            <li class="nav-item">
                                <a href="admit_patient_list.php" class="nav-link" data-key="t-nft-landing">Patient Admit</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#doctorAppointment" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarLanding">
                        <i class="ri-baidu-fill"></i> <span data-key="t-landing">Doctor Appointment</span>
                    </a>
                    <div class="collapse menu-dropdown" id="doctorAppointment">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="doct_appointment_create.php" class="nav-link" data-key="t-one-page">Add New Doctor Appointment</a>
                            </li>
                            <li class="nav-item">
                                <a href="appointment_list.php" class="nav-link" data-key="t-nft-landing"> Appointment List </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#therapyAppointment" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarLanding">
                        <i class="bx bx-receipt"></i> <span data-key="t-landing">Therapy Appointment</span>
                    </a>
                    <div class="collapse menu-dropdown" id="therapyAppointment">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="therapy_appointment.php" class="nav-link" data-key="t-one-page">Add New Therapy Appointment</a>
                            </li>
                            <li class="nav-item">
                                <a href="therapy_appointment_list.php" class="nav-link" data-key="t-nft-landing"> Therapy Appointment List </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#sidebarTables" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarTables">
                        <i class="ri-layout-grid-line"></i> <span data-key="t-tables">Billing</span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarTables">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="billing_list.php" class="nav-link" data-key="t-basic-tables">Billing List</a>
                            </li>
                            <li class="nav-item">
                                <a href="revised_bill_quotation.php" class="nav-link" data-key="t-grid-js">Revised Bill Quotation</a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="menu-title"><span data-key="t-menu">Doctor Section</span></li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#doctorWaiting" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarTables">
                        <i class="ri-hail-line"></i> <span data-key="t-tables">Doctor Attend</span>
                    </a>
                    <div class="collapse menu-dropdown" id="doctorWaiting">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="doctor_waiting_list.php" class="nav-link" data-key="t-basic-tables">Doctor Waiting List</a>
                            </li>
                            <li class="nav-item">
                                <a href="doctor_prescription_list.php" class="nav-link" data-key="t-grid-js">Patient Prescription List</a>
                            </li>
                        </ul>
                    </div>
                </li>

                @if ($usr->can('doctorAdd') || $usr->can('doctorView') ||  $usr->can('doctorDelete') ||  $usr->can('doctorUpdate'))
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#doctorList" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarTables">
                        <i class="ri-hail-line"></i> <span data-key="t-tables">Doctor List</span>
                    </a>
                    <div class="collapse menu-dropdown" id="doctorList">
                        <ul class="nav nav-sm flex-column">
                            @if ($usr->can('doctorAdd'))
                            <li class="nav-item">
                                <a href="{{ route('doctorCreate') }}" class="nav-link {{ Route::is('doctorCreate')  ? 'active' : '' }}" data-key="t-basic-tables">Add New Doctor</a>
                            </li>
                            @endif
                            @if ( $usr->can('doctorView') ||  $usr->can('doctorDelete') ||  $usr->can('doctorUpdate'))
                            <li class="nav-item">
                                <a href="{{ route('doctorList') }}" class="nav-link {{ Route::is('doctorCreate') || Route::is('doctorEdit') ? 'active' : '' }}" data-key="t-grid-js">Doctor List</a>
                            </li>
                            @endif
                        </ul>
                    </div>
                </li>
                @endif


                <li class="nav-item">
                    <a class="nav-link menu-link" href="#prescriptionList" data-bs-toggle="collapse" role="button"
                       aria-expanded="false" aria-controls="sidebarTables">
                        <i class="ri-landscape-line"></i> <span data-key="t-tables">Prescription Equipment </span>
                    </a>
                    <div class="collapse menu-dropdown" id="prescriptionList">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="diet_chart_list.php" class="nav-link" data-key="t-basic-tables">Diet Chart</a>
                            </li>
                            <li class="nav-item">
                                <a href="medicine_list.php" class="nav-link" data-key="t-grid-js">Medicine List</a>
                            </li>
                            <li class="nav-item">
                                <a href="suppliment_list.php" class="nav-link" data-key="t-grid-js">Health Supplement</a>
                            </li>
                            <li class="nav-item">
                                <a href="therapy_list.php" class="nav-link" data-key="t-grid-js">Therapy List</a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="menu-title"><span data-key="t-menu">HR Section</span></li>

                <li class="nav-item">
                    <a class="nav-link menu-link" href="staff_list.php">
                        <i class="ri-align-justify"></i> <span data-key="t-widgets">Staff</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="reward_point.php">
                        <i class="ri-paypal-fill"></i> <span data-key="t-widgets">Reward</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="therapist_list.php">
                        <i class="ri-barricade-fill"></i> <span data-key="t-widgets">Therapist</span>
                    </a>
                </li>

                <li class="menu-title"><span data-key="t-menu">Setting</span></li>


                @if (Route::is('admin.system_information') ||  Route::is('admin.admins') || Route::is('admin.admins.create') || Route::is('admin.admins.edit') || Route::is('admin.roles') || Route::is('admin.roles.create') || Route::is('admin.roles.edit')|| Route::is('admin.permission') || Route::is('admin.permission.create') || Route::is('admin.permission.edit'))


                @if ($usr->can('system_information_add') || $usr->can('system_information_view') ||  $usr->can('system_information_update') ||  $usr->can('system_information_delete'))
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#sidebarIcons" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarIcons">
                        <i class="ri-settings-2-fill"></i> <span data-key="t-icons">System Setting</span>
                    </a>
                    <div class="collapse menu-dropdown show" id="sidebarIcons">
                        <ul class="nav nav-sm flex-column">


                            @if ($usr->can('system_information_add') || $usr->can('system_information_view') ||  $usr->can('system_information_update') ||  $usr->can('system_information_delete'))
                            <li class="nav-item"><a data-key="t-remix" href="{{ route('admin.system_information') }}" class="nav-link {{ Route::is('admin.system_information')  ? 'active' : '' }}"> <span>System Information</span> </a></li>

                    @endif


                    @if ($usr->can('admin.create') || $usr->can('admin.view') ||  $usr->can('admin.edit') ||  $usr->can('admin.delete'))
                    <li class="nav-item">
                    <a data-key="t-boxicons" href="{{ route('admin.admins') }}" class=" nav-link {{ Route::is('admin.admins') || Route::is('admin.admins.create') || Route::is('admin.admins.edit') ? 'active' : '' }}"><span>User</span> </a>
                    </li>

                    @endif


                       @if ($usr->can('role.create') || $usr->can('role.view') ||  $usr->can('role.edit') ||  $usr->can('role.delete'))
                            <li class="nav-item"><a data-key="t-material-design" href="{{ route('admin.roles') }}" class=" nav-link {{ Route::is('admin.roles') || Route::is('admin.roles.create') || Route::is('admin.roles.edit') ? 'active' : '' }}"> <span>Role List</span> </a></li>

                    @endif
                       @if ($usr->can('permission.create') || $usr->can('permission.view') ||  $usr->can('permission.edit') ||  $usr->can('permission.delete'))
                         <li class="nav-item">
                                <a data-key="t-line-awesome" href="{{ route('admin.permission') }}" class=" nav-link {{ Route::is('admin.permission') || Route::is('admin.permission.create') || Route::is('admin.permission.edit') ? 'active' : '' }}"><span>Permission</span> </a>
                            </li>
                    @endif

                        </ul>
                    </div>
                </li>
                @endif


                @else


                @if ($usr->can('system_information_add') || $usr->can('system_information_view') ||  $usr->can('system_information_update') ||  $usr->can('system_information_delete'))
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#sidebarIcons" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarIcons">
                        <i class="ri-settings-2-fill"></i> <span data-key="t-icons">System Setting</span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarIcons">
                        <ul class="nav nav-sm flex-column">


                            @if ($usr->can('system_information_add') || $usr->can('system_information_view') ||  $usr->can('system_information_update') ||  $usr->can('system_information_delete'))
                            <li class="nav-item"><a data-key="t-remix" href="{{ route('admin.system_information') }}" class="nav-link {{ Route::is('admin.system_information')  ? 'active' : '' }}"> <span>System Information</span> </a></li>

                    @endif


                    @if ($usr->can('admin.create') || $usr->can('admin.view') ||  $usr->can('admin.edit') ||  $usr->can('admin.delete'))
                    <li class="nav-item">
                    <a data-key="t-boxicons" href="{{ route('admin.admins') }}" class=" nav-link {{ Route::is('admin.admins') || Route::is('admin.admins.create') || Route::is('admin.admins.edit') ? 'active' : '' }}"><span>User</span> </a>
                    </li>

                    @endif


                       @if ($usr->can('role.create') || $usr->can('role.view') ||  $usr->can('role.edit') ||  $usr->can('role.delete'))
                            <li class="nav-item"><a data-key="t-material-design" href="{{ route('admin.roles') }}" class=" nav-link {{ Route::is('admin.roles') || Route::is('admin.roles.create') || Route::is('admin.roles.edit') ? 'active' : '' }}"> <span>Role List</span> </a></li>

                    @endif
                       @if ($usr->can('permission.create') || $usr->can('permission.view') ||  $usr->can('permission.edit') ||  $usr->can('permission.delete'))
                         <li class="nav-item">
                                <a data-key="t-line-awesome" href="{{ route('admin.permission') }}" class=" nav-link {{ Route::is('admin.permission') || Route::is('admin.permission.create') || Route::is('admin.permission.edit') ? 'active' : '' }}"><span>Permission</span> </a>
                            </li>
                    @endif

                        </ul>
                    </div>
                </li>
                @endif
                @endif
            </ul>
        </div>
        <!-- Sidebar -->
    </div>

    <div class="sidebar-background"></div>
</div>
<!-- Left Sidebar End -->
<!-- Vertical Overlay-->
<div class="vertical-overlay"></div>
