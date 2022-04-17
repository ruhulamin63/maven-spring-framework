<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/17/2022
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Coda+Caption:wght@800&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/38b09dcc3b.js" crossorigin="anonymous"></script>

        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/register-style-page.css">

    </head>

    <body class="container" style="margin-top: 30px; height: 100%;">
        <div class="mx-auto col-md-6 col-12">

            <h1 class="text-center mb-4 alert-secondary alert" style="font-family: 'Coda Caption';">
                <i class="fas fa-bus"></i>
                eTickets
            </h1>
            <h4 class="text-center mb-3">Register here <i class="fas fa-sign-in-alt"></i> </h4>


            <form action=" " method="POST">
                <div class="form-floating">
                    <input type="text" name="name" class="form-control my-1 " id="name" placeholder="E-mail address" value=" ">
                    <label for="name"> <i class="fas fa-user text-success"></i> &nbsp; Name</label>
                    <div id="validationServer05Feedback_change" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>
                <div class="form-floating">
                    <input type="text" name="phone" class="form-control my-1 " id="phone" placeholder="E-mail address" value=" ">
                    <label for="phone"> <i class="fas fa-phone text-success"></i> &nbsp; Phone</label>
                    <div id="validationServer05Feedback_c" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>
                <div class="form-floating">
                    <div class="btn-group col-12 my-2" role="group" aria-label="Basic radio toggle button group">
                        <input type="radio" class="btn-check" name="gender" id="btnradio1" value="male" autocomplete="off" checked>
                        <label class="btn btn-outline-success" for="btnradio1">Male</label>

                        <input type="radio" class="btn-check" name="gender" id="btnradio3" value="female" autocomplete="off">
                        <label class="btn btn-outline-success" for="btnradio3">Female</label>
                    </div>
                </div>
                <div class="form-floating">
                    <input type="text" name="email" class="form-control my-1 " id="email" placeholder="E-mail address" value=" ">
                    <label for="email"> <i class="fas fa-envelope text-success"></i> &nbsp; E-mail</label>
                    <div id="validationServer05Feedback" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control my-1 " id="password" placeholder="Password">
                    <label for="password"> <i class="fas fa-key text-success"></i> &nbsp; Password</label>
                    <div id="validationServer0Feedback_c" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>
                <div class="form-floating">
                    <input type="password" name="repass" class="form-control my-1 " id="re_password" placeholder="Password">
                    <label for="password"> <i class="fas fa-key text-success"></i> &nbsp; Re-type Password</label>
                    <div id="validationServer0Feedback" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>

                <div class="my-3 d-flex">
                    <div class="col-md-6">
                        Already Registered?
                        <a class="" href="${pageContext.request.contextPath}/login-page" style="text-decoration: none;">
                            Login Here
                        </a>
                    </div>
                </div>

                <div class="mb-md-5">
                    <input type="submit" class="btn btn-lg btn-primary col-12" value="Register">
                </div>
            </form>
        </div>

    </body>
</html>