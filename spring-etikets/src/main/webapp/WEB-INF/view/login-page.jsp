<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/16/2022
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Coda+Caption:wght@800&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/38b09dcc3b.js" crossorigin="anonymous"></script>

        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login-style-page.css">



        <!-- Reference Bootstrap files -->
<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>

<%--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>--%>

<%--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

    </head>

    <body class="container" style="margin-top: 70px; height: 100%; display: flex; align-items: center; background-color: #f5f5f5;">
        <div class="mx-auto col-md-4 col-12">

            <!-- Place for messages: error, alert etc ... -->
            <div class="form-group">
                <div class="col-xs-15">
                    <div>

                        <!-- Check for login error -->

                        <c:if test="${param.error != null}">

                            <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                Invalid username and password.
                            </div>

                        </c:if>

                        <!-- Check for logout -->

                        <c:if test="${param.logout != null}">

                            <div class="alert alert-success col-xs-offset-1 col-xs-10">
                                You have been logged out.
                            </div>

                        </c:if>

                    </div>
                </div>
            </div>


            <h1 class="text-center mb-4 alert-secondary alert" style="font-family: 'Coda Caption';">
                <i class="fas fa-bus"></i>
                eTickets
            </h1>
            <h4 class="text-center mb-3">Sign in here <i class="fas fa-sign-in-alt"></i> </h4>


            <form action="${pageContext.request.contextPath}/authenticate" method="POST">
                <div class="form-floating">
                    <input type="text" name="username" class="form-control bottomplain" id="username" placeholder="username" value="">
                    <label for="username"> <i class="fas fa-envelope"></i> &nbsp; Username</label>
                    <div id="validationServer05Feedback" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>
                <div class="form-floating">
                    <input style="margin-bottom: 10px; border-top-left-radius: 0; border-top-right-radius: 0;" type="password" name="password" class="form-control" id="password" placeholder="Password">
                    <label for="password"> <i class="fas fa-key"></i> &nbsp; Password</label>
                    <div id="validationServer0Feedback" class="invalid-feedback mb-2">
                        <i class="fas fa-exclamation-triangle"></i> &nbsp;
                        *
                    </div>
                </div>

                <div class="checkbox my-3 d-flex">
                    <div class="col-md-6">
                        <label>
                            <input type="checkbox" value="remember-me" checked> Remember me
                        </label>
                    </div>
                    <div class="col-md-6">

                        <a class="ms-5 ms-md-0 float-end" style="text-decoration: none;" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Forgot Password?
                        </a>

                        <!-- forgot pass modal  -->

                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Forgot Password?</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div>
                                            Your Password has been encoded, we also not able to recover.
                                            <h4>Please Try to Remember Your Password</h4>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--  -->

                    </div>
                </div>

                <div class="">
                    <input type="submit" class="btn btn-lg btn-primary col-12" value="Sign in">
                </div>

                <!-- I'm manually adding tokens ... Bro! -->

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            </form>

            <div class="my-3 d-flex mb-md-5">
                <div class="col-md-6">
                    Not Registered?
                    <a class="" href="" style="text-decoration: none;">
                        Register Here
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>

