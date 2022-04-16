<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/16/2022
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Coda+Caption:wght@800&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/38b09dcc3b.js" crossorigin="anonymous"></script>


        <title>Admin Dashboard</title>

        <style>
            body {
                background-color: #f5f5f5;
            }

        </style>
    </head>

    <body>
        <nav class="alert-secondary alert mb-3">
            <div class="container d-md-flex">
                <div class="my-auto">
                    <a href="http://localhost/eTickets/" style="text-decoration: none;" class="alert-secondary">
                        <h1 class="mb-3 mb-md-0 text-center" style="font-family: 'Coda Caption';">
                            <i class="fas fa-bus"></i>
                            eTickets
                        </h1>
                    </a>
                </div>
                <div class="ms-auto d-md-flex">
                    <div class="me-md-4 my-auto">
                        <p class="text-success alert alert-secondary btn"><i class="fas fa-user text-danger"></i> &nbsp; admin@gmail.com</p>
                    </div>
                    <div class="d-flex mt-md-2">
                        <!-- <a href="#">
                        <h4 class="btn btn-outline-primary mx-2"> <i class="fas fa-user-edit"></i> Edit Profile</h4>
                        </a> -->
                        <form action="../controllers/operatorDashboard.php" method="POST">
                            <button class="btn btn-outline-danger" type="submit" name="signout">Sign out <i class="fas fa-sign-out-alt"></i> </button>
                        </form>
                    </div>
                </div>
            </div>
        </nav>



        <div class="container">
            <div class="text-center d-flex justify-content-between">
                <div>
                    <span class="fs-3">Operator: &nbsp;</span>
                    <span class="fs-3 ms-3 fw-bold">number of operator</span>
                </div>
                <a type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                    <span class="btn btn-success"><i class="fas fa-plus"></i> &nbsp; Add (if num>0 then "more") Operator</span>
                </a>
            </div>

            <!-- Add operator offcanvas -->
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="addOperator">Operator Addition</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <form:form action="create" modelAttribute="user" method="POST">
<%--                    <form action="../controllers/adminDashboard.php" method="POST">--%>
                        <div>
                            <div class="form-floating my-3">
<%--                                <input type="text" name="operator_name" class="form-control bottomplain" id="operator_name" placeholder="Name">--%>
                                <form:input type="text" name="operator_name" class="form-control bottomplain" id="operator_name" placeholder="Name"/>
                                <label for="operator_name"> <i class="fas fa-user text-success"></i> &nbsp; Name</label>
                            </div>
                            <div class="form-floating my-3">
<%--                                <input type="text" name="operator_phone" class="form-control bottomplain" id="operator_phone" placeholder="phone">--%>
                                <form:input type="text" name="operator_phone" class="form-control bottomplain" id="operator_phone" placeholder="phone"/>
                                <label for="operator_phone"> <i class="fas fa-phone text-success"></i> &nbsp; Phone</label>
                            </div>
                            <div class="form-floating my-3">
<%--                                <input type="text" name="operator_email" class="form-control bottomplain" id="operator_email" placeholder="email">--%>
                                <form:input type="text" name="operator_email" class="form-control bottomplain" id="operator_email" placeholder="email"/>
                                <label for="operator_email"> <i class="fas fa-envelope text-success"></i> &nbsp; E-mail</label>
                            </div>
                            <div class="form-floating my-3">
