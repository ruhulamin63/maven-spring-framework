<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/17/2022
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

    <head>
        <title>Update User</title>

        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/style.css">

        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-user-style.css">
    </head>

    <body>

        <div id="wrapper">
            <div id="header">
                <h2>Operator Update Form</h2>
            </div>
        </div>

        <div id="container">
            <h3>Update User</h3>
            <%--@elvariable id="register" type="antlr"--%>
            <form:form action="operator-update" modelAttribute="register" method="POST">
                <form:hidden path="id"/>
                <table>
                    <tbody>
                    <tr>
                        <td><label>First name:</label></td>
                        <td><form:input path="full_name"/></td>
                    </tr>
                    <tr>
                        <td><label>Last name:</label></td>
                        <td><form:input path="phone"/></td>
                    </tr>
                    <tr>
                        <td><label>Last name:</label></td>
                        <td><form:input path="email"/></td>
                    </tr>
                    <tr>
                        <td><label>Last name:</label></td>
                        <td><form:input path="password"/></td>
                    </tr>
                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Update" class="update"/></td>
                    </tr>
                    </tbody>
                </table>
            </form:form>
            <div style="clear: both;"></div>

            <p>
                <a href="${pageContext.request.contextPath}/admin/home">Back to List</a>
            </p>

        </div>
    </body>
</html>










