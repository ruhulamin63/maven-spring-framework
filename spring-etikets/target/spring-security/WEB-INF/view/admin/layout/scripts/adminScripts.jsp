<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/16/2022
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!--begin::Javascript-->
    <!--begin::Global Javascript Bundle(used by all pages)-->
    <script src="{{asset('/plugins/global/plugins.bundle.js')}}"></script>
    <script src="{{asset('/js/scripts.bundle.js')}}"></script>
    <!--end::Global Javascript Bundle-->
    <!--begin::Page Custom Javascript(used by this page)-->


    <script src="{{asset('/assets/demo/chart-area-demo.js')}}"></script>
    <script src="{{asset('/assets/demo/custom-bar-chart-admin.js')}}"></script>
    <script src="{{asset('/assets/demo/custom-bar-chart-member.js')}}"></script>


    <script src="{{asset('/js/custom/widgets.js')}}"></script>
    <script src="{{asset('/js/custom/modals/create-app.js')}}"></script>
    <script src="{{asset('/js/custom/modals/upgrade-plan.js')}}"></script>
    <!--end::Page Custom Javascript-->
    <!--end::Javascript-->

    <!--begin::Javascript-->
    <!--begin::Page Custom Javascript(used by this page)-->
    <script src="{{asset('/js/custom/account/settings/signin-methods.js')}}"></script>
    <script src="{{asset('/js/custom/account/settings/profile-details.js')}}"></script>
    <script src="{{asset('/js/custom/account/settings/deactivate-account.js')}}"></script>
    <script src="{{asset('/js/custom/modals/two-factor-authentication.js')}}"></script>
    <!--end::Page Custom Javascript-->

    <script src="{{asset('/Theme/vendor/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('/Theme/vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>
    <!-- Page level custom scripts -->
    <script src="{{asset('/Theme/js/demo/datatables-demo.js')}}"></script>
    <!--end::Page Custom Javascript-->

    <!-- new table testing -->
    <script src="{{ asset('jquery/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('datatable/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('datatable/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ asset('toastr/toastr.min.js') }}"></script>
    {{-- <script src="{{ asset('/plugins/select2/dist/js/select2.min.js') }}"></script> --}}
    <!-- new table testing -->


    <script>
        $(function(){
            var $ppc = $('.progress-pie-chart'),
                percent = parseInt($ppc.data('percent')),
                deg = 360*percent/100;
            if (percent > 50) {
                $ppc.addClass('gt-50');
            }
            $('.ppc-progress-fill').css('transform','rotate('+ deg +'deg)');
            $('.ppc-percents span').html(percent+'%');
        });

    </script>

    <!-- Service details data -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>

        $(document).ready(function(){

            $.ajaxSetup({
                beforeSend: function(xhr, type) {
                    if (!type.crossDomain) {
                        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
                    }
                },
            });


            //==================for service data====================
            $('.servicedeletebtn').click(function(e){
                e.preventDefault();

                var delete_id = $(this).closest("tr").find('.servicedelete_value_id').val();
                //alert(delete_id);

                swal({
                    title: "Are you sure?",
                    text: "Delete from database!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                    .then((willDelete) => {

                        if(willDelete) {
                            var data = {
                                "_token": $('input[name=_token]').val(),
                                "id": delete_id,
                            }

                            $.ajax({
                                type: "DELETE",
                                url: '/service/delete/'+ delete_id,
                                data: data,
                                success: function(response){
                                    //console.log(response);
                                    swal(response.message, {
                                        icon: "success",
                                    })
                                        .then( (result) => {
                                            location.reload();
                                        });
                                }
                            });
                        }
                    });
            });


            //==================for member list data====================
            $('.memberlisdeletebtn').click(function(e){
                e.preventDefault();

                var delete_id = $(this).closest("tr").find('.memberlistdelete_value_id').val();
                //alert(delete_id);

                swal({
                    title: "Are you sure?",
                    text: "Delete from database!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                    .then((willDelete) => {

                        if(willDelete) {
                            var data = {
                                "_token": $('input[name=_token]').val(),
                                "id": delete_id,
                            }

                            $.ajax({
                                type: "DELETE",
                                url: '/admin/delete/'+ delete_id,
                                data: data,
                                success: function(response){
                                    //console.log(response);
                                    swal(response.message, {
                                        icon: "success",
                                    })
                                        .then( (result) => {
                                            location.reload();
                                        });
                                }
                            });
                        }
                    });
            });

            //==================for bike list data====================
            $('.bikedeletebtn').click(function(e){
                e.preventDefault();

                var delete_id = $(this).closest("tr").find('.bikedelete_id').val();
                //alert(delete_id);

                swal({
                    title: "Are you sure?",
                    text: "Delete from database!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                    .then((willDelete) => {

                        if(willDelete) {
                            var data = {
                                "_token": $('input[name=_token]').val(),
                                "id": delete_id,
                            }

                            $.ajax({
                                type: "DELETE",
                                url: '/bike/delete/'+ delete_id,
                                data: data,
                                success: function(response){
                                    //console.log(response);
                                    swal(response.message, {
                                        icon: "success",
                                    })
                                        .then( (result) => {
                                            location.reload();
                                        });
                                }
                            });
                        }
                    });
            });


        });
    </script>


<!-- calendar show -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script> -->


