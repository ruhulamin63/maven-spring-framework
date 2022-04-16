<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/16/2022
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/WEB-INF/view/admin/layout/head/adminHead.jsp" %>
<%@include file="/WEB-INF/view/admin/layout/sidebar/adminSideBar.jsp" %>

    <!--begin::Main-->
    <div class="d-flex flex-column flex-root">
        <!--begin::Page-->
        <div class="page d-flex flex-row flex-column-fluid">
            <!--begin::Wrapper-->
            <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
                <!--begin::Content-->
                <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                    <!--begin::Toolbar-->
                    <div class="toolbar" id="kt_toolbar">
                        <!--begin::Container-->
                        <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
                            <!--begin::Page title-->
                            <div class="d-flex align-items-center me-3">
                                <!--begin::Title-->
                                <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">Dashboard
                                    <!--begin::Separator-->
                                    <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
                                    <!--end::Separator-->
                                    <!--begin::Description-->
                                    <small class="text-muted fs-7 fw-bold my-1 ms-1">#All View</small>
                                    <!--end::Description--></h1>
                                <!--end::Title-->
                            </div>
                            <!--end::Page title-->
                        </div>
                        <!--end::Container-->
                    </div>
                    <!--end::Toolbar-->
                    <!--begin::Post-->
                    <div class="row col-md-12">
                        <div class="col-md-9">

                            <!--begin::Post-->
                            <div class="post d-flex flex-column-fluid" id="kt_post_c">
                                <!--begin::Container-->
                                <div id="kt_content_container_c" class="container">
                                    <!--begin::Row-->
                                    <div class="row gy-5 gx-xl-8">
                                        <!--begin::Col-->
                                        <div class="col-xl-12">
                                            <!--begin::Tables Widget 9-->
                                            <div class="card card-xxl-stretch mb-5 mb-xl-8">
                                                <!--begin::Modal header-->
                                                <div class="modal-header" id="kt_modal_new_address_header_c">
                                                    <div class="row col-md-12">
                                                        <div class="col-md-3">
                                                            <!--begin::Col-->
                                                            <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7" style="background-color:#FF5F7E;">
                                                                <!--begin::Svg Icon | path: icons/stockholm/Communication/Add-user.svg-->
                                                                <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2" style="color: white !important;">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                                                                        <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                                                                        <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
                                                                                        <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                                                                    </svg>
                                                                                </span>
                                                                <!--end::Svg Icon-->
                                                                <a href="#" class="text-primary fw-bold fs-6" style="color: white !important;">Total Member</a>
                                                                <span class="text-dark fw-bold text-dark d-block fs-1" style="color: white !important;">{{$counts}}</span>
                                                            </div>
                                                            <!--end::Col-->
                                                        </div>

                                                        <div class="col-md-3">
                                                            <!--begin::Col-->
                                                            <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7" style="background-color:#009EF7;">
                                                                <!--begin::Svg Icon | path: icons/stockholm/Communication/Add-user.svg-->
                                                                <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2" style="color: white !important;">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16">
                                                                                        <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                                                                        <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
                                                                                    </svg>
                                                                                </span>
                                                                <!--end::Svg Icon-->
                                                                <a href="#" class="text-primary fw-bold fs-6" style="color: white !important;">New Member</a>
                                                                <span class="text-dark fw-bold text-dark d-block fs-1" style="color: white !important;">{{$new_members}}</span>
                                                            </div>
                                                            <!--end::Col-->
                                                        </div>

                                                        <div class="col-md-3">
                                                            <!--begin::Col-->
                                                            <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7" style="background-color:#2F86A6;">
                                                                <!--begin::Svg Icon | path: icons/stockholm/Communication/Add-user.svg-->
                                                                <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2" style="color: white !important;">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
                                                                                        <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
                                                                                    </svg>
                                                                                </span>
                                                                <!--end::Svg Icon-->
                                                                <a href="#" class="text-primary fw-bold fs-6" style="color: white !important;">Total Income</a>
                                                                <span class="text-dark fw-bold text-dark d-block fs-1" style="color: white !important;">৳ {{$total_income}}</span>
                                                            </div>
                                                            <!--end::Col-->
                                                        </div>
                                                        <div class="col-md-3">
                                                            <!--begin::Col-->
                                                            <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7" style="background-color:#B91646;">
                                                                <!--begin::Svg Icon | path: icons/stockholm/Communication/Add-user.svg-->
                                                                <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2" style="color: white !important;">
                                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-coin" viewBox="0 0 16 16">
                                                                                        <path fill-rule="evenodd" d="M11 15a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm5-4a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
                                                                                        <path d="M9.438 11.944c.047.596.518 1.06 1.363 1.116v.44h.375v-.443c.875-.061 1.386-.529 1.386-1.207 0-.618-.39-.936-1.09-1.1l-.296-.07v-1.2c.376.043.614.248.671.532h.658c-.047-.575-.54-1.024-1.329-1.073V8.5h-.375v.45c-.747.073-1.255.522-1.255 1.158 0 .562.378.92 1.007 1.066l.248.061v1.272c-.384-.058-.639-.27-.696-.563h-.668zm1.36-1.354c-.369-.085-.569-.26-.569-.522 0-.294.216-.514.572-.578v1.1h-.003zm.432.746c.449.104.655.272.655.569 0 .339-.257.571-.709.614v-1.195l.054.012z"/>
                                                                                        <path d="M1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4.083c.058-.344.145-.678.258-1H3a2 2 0 0 0-2-2V3a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2v3.528c.38.34.717.728 1 1.154V1a1 1 0 0 0-1-1H1z"/>
                                                                                        <path d="M9.998 5.083 10 5a2 2 0 1 0-3.132 1.65 5.982 5.982 0 0 1 3.13-1.567z"/>
                                                                                    </svg>
                                                                                </span>
                                                                <!--end::Svg Icon-->
                                                                <a href="#" class="text-primary fw-bold fs-6" style="color: white !important;">Monthly</a>
                                                                <span class="text-dark fw-bold text-dark d-block fs-1" style="color: white !important;">৳ {{$monthly_income}}</span>
                                                            </div>
                                                            <!--end::Col-->
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end::Modal header-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--begin::Post-->

                            <!--begin::Post-->
                            <div class="post d-flex flex-column-fluid" id="kt_post_ch">
                                <!--begin::Container-->
                                <div id="kt_content_container_ch" class="container">
                                    <!--begin::Row-->
                                    <div class="row gy-5 gx-xl-8">
                                        <!--begin::Col-->
                                        <div class="col-xl-12">
                                            <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                                                <!--begin::Header-->
                                                <div class="card-header border-0 pt-5">
                                                    <h3 class="card-title align-items-start flex-column">
                                                        <span class="card-label fw-bolder fs-3 mb-1">Member Growth</span>
                                                        <span class="text-muted fw-bold fs-7">Overall Members</span>
                                                    </h3>
                                                    <!--begin::Toolbar-->
                                                    <!-- <div class="card-toolbar" data-kt-buttons="true">
                                                        <a class="btn btn-sm btn-color-muted btn-active btn-active-primary active px-4 me-1" id="kt_charts_widget_2_year_btn">Year</a>
                                                        <a class="btn btn-sm btn-color-muted btn-active btn-active-primary px-4 me-1" id="kt_charts_widget_2_month_btn">Month</a>
                                                        <a class="btn btn-sm btn-color-muted btn-active btn-active-primary px-4" id="kt_charts_widget_2_week_btn">Week</a>
                                                    </div> -->
                                                    <!--end::Toolbar-->
                                                </div>
                                                <!--end::Header-->

                                                <div class="col-md-12">
                                                    <div class="card">
                                                        <div class="card-header d-flex align-items-center">
                                                            <h4	h4>Monthly Appointment Report</h4>
                                                        </div>

                                                        <div class="card-body">
                                                            <canvas id="adminChart" data-profit_chart_value = "{{json_encode($net_profit)}}" data-customer_chart_value = "{{json_encode($appointment_count)}}" data-label1="Appointment" data-label2="Net Profit"></canvas>


                                                        </div>
                                                    </div>
                                                </div>

                                                <!--begin::Body-->
                                                <!-- <div class="card-body"> -->
                                                <!--begin::Chart-->
                                                <!-- <div id="kt_charts_widget_1_chart" data-sale_chart_value = "" data-purchase_chart_value = "" style="height: 350px"></div> -->
                                                <!--end::Chart-->

                                                <!-- <div class="row">
                                                    <div class="col-xl-13">
                                                        <div class="card mb-12">
                                                            <div class="card-header">
                                                                <i class="fas fa-chart-area me-1"></i>
                                                                <h4>Register Chart</h4>
                                                            </div>
                                                            <div class="card-body">
                                                                <canvas id="myAreaChart" data-register = "" data-label1="Register" ></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> -->

                                                <div class="col-md-12">
                                                    <div class="card">
                                                        <div class="card-header d-flex align-items-center">
                                                            <h4	h4>Monthly Register Report</h4>
                                                        </div>

                                                        <div class="card-body">
                                                            <canvas id="myRegisterChart" data-register = "" data-label1="Register" ></canvas>


                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- </div> -->
                                                <!--end::Body-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--begin::Post-->


                            <!--begin::Post-->
                            <div class="post d-flex flex-column-fluid" id="kt_post_cha">
                                <!--begin::Container-->
                                <div id="kt_content_container_cha" class="container">
                                    <!--begin::Row-->
                                    <div class="row gy-5 gx-xl-8">
                                        <!--begin::Col-->
                                        <div class="col-xl-12">
                                            <!--begin::Today Appointment body-->
                                            <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                                                <!--begin::Card header-->
                                                <div class="card-header">
                                                    <h3 class="card-title align-items-start flex-column">
                                                        <span class="text-dark fw-bolder text-hover-primary fs-6"><h4>Today Appointment</h4></span>
                                                        <span class="text-muted mt-1 fw-bold fs-7">All Appointment List Information</span>
                                                    </h3>
                                                </div>
                                                <!--end::Card header-->

                                                <!--begin::Body-->
                                                <div class="card-body py-3">
                                                    <!--begin::Table container-->
                                                    <div class="card-body">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover table-condensed" id="today-appointments-table">
                                                                <thead>
                                                                <tr style="background-color: #E74C3C; color:white !important">
                                                                    <!-- <th><input type="checkbox" name="main_checkbox"><label></label></th> -->
                                                                    <!-- <th style="text-align: center;" class="min-w-100px">#</th> -->
                                                                    <th style="text-align: center;" class="min-w-100px">Name</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Membership</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Mobile</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Amount</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Percentage</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Service Type</th>
                                                                    <!-- <th style="text-align: center;" class="min-w-100px">Bike Color</th> -->
                                                                    <th style="text-align: center;" class="min-w-100px">Bike Model</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Date</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Time</th>
                                                                    <th style="text-align: center;" class="min-w-100px">User Type</th>
                                                                    <th style="text-align: center;" class="min-w-100px">Status</th>
                                                                </tr>
                                                                </thead>

                                                                <tbody></tbody>


                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end::Body-->
                                            </div>
                                            <!--end::Today Appointment body-->
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="post d-flex flex-column-fluid" id="kt_post">
                                <!--begin::Container-->
                                <div id="kt_content_container" class="container">
                                    <!--begin::Row-->
                                    <div class="row gy-5 gx-xl-8">
                                        <!--begin::Col-->
                                        <div class="col-xl-12">
                                            <div class="card card-xxl-stretch mb-5 mb-xl-8">
                                                <!--begin::Card header-->
                                                <div class="card-header">
                                                    <h3 class="card-title align-items-start flex-column">
                                                        <span class="card-label fw-bolder text-dark">My Calendar</span>
                                                        <span class="text-muted mt-1 fw-bold fs-7">Preview monthly events</span>
                                                    </h3>
                                                    <div class="card-toolbar">
                                                        <a href="#" class="btn btn-primary">Add Member Schedule</a>
                                                    </div>
                                                </div>
                                                <!--end::Card header-->
                                                <!--begin::Card body-->
                                                <div class="card-body">
                                                    <!--begin::Calendar-->
                                                    <div id="kt_calendar_widget_1"></div>
                                                    <!--end::Calendar-->
                                                </div>
                                                <!--end::Card body-->

                                                <!--begin::Card-->
                                                <div class="card card-flush h-lg-100">
                                                    <!--begin::Card body-->
                                                    <div class="card-body p-9 pt-4">
                                                        <!--begin::Dates-->
                                                        <ul class="nav nav-pills d-flex flex-nowrap hover-scroll-x py-2">
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary" data-bs-toggle="tab" href="#kt_schedule_day_0">
                                                                    <span class="opacity-50 fs-7 fw-bold">Su</span>
                                                                    <span class="fs-6 fw-bolder">22</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary active" data-bs-toggle="tab" href="#kt_schedule_day_1">
                                                                    <span class="opacity-50 fs-7 fw-bold">Mo</span>
                                                                    <span class="fs-6 fw-bolder">23</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary" data-bs-toggle="tab" href="#kt_schedule_day_2">
                                                                    <span class="opacity-50 fs-7 fw-bold">Tu</span>
                                                                    <span class="fs-6 fw-bolder">24</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary" data-bs-toggle="tab" href="#kt_schedule_day_3">
                                                                    <span class="opacity-50 fs-7 fw-bold">We</span>
                                                                    <span class="fs-6 fw-bolder">25</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary" data-bs-toggle="tab" href="#kt_schedule_day_4">
                                                                    <span class="opacity-50 fs-7 fw-bold">Th</span>
                                                                    <span class="fs-6 fw-bolder">26</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary" data-bs-toggle="tab" href="#kt_schedule_day_5">
                                                                    <span class="opacity-50 fs-7 fw-bold">Fr</span>
                                                                    <span class="fs-6 fw-bolder">27</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                            <!--begin::Date-->
                                                            <li class="nav-item me-1">
                                                                <a class="nav-link btn d-flex flex-column flex-center rounded-pill min-w-45px me-2 py-4 px-3 btn-active-primary" data-bs-toggle="tab" href="#kt_schedule_day_6">
                                                                    <span class="opacity-50 fs-7 fw-bold">Sa</span>
                                                                    <span class="fs-6 fw-bolder">28</span>
                                                                </a>
                                                            </li>
                                                            <!--end::Date-->
                                                        </ul>
                                                        <!--end::Dates-->
                                                        <!--begin::Tab Content-->
                                                        <div class="tab-content">
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_0" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Weekly Team Stand-Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Sean Bean</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">13:00 - 14:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Marketing Campaign Discussion</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Michael Walters</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">13:00 - 14:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Team Backlog Grooming Session</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Terry Robins</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_1" class="tab-pane fade show active">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">14:30 - 15:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Dashboard UI/UX Design Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Kendell Trevor</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Team Backlog Grooming Session</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Terry Robins</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">16:30 - 17:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Lunch &amp; Learn Catch Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Sean Bean</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_2" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">10:00 - 11:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Lunch &amp; Learn Catch Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">David Stevenson</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Project Review &amp; Testing</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Michael Walters</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">16:30 - 17:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">9 Degree Project Estimation Meeting</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Mark Randall</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_3" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">13:00 - 14:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Dashboard UI/UX Design Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Yannis Gloverson</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">13:00 - 14:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Development Team Capacity Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Sean Bean</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">12:00 - 13:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Creative Content Initiative</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Mark Randall</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_4" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">11:00 - 11:45
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Development Team Capacity Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Sean Bean</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">13:00 - 14:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Marketing Campaign Discussion</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Kendell Trevor</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">16:30 - 17:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Lunch &amp; Learn Catch Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Mark Randall</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_5" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Dashboard UI/UX Design Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Naomi Hayabusa</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">10:00 - 11:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Lunch &amp; Learn Catch Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Bob Harris</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">11:00 - 11:45
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Weekly Team Stand-Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Kendell Trevor</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_6" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">12:00 - 13:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Creative Content Initiative</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Sean Bean</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Development Team Capacity Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Karina Clarke</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">12:00 - 13:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Team Backlog Grooming Session</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Caleb Donaldson</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_7" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">13:00 - 14:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Dashboard UI/UX Design Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Karina Clarke</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">16:30 - 17:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Marketing Campaign Discussion</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Kendell Trevor</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">16:30 - 17:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">9 Degree Project Estimation Meeting</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Karina Clarke</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_8" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">10:00 - 11:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Lunch &amp; Learn Catch Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Michael Walters</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">16:30 - 17:30
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Development Team Capacity Review</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Walter White</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Weekly Team Stand-Up</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Bob Harris</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                            <!--begin::Day-->
                                                            <div id="kt_schedule_day_9" class="tab-pane fade show">
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">10:00 - 11:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Committee Review Approvals</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Mark Randall</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">12:00 - 13:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">pm</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Team Backlog Grooming Session</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Michael Walters</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                                <!--begin::Time-->
                                                                <div class="d-flex flex-stack position-relative mt-8">
                                                                    <!--begin::Bar-->
                                                                    <div class="position-absolute h-100 w-4px bg-secondary rounded top-0 start-0"></div>
                                                                    <!--end::Bar-->
                                                                    <!--begin::Info-->
                                                                    <div class="fw-bold ms-5 text-gray-600">
                                                                        <!--begin::Time-->
                                                                        <div class="fs-5">9:00 - 10:00
                                                                            <span class="fs-7 text-gray-400 text-uppercase">am</span></div>
                                                                        <!--end::Time-->
                                                                        <!--begin::Title-->
                                                                        <a href="#" class="fs-5 fw-bolder text-gray-800 text-hover-primary mb-2">Marketing Campaign Discussion</a>
                                                                        <!--end::Title-->
                                                                        <!--begin::User-->
                                                                        <div class="text-gray-400">Lead by
                                                                            <a href="#">Karina Clarke</a></div>
                                                                        <!--end::User-->
                                                                    </div>
                                                                    <!--end::Info-->
                                                                    <!--begin::Action-->
                                                                    <a href="#" class="btn btn-bg-light btn-active-color-primary btn-sm">View</a>
                                                                    <!--end::Action-->
                                                                </div>
                                                                <!--end::Time-->
                                                            </div>
                                                            <!--end::Day-->
                                                        </div>
                                                        <!--end::Tab Content-->
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Card-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-3">
                            <div class="modal-content" style="backgroud-color:#E74C3C;">
                                <div style="margin: auto;">
                                    <div class="progress-pie-chart" style="margin-left: 0px;" data-percent="67"><!--Pie Chart -->
                                        <div class="ppc-progress">
                                            <div class="ppc-progress-fill"></div>
                                        </div>
                                        <div class="ppc-percents">
                                            <div class="pcc-percents-wrapper">
                                                <span>%</span>
                                            </div>
                                        </div>
                                    </div><!--End Chart -->
                                </div>

                                <div style="margin-top: 20px; margin-left:10px">
                                    <div class="menu-item" style="margin-top:20px">
                                                        <span class="menu-icon">
                                                            <!--begin::Svg Icon | path: icons/stockholm/Design/PenAndRuller.svg-->
                                                            <span class="svg-icon svg-icon-primary svg-icon-2x"><!--begin::Svg Icon | path:/var/www/preview.keenthemes.com/keen/releases/2021-04-21-040700/theme/demo2/dist/../src/media/svg/icons/General/Expand-arrows.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                    <polygon points="0 0 24 0 24 24 0 24"/>
                                                                    <path d="M10.5857864,12 L5.46446609,6.87867966 C5.0739418,6.48815536 5.0739418,5.85499039 5.46446609,5.46446609 C5.85499039,5.0739418 6.48815536,5.0739418 6.87867966,5.46446609 L12,10.5857864 L18.1923882,4.39339828 C18.5829124,4.00287399 19.2160774,4.00287399 19.6066017,4.39339828 C19.997126,4.78392257 19.997126,5.41708755 19.6066017,5.80761184 L13.4142136,12 L19.6066017,18.1923882 C19.997126,18.5829124 19.997126,19.2160774 19.6066017,19.6066017 C19.2160774,19.997126 18.5829124,19.997126 18.1923882,19.6066017 L12,13.4142136 L6.87867966,18.5355339 C6.48815536,18.9260582 5.85499039,18.9260582 5.46446609,18.5355339 C5.0739418,18.1450096 5.0739418,17.5118446 5.46446609,17.1213203 L10.5857864,12 Z" fill="#000000" opacity="0.3" transform="translate(12.535534, 12.000000) rotate(-360.000000) translate(-12.535534, -12.000000) "/>
                                                                    <path d="M6,18 L9,18 C9.66666667,18.1143819 10,18.4477153 10,19 C10,19.5522847 9.66666667,19.8856181 9,20 L4,20 L4,15 C4,14.3333333 4.33333333,14 5,14 C5.66666667,14 6,14.3333333 6,15 L6,18 Z M18,18 L18,15 C18.1143819,14.3333333 18.4477153,14 19,14 C19.5522847,14 19.8856181,14.3333333 20,15 L20,20 L15,20 C14.3333333,20 14,19.6666667 14,19 C14,18.3333333 14.3333333,18 15,18 L18,18 Z M18,6 L15,6 C14.3333333,5.88561808 14,5.55228475 14,5 C14,4.44771525 14.3333333,4.11438192 15,4 L20,4 L20,9 C20,9.66666667 19.6666667,10 19,10 C18.3333333,10 18,9.66666667 18,9 L18,6 Z M6,6 L6,9 C5.88561808,9.66666667 5.55228475,10 5,10 C4.44771525,10 4.11438192,9.66666667 4,9 L4,4 L9,4 C9.66666667,4 10,4.33333333 10,5 C10,5.66666667 9.66666667,6 9,6 L6,6 Z" fill="#000000" fill-rule="nonzero"/>
                                                                </g>
                                                            </svg><!--end::Svg Icon-->
                                                        </span>
                                                            <!--end::Svg Icon-->
                                                        </span>
                                        <span class="menu-title"><h4>My Services</h4></span>

                                        <div class="modal-header" id="kt_modal_new_address_header">
                                            <div class="col row-md-12">
                                                <div class="row-md-4">
                                                    <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                                                        <!--begin::Card-->
                                                        <div class="card-body">
                                                            <div class="d-flex justify-content-between">
                                                                <h3>Bike Wash</h3>
                                                                <span class="text-muted">January 2021</span>
                                                            </div>
                                                            <div>
                                                                <p class="text-muted">You have #4 got 40% discount on every month</p>
                                                            </div>
                                                            <div>
                                                                <div class="d-flex justify-content-between">
                                                                    <h3 style="color:#E74C3C;">2 of 4</h3>
                                                                    <span class="text-muted">2 wash left</span>
                                                                </div>
                                                                <div class="progress" style="height: 6px;">
                                                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--end::Card-->
                                                    </div>
                                                </div>

                                                <div class="row-md-4">
                                                    <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                                                        <!--begin::Card-->
                                                        <div class="card-body">
                                                            <div class="d-flex justify-content-between">
                                                                <h3>Bike Wash</h3>
                                                                <span class="text-muted">February 2021</span>
                                                            </div>
                                                            <div>
                                                                <p class="text-muted">You have #4 got 40% discount on every month</p>
                                                            </div>
                                                            <div>
                                                                <div class="d-flex justify-content-between">
                                                                    <h3 style="color:#E74C3C;">2 of 4</h3>
                                                                    <span class="text-muted">2 wash left</span>
                                                                </div>
                                                                <div class="progress" style="height: 6px;">
                                                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--end::Card-->
                                                    </div>
                                                </div>

                                                <div class="row-md-4">
                                                    <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                                                        <!--begin::Card-->
                                                        <div class="card-body">
                                                            <div class="d-flex justify-content-between">
                                                                <h3>Bike Wash</h3>
                                                                <span class="text-muted">March 2021</span>
                                                            </div>
                                                            <div>
                                                                <p class="text-muted">You have #4 got 40% discount on every month</p>
                                                            </div>
                                                            <div>
                                                                <div class="d-flex justify-content-between">
                                                                    <h3 style="color:#E74C3C;">2 of 4</h3>
                                                                    <span class="text-muted">2 wash left</span>
                                                                </div>
                                                                <div class="progress" style="height: 6px;">
                                                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--end::Card-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end::Post-->
                </div>
                <!--end::Content-->
            </div>
            <!--end::Wrapper-->
        </div>
    </div>
    <!--end::Root-->

<%@include file="/WEB-INF/view/admin/layout/scripts/adminScripts.jsp" %>
<%@include file="/WEB-INF/view/admin/layout/footer/adminFooter.jsp" %>
