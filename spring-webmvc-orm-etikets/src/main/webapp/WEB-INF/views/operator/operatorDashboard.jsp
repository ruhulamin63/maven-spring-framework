<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/18/2022
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.util.SortUtils" %>
<%@ page import="com.util.OperatorUtils" %>
<%@ page isELIgnored="false" %>

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

        <title>Operator Dashboard</title>

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
                    <p class="text-success alert alert-secondary btn"><i class="fas fa-user text-danger"></i> &nbsp; ruhul@gmail.com</p>
                </div>
                <div class="d-flex mt-md-2">
                    <!-- <a href="#">
                    <h4 class="btn btn-outline-primary mx-2"> <i class="fas fa-user-edit"></i> Edit Profile</h4>
                    </a> -->
                    <form action="" method="POST">
                        <button class="btn btn-outline-danger" type="submit" name="signout">Sign out <i class="fas fa-sign-out-alt"></i> </button>
                    </form>
                </div>
            </div>
        </div>
    </nav>


    <!-- <div>
        <h1 class="text-center mb-4 display-5 fw-normal" ><?=$operator_name?></h1>
    </div> -->



        <div class="my-5">
        <div class="d-flex text-center container">
            <div class="card col-3 mx-auto">
                <h1 class="card-header text-muted"><i class="fas fa-bus">&nbsp; Total Bus</i></h1>
                <div class="card-body">
                    <h1 class="card-text">2</h1>
                </div>
            </div>

            <div class="my-auto" style="font-family: 'Coda Caption';">
                <h1 class="text-muted">SR Travels</h1>
            </div>

            <div class="card col-3 mx-auto">
                <h1 class="card-header text-muted"><i class="fas fa-dollar-sign">&nbsp; Total Revenue</i></h1>
                <div class="card-body">
                    <h1 class="card-title"> 1200</h1>
                </div>
            </div>

            <!-- <div class="card col-3 mx-auto">
                <h1 class="card-header text-muted"><i class="fas fa-calendar-alt">&nbsp; Date</i></h1>
                <div class="card-body">
                    <h2 class="card-title"><?= "321"?></h2>
                </div>
            </div> -->
        </div>

    </div>

        <hr class="text-success container">


        <div class="container my-5">
        <div class="text-center d-flex justify-content-between">
            <div>
                <span class="fs-3">Your Bus&nbsp;</span> <span class="fs-3 ms-3 fw-bold">4</span>
            </div>
            <a type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                <span class="btn btn-success"><i class="fas fa-plus"></i> &nbsp; Add More Bus</span>
            </a>
        </div>

        <!-- Add bus offcanvas -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasExampleLabel">Bus Addition</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <form action="" method="POST">
                    <div>
                        <div class="form-floating my-3">
                            <input type="text" name="coach" class="form-control bottomplain" id="coach" placeholder="Coach name">
                            <label for="coach"> <i class="fas fa-bus text-success"></i> &nbsp; Coach</label>
                        </div>
                        <div class="form-floating my-3">
                            <input type="text" name="source" class="form-control bottomplain" id="source" placeholder="Source">
                            <label for="source"> <i class="fas fa-location-arrow text-success"></i> &nbsp; Source</label>
                        </div>
                        <div class="form-floating my-3">
                            <input type="text" name="dest" class="form-control bottomplain" id="dest" placeholder="Destination">
                            <label for="dest"> <i class="fas fa-map-marker-alt text-success"></i> &nbsp; Destination</label>
                        </div>
                        <div class="form-floating my-3">
                            <input type="text" name="time" class="form-control bottomplain" id="time" placeholder="Time">
                            <label for="time"> <i class="fas fa-clock text-success"></i> &nbsp; Time</label>
                        </div>
                        <div class="form-floating my-3">
                            <input type="text" name="fare" class="form-control bottomplain" id="fare" placeholder="Fare">
                            <label for="fare"> <i class="fas fa-dollar-sign text-success"></i> &nbsp; Fare</label>
                        </div>

                        <input type="hidden" name="operator" value="<?=$_SESSION['operatorEmail'];?>">
                        <button class="btn btn-success col-12 mt-2" type="submit" name="addbus"><i class="fas fa-plus"></i> &nbsp; Add Bus</button>
                    </div>

                </form>
            </div>
        </div>
        <!-- add bus offcanvas end -->

        <div class="row mt-4">

            <div class="card m-1" style="width: 20rem;">
                <img src="${pageContext.request.contextPath}/resources/bus/bus_img.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-route"></i> &nbsp; Dhaka to Rajbari </h5>
                    <p class="card-text">Coach #001H <br> Time: 9:00 am <br>Fare <strong>৳ 500</strong></p>
                    <div class="col-12">
                        <div class="d-flex">

                            <button class="btn btn-primary col-5 mx-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvas<?=$bus['id'];?>" aria-controls="<?=$bus['id'];?>">
                                <i class="fas fa-edit"></i> &nbsp; Edit
                            </button>

                            <button type="button" class="btn btn-danger col-5 mx-auto" data-bs-toggle="modal" data-bs-target="#exampleModal<?=$bus['id'];?>">
                                <i class="fas fa-trash"></i> &nbsp; Delete
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- delete modal start -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Deleting </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Are you sure want to Delete <strong></strong>?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            <form action="" method="POST">
                                <input type="hidden" name="coachid" value="<?=$bus['id'];?>">
                                <button type="submit" name="deletebus" class="btn btn-danger px-2 ms-2"><i class="fas fa-trash"></i> &nbsp; Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- delete modal end -->

            <!-- Edit offcanvas start -->
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvas<?=$bus['id'];?>" aria-labelledby="offcanvasExampleLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Coach #22H</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <form action="" method="POST">
                        <div>
                            <div class="form-floating my-3">
                                <input type="text" name="source" class="form-control bottomplain" id="source" placeholder="Source" value="<?=$bus['source'];?>">
                                <label for="source"> <i class="fas fa-location-arrow text-success"></i> &nbsp; Source</label>
                            </div>
                            <div class="form-floating my-3">
                                <input type="text" name="dest" class="form-control bottomplain" id="dest" placeholder="Destination" value="<?=$bus['dest'];?>" >
                                <label for="dest"> <i class="fas fa-map-marker-alt text-success"></i> &nbsp; Destination</label>
                            </div>
                            <div class="form-floating my-3">
                                <input type="text" name="time" class="form-control bottomplain" id="time" placeholder="Time" value="<?=$bus['time'];?>" >
                                <label for="time"> <i class="fas fa-clock text-success"></i> &nbsp; Time</label>
                            </div>
                            <div class="form-floating my-3">
                                <input type="text" name="fare" class="form-control bottomplain" id="fare" placeholder="Fare" value="<?=$bus['fare'];?>" >
                                <label for="fare"> <i class="fas fa-dollar-sign text-success"></i> &nbsp; Fare</label>
                            </div>

                            <input type="hidden" name="busid" value="<?=$bus['id'];?>">
                            <button class="btn btn-success col-12 mt-2" type="submit" name="editbus"><i class="fas fa-save"></i> &nbsp; Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- edit offcanvas end -->

            <?php } ?>


        </div>

        <hr class="text-success container my-5">

        <div class="container">
            <form action="" method="POST">
                <div class="d-md-flex justify-content-between mb-5">
                    <div class="fs-3 my-auto">Check Reservation &nbsp;·</div>
                    <div class="col-md-3 col-12">
                        <select class="form-select form-floating py-3" name="coach" aria-label="Default select example">
                            <option selected disabled>Select your coach</option>

                            <option value="">2</option>

                        </select>
                        <div id="validationServer05Feedback" class="invalid-feedback mb-2">
                            <i class="fas fa-exclamation-triangle"></i> &nbsp;
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

        <hr class="text-success container my-5">

        <div class="text-center d-flex justify-content-between">
            <div>
                <span class="fs-3">Today's Ticket&nbsp;</span> <span class="fs-3 ms-3 fw-bold"></span>
            </div>
            <div>
                <span class="fs-3">Today's Revenue&nbsp; ·</span> <span class="fs-3 ms-3 fw-bold"></span>

            </div>
        </div>

        <div class="mt-5">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">id#</th>
                    <th scope="col">Customer Name</th>
                    <th scope="col">Customer E-mail</th>
                    <th scope="col">Customer Phone</th>
                    <th scope="col">Coach</th>
                    <th scope="col">Reserved Seats</th>
                    <th scope="col">Paid Amount</th>
                    <th scope="col">Transaction Method</th>
                    <th scope="col">Transaction Id</th>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <th scope="row"><?=$ticketDetails['id'];?></th>
                    <td><?=$username;?></td>
                    <td><?=$ticketDetails['customer'];?></td>
                    <td><?=$phone;?></td>
                    <td><?=$ticketDetails['coach']?></td>
                    <td><?= substr($ticketDetails['seats'], 1); ?></td>
                    <td><?=$ticketDetails['fare'];?></td>
                    <td><?=$ticketDetails['pmethod'];?></td>
                    <td><?=$ticketDetails['txnid'];?></td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>

        <div>
            <h3 class="">You have no bus</h3>
        </div>
    </body>
</html>