<%--                                <input type="password" name="operator_password" class="form-control bottomplain" id="operator_password" placeholder="password">--%>
                                <form:input type="password" name="operator_password" class="form-control bottomplain" id="operator_password" placeholder="password"/>
                                <label for="operator_password"> <i class="fas fa-key text-success"></i> &nbsp; Password</label>
                            </div>

                            <button class="btn btn-success col-12 mt-2" type="submit" name="addOperator"><i class="fas fa-plus"></i> &nbsp; Add Operator</button>
                            <p>
                                <a class="btn btn-success col-12 mt-2" href="${pageContext.request.contextPath}/user/list">Back to List</a>
                            </p>
                        </div>

                    </form:form>
                </div>
            </div>
            <!-- add operator offcanvas end -->


            <div class="row mt-4">

                <div class="card m-1" style="width: 20rem;">
                    <img src="/resources/images/operator.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-bus text-secondary"></i> &nbsp; operator name</h5>
                        <p class="card-text">Phone operator phn <br> E-mail: operator email </p>
                        <div class="col-12">
                            <div class="d-flex mx-auto col-12">
                                <button type="button" class="btn btn-success mb-1 col-12" data-bs-toggle="modal" data-bs-target="#exampleModaldetails<?=$operator['id'];?>">
                                    <i class="fas fa-info-circle"></i> &nbsp; View Details
                                </button>
                            </div>

                            <div class="d-flex">
                                <button class="btn btn-primary col-6" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvas<?=$operator['id'];?>" aria-controls="<?=$operator['id'];?>">
                                    <i class="fas fa-edit"></i> &nbsp; Edit
                                </button>

                                <button type="button" class="btn btn-danger col-5 ms-auto" data-bs-toggle="modal" data-bs-target="#exampleModal<?=$operator['id'];?>">
                                    <i class="fas fa-trash"></i> &nbsp; Delete
                                </button>
                            </div>


                        </div>
                    </div>
                </div>

                <!-- details modal start -->

                <div class="modal fade" id="exampleModaldetails<?=$operator['id'];?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="operatorTitle">operator name</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <h4>Total bus : num of bus</h4>
                                <h4>Total Revenue : revenue</h4>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- details modal end -->

                <!-- delete modal start -->
                <div class="modal fade" id="exampleModal<?=$operator['id'];?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Deleting <?=$operator['name'];?></h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure want to Delete <strong>operator name</strong>?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <form action="../controllers/adminDashboard.php" method="POST">
                                    <input type="hidden" name="operatorid" value="<?=$operator['id'];?>">
                                    <button type="submit" name="deleteOperator" class="btn btn-danger px-2 ms-2"><i class="fas fa-trash"></i> &nbsp; Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- delete modal end -->

                <!-- Edit offcanvas start -->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvas<?=$operator['id'];?>" aria-labelledby="offcanvasExampleLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasExampleLabel">operator name</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <form action="../controllers/adminDashboard.php" method="POST">
                            <div>
                                <div class="form-floating my-3">
                                    <input type="text" name="name" class="form-control bottomplain" id="name" placeholder="Name" value="<?=$operator['name'];?>">
                                    <label for="name"> <i class="fas fa-user text-success"></i> &nbsp; Name</label>
                                </div>
                                <div class="form-floating my-3">
                                    <input type="text" name="phone" class="form-control bottomplain" id="phone" placeholder="phone" value="<?=$operator['phone'];?>">
                                    <label for="phone"> <i class="fas fa-phone text-success"></i> &nbsp; Phone</label>
                                </div>
                                <div class="form-floating my-3">
                                    <input type="text" name="email" class="form-control bottomplain" id="email" placeholder="email" value="<?=$operator['email'];?>">
                                    <label for="email"> <i class="fas fa-envelope text-success"></i> &nbsp; E-mail</label>
                                </div>

                                <input type="hidden" name="id" value="<?=$operator['id'];?>">
                                <button class="btn btn-success col-12 mt-2" type="submit" name="updateOperator"><i class="fas fa-save"></i> &nbsp; Save Changes</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- edit offcanvas end -->

            </div>
        </div>

        <div class="container my-4">
            <form action="../controllers/reservation.php" method="POST">
                <div class="d-md-flex justify-content-between mb-5">
                    <div class="fs-3 my-auto">Check Reservation &nbsp;:</div>
                    <div class="col-md-3 col-12">
                        <select class="form-select form-floating py-3 <?php if(isset($coach_err)) echo 'is-invalid'; ?>" name="coach" aria-label="Default select example">
                            <option selected disabled>Select a coach</option>
                            <?php
                                    if($numOfOperators>0){
                            $coachAssoc = getAllBus();
                            while($coach=mysqli_fetch_array($coachAssoc, MYSQLI_ASSOC)){
                            ?>
                            <option value="<?=$coach['coach'];?>"><?=$coach['coach']?></option>
                            <?php
                                        }
                                    }
                                    else{
                                        echo "<option disabled>You have no Coach</option>";
                            }
                            ?>
                        </select>
                        <div id="validationServer05Feedback" class="invalid-feedback mb-2">
                            <i class="fas fa-exclamation-triangle"></i> &nbsp;
                            <?php if(isset($coach_err)) echo $coach_err; ?>
                        </div>
                    </div>

                    <div class="form-floating col-md-3 my-3 my-md-0 col-12">
                        <input type="date" name="date" value="" class="form-control" id="date" placeholder="Date">
                        <label for="date"> <i class="fas fa-clock text-success"></i> &nbsp; Date</label>
                    </div>
                    <div class="col-12 col-md-2 mt-md-1">
                        <button type="submit" name="check" class="btn btn-lg btn-success col-12" value="Check">Check &nbsp; <i class="fas fa-check"></i> </button>
                    </div>
                </div>
            </form>

        </div>

    </body>
</html>