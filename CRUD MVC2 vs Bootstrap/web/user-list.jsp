<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/10/2020
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
         href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style=""/>
        <div>
            <a href="" class="navbar-brand"/> User
                Management App </a>
        </div>
    <ul class="navbar-nav">
        <><a href="<%=request.getContextPath()%>/list" class="nav-link">User</a></li>
    </ul>
</header>
<br>
    <div class="row">
        <div class="container">
            <h3 class="text-center">List of User</h3>
            <hr>
            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
                New USer</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td>
                        <c:out value="${user.id}"/>
                    </td>
                    <td>
                        <c:out value="${user.name}"/>
                    </td>
                    <td>
                        <c:out value="${user.email}"/>
                    </td>
                    <td>
                        <c:out value="${user.country}"/>
                    </td>
                </tr>
            </c:forEach>
            <!--}-->
            </tbody>
        </table>
    </div>
    </div>
</body>
</html>
