<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/18/2022
  Time: 10:26 AM
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

    <link rel="stylesheet" href="../styles/customerDashboard.css">

    <title>Customer Dashboard</title>

  </head>

  <body>
    <nav class="alert-secondary alert mb-5">
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
            <p class="text-success alert alert-secondary btn"><i class="fas fa-user text-danger"></i> &nbsp; email</p>
          </div>
          <div class="d-flex mt-md-2">
            <a data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
              <h4 class="btn btn-outline-primary mx-2"> <i class="fas fa-ticket-alt"></i> Your Tickets</h4>
            </a>
            <form action="" method="POST">
              <button class="btn btn-outline-danger" type="submit" name="signout">Sign out <i class="fas fa-sign-out-alt"></i> </button>
            </form>
          </div>

        </div>
      </div>
    </nav>

    <div class="container">
    <div class="collapse mb-5 alert-secondary" id="collapseExample">
      <div class="card">
        <div class="card-header text-center d-flex justify-content-between">
          <h4>
            Your Tickets
          </h4>
          <h4>
            <?=$numOfUserTickets?>
          </h4>
        </div>
        <div class="card-body">

          <h4 class="text-center alert alert-primary">Today's Tickets &nbsp; <i class="fas fa-chevron-down"></i> </h4>
          <table class="table">
            <thead>
            <tr>
              <th scope="col">id#</th>
              <th scope="col">Your Name</th>
              <th scope="col">Your E-mail</th>
              <th scope="col">Your Phone</th>
              <th scope="col">Reserved Seats</th>
              <th scope="col">Paid Amount</th>
              <th scope="col">Date</th>
              <th scope="col">Time</th>
              <th scope="col">Transaction Method</th>
              <th scope="col">Transaction Id</th>
            </tr>
            </thead>
            <tbody>

            <tr>
              <th scope="row"></th>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>

            </tbody>
          </table>

          <h4 class="text-center alert-danger alert">No Tickets today</h4>


          <h4 class="text-center alert-primary alert">Upcoming Tickets &nbsp; <i class="fas fa-chevron-down"></i> </h4>
          <table class="table">
            <thead>
            <tr>
              <th scope="col">id#</th>
              <th scope="col">Your Name</th>
              <th scope="col">Your E-mail</th>
              <th scope="col">Your Phone</th>
              <th scope="col">Reserved Seats</th>
              <th scope="col">Paid Amount</th>
              <th scope="col">Date</th>
              <th scope="col">Time</th>
              <th scope="col">Transaction Method</th>
              <th scope="col">Transaction Id</th>
            </tr>
            </thead>
            <tbody>

            <tr>
              <th scope="row"></th>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>

            </tbody>
          </table>


          <h4 class="text-center alert-danger alert">No Upcoming Tickets</h4>

          <h4 class="text-center alert alert-primary">Previous Tickets &nbsp; <i class="fas fa-chevron-down"></i> </h4>
          <table class="table">
            <thead>
            <tr>
              <th scope="col">id#</th>
              <th scope="col">Your Name</th>
              <th scope="col">Your E-mail</th>
              <th scope="col">Your Phone</th>
              <th scope="col">Reserved Seats</th>
              <th scope="col">Paid Amount</th>
              <th scope="col">Date</th>
              <th scope="col">Time</th>
              <th scope="col">Transaction Method</th>
              <th scope="col">Transaction Id</th>
            </tr>
            </thead>
            <tbody>

            <tr>
              <th scope="row"></th>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>

            </tbody>
          </table>

          <h4 class="text-center alert-danger alert">No Previous Tickets</h4>

        </div>
      </div>
    </div>
  </div>


    <h3 class="text-center mb-3">Seach Your Desired bus here</h3>


    <div class="container">
      <form action="" method="GET">
        <div class="d-md-flex justify-content-between mb-5">
          <div class="form-floating col-md-3 col-12">
            <input type="text" name="source" class="form-control" id="source" placeholder="From" value="">
            <label for="source"> <i class="fas fa-location-arrow text-success"></i> &nbsp; Source</label>
            <div id="validationServer05Feedback" class="invalid-feedback mb-2">
              <i class="fas fa-exclamation-triangle"></i> &nbsp;
              <?php if(isset($source_err)) echo $source_err; ?>
            </div>
          </div>
          <div class="form-floating col-md-3 my-3 my-md-0 col-12">
            <input type="text" name="dest" class="form-control" id="dest" placeholder="From" value="">
            <label for="dest"> <i class="fas fa-map-marker-alt text-success"></i> &nbsp; Destination</label>
            <div id="validationServer05Feedback" class="invalid-feedback mb-2">
              <i class="fas fa-exclamation-triangle"></i> &nbsp;
              <?php if(isset($dest_err)) echo $dest_err; ?>
            </div>
          </div>

          <div class="form-floating col-md-3 my-3 my-md-0 col-12">
            <input type="date" name="date" value="" min="" class="form-control" id="date" placeholder="Date">
            <label for="date"> <i class="fas fa-clock text-success"></i> &nbsp; Date</label>
            <div id="validationServer05Feedback" class="invalid-feedback mb-2">
              <i class="fas fa-exclamation-triangle"></i> &nbsp;
              <?php if(isset($date_err)) echo $date_err; ?>
            </div>
          </div>

          <div class="col-12 col-md-2 mt-md-1">
            <button type="submit" name="search" class="btn btn-lg btn-success col-12" value="Search">Search &nbsp; <i class="fas fa-search"></i> </button>
          </div>

        </div>
      </form>


      <div class="accordion my-2" id="accordionExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="heading">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#" aria-expanded="false" aria-controls="collapseTwo">
              <i class="fas fa-bus fs-4 text-secondary">&nbsp; &nbsp;</i>
              <div class="ms-2 col-md-4 col-3">
                <div class="fw-bold mb-1"> operator name </div>
                Coach #
              </div>
              <div class="ms-2 me-auto my-auto">
                time
              </div>


              <span class="badge bg-success rounded-pill my-auto"> <?php echo number_format($row['seat'])-$seatcount; ?> </span>
              <div class="ms-2 ms-auto my-auto fw-bold fs-5">
                <span class="fs-3">৳</span> <?php echo $row['fare'] ?>
              </div>
            </button>
          </h2>
          <div id="<?php echo $row['coach'] ?>" class="accordion-collapse collapse" aria-labelledby="collapse" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <!-- <h3>This space will be used for seat selection and booking</h3> -->
              <div class="row">
                <div class="col-12 col-md-3 offset-md-1 my-md-auto pb-md-5 me-md-5">
                  <p class="alert alert-secondary">Select your desired seat and book</p>
                </div>
                <div class="col-12 col-md-7">            <!-- style="background-image: url('../images/bus.png');" -->
                  <form action="" method="POST">

                    <?php
                                            // for($i=1; $i<=10; $i++){
                                            //     echo '<input type="checkbox" class="btn-check" name="A'.$i.'" id="A'.$i.$row['coach'].'" autocomplete="off"> <label class="mx-1 col-1 my-1 btn btn-outline-success" for="A'.$i.$row['coach'].'">A'.$i.'</label>';
                    // } echo '<br>';
                    // for($i=1; $i<=10; $i++){
                    //     echo '<input type="checkbox" class="btn-check" name="B'.$i.'" id="B'.$i.$row['coach'].'" autocomplete="off"> <label class="mx-1 col-1 my-1 btn btn-outline-success" for="B'.$i.$row['coach'].'">B'.$i.'</label>';
                    // } echo '<br> <br>';
                    // for($i=1; $i<=10; $i++){
                    //     echo '<input type="checkbox" class="btn-check" name="C'.$i.'" id="C'.$i.$row['coach'].'" autocomplete="off"> <label class="mx-1 col-1 my-1 btn btn-outline-success" for="C'.$i.$row['coach'].'">C'.$i.'</label>';
                    // } echo '<br>';
                    // for($i=1; $i<=10; $i++){
                    //     echo '<input type="checkbox" class="btn-check" name="D'.$i.'" id="D'.$i.$row['coach'].'" autocomplete="off"> <label class="mx-1 col-1 my-1 btn btn-outline-success" for="D'.$i.$row['coach'].'">D'.$i.'</label>';
                    // }

                    // echo '<br> <br>';


                    <input type="checkbox" class="btn-check" name="seats[]" value="" autocomplete="off" >
                    <label class="mx-1 col-1 my-1 btn btn-outline-success"> </label>

                    <input type="hidden" name="coach" value="">
                    <input type="hidden" name="date" value="">
                    <input type="hidden" name="customer" value="">
                    <input type="hidden" name="fare" value="">
                    <input type="hidden" name="operator" value="">
                    <input type="hidden" name="time" value="">
                    <button class="offset-md-9 offset-6 btn btn-success mt-4 btn-lg col-md-3 col-6" name="book" type="submit" >Book &nbsp; <i class="fas fa-calendar-check"></i> </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="mb-5"></div>
      <h3 style="text-align: center;">Oops, No bus Available :(</h3>

    </div>
  </body>
</html>
