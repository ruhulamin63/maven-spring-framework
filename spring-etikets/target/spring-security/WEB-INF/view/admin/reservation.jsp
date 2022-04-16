<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/16/2022
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

        <?php
            session_start();
            if(!isset($_SESSION['operatorEmail']) && !isset($_SESSION['adminEmail'])) header('Location: ./login.php');

            require_once '../api/users.php';
            require_once '../api/buses.php';
            require_once '../api/tickets.php';

        ?>

        <title>Reservation</title>

        <style>
            body {
                background-color: #f5f5f5;
            }

        </style>

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
                    <p class="text-success alert alert-secondary btn"><i class="fas fa-user text-danger"></i> &nbsp; <?php echo isset($_SESSION['operatorEmail']) ? $_SESSION['operatorEmail'] : $_SESSION['adminEmail']?></p>
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

        <h1 class="text-center mb-5">Reservation of <?php if(isset($checkCoach)) echo "$checkCoach"; ?></h1>

        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 mx-auto">
                    <?php

                            $seats=$ticketcoach=$ticketdate='';
                            $revenue = 0;
                            $seatAssoc = getAllTickets();
                            while($ticket=mysqli_fetch_array($seatAssoc, MYSQLI_ASSOC)){
                                if($ticket['coach']==$checkCoach && $ticket['date'] == $checkDate){
                                    $seats .= $ticket['seats'];
                                    $revenue += $ticket['fare'];
                                }
                            }
                            $seatcount = 0;
                            for($j=0; $j<strlen($seats); $j++){
                                if($seats[$j]==','){
                                    $seatcount++;
                                }
                            }


                            $k=1;
                            $seat='A';
                            for($i=1; $i<=40; $i++){

                                if($i<=10){
                                    $seat='A';
                                }
                                elseif($i>10 && $i<=20){
                    $seat='B';
                    }
                    elseif($i>20 && $i<=30){
                    $seat='C';
                    }
                    elseif($i>30 && $i<=40){
                    $seat='D';
                    }

                    // $ticketAssoc = getAllTickets();
                    // while($ticket = mysqli_fetch_array($ticketAssoc, MYSQLI_ASSOC)){
                    //     if($ticket['coach']==$row['coach'] && $ticket['date']==$date){
                    //         $seats .= $ticket['seats'];
                    //     }
                    // }


                    ?>
                    <input type="checkbox" class="btn-check" name="seats[]" id="<?=$seat.$k.$row['coach'] ?>" value="<?=$seat.$k?>" autocomplete="off" disabled >
                    <label class="mx-1 col-1 my-1 btn btn-outline-success"> <?= $seat.$k ?></label>

                    <?php
                                if($k%10==0){
                                    echo '<br>';
                    if($i==20){
                    echo '<br>';
                    }
                    $k=1;
                    continue;
                    }
                    $k++;

                    }

                    ?>
                </div>

            </div>


            <div class="mt-5">
                <div class="d-md-flex my-3 my-md-0 text-center">
                    <div class="card col-10 col-md-3 mx-auto my-3 my-md-0">
                        <h1 class="card-header text-muted"><i class="fas fa-ticket-alt">&nbsp; Reserved</i></h1>
                        <div class="card-body">
                            <h1 class="card-text"><?= $seatcount; ?></h1>
                        </div>
                    </div>

                    <div class="card col-10 col-md-3 mx-auto my-3 my-md-0">
                        <h1 class="card-header text-muted"><i class="fas fa-dollar-sign">&nbsp; Revenue</i></h1>
                        <div class="card-body">
                            <h1 class="card-title"> <?=$revenue; ?> </h1>
                        </div>
                    </div>

                    <div class="card col-10 col-md-3 mx-auto my-3 my-md-0">
                        <h1 class="card-header text-muted"><i class="fas fa-calendar-alt">&nbsp; Date</i></h1>
                        <div class="card-body">
                            <h2 class="card-title"><?=$checkDate;?></h2>
                        </div>
                    </div>
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
                        <th scope="col">Reserved Seats</th>
                        <th scope="col">Paid Amount</th>
                        <th scope="col">Transaction Method</th>
                        <th scope="col">Transaction Id</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>

        </div>
        <div class="mb-5"></div>

    </body>
</html>
