<%--
  Created by IntelliJ IDEA.
  User: aminr
  Date: 4/17/2022
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

    <body>
        <div id="wrapper">
            <div id="header">
                <h2>Operator List</h2>
            </div>
        </div>

        <div id="container">

            <div id="content">

                <form:form action="search" method="GET">
                    Search user by firstname: <input type="text" name="searchValue" />
                    <input type="submit" value="Search" class="add-button" />
                </form:form>

                <c:url var="sortLinFullName" value="/admin/home">
                    <c:param name="sortKey" value="<%= Integer.toString(OperatorUtils.FULL_NAME) %>" />
                </c:url>

                <c:url var="sortLinkPhone" value="/admin/home">
                    <c:param name="sortKey" value="<%= Integer.toString(OperatorUtils.PHONE) %>" />
                </c:url>

                <c:url var="sortLinkEmail" value="/admin/home">
                    <c:param name="sortKey" value="<%= Integer.toString(OperatorUtils.EMAIL) %>" />
                </c:url>

                <table>
                    <tr>
                        <th><a href="${sortLinFullName}">Name</a></th>
                        <th><a href="${sortLinkPhone}">Phone</a></th>
                        <th><a href="${sortLinkEmail}">Email</a></th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="operator" items="${register}">

                        <c:url var="updateLink" value="/admin/operator-update-form">
                            <c:param name="operatorId" value="${operator.id}" />
                        </c:url>

                        <c:url var="deleteLink" value="/admin/operator-delete">
                            <c:param name="operatorId" value="${operator.id}" />
                        </c:url>

                        <tr>
                            <td> ${operator.full_name} </td>
                            <td> ${operator.phone} </td>
                            <td> ${operator.email} </td>
                            <td>
                                <a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a>
                            </td>
                        </tr>

                    </c:forEach>

                </table>

            </div>

        </div>
    </body>
</html>
