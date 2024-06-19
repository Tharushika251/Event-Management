<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>v Details</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        
        table {
            width: 100%;
            max-width: 800px; 
            margin: 0 auto;
            font-size: 20px; 
        }
    </style>
</head>
<body class="text-center">

<% String successMessage = (String) request.getAttribute("successMessage"); %>
<% String unsuccessMessage = (String) request.getAttribute("unsuccessMessage"); %>

<% if (successMessage != null) { %>
    <script>
        alert("<%= successMessage %>");
    </script>
<% } %>

<% if (unsuccessMessage != null) { %>
    <script>
        alert("Error: <%= unsuccessMessage %>");
    </script>
<% } %>
<!-- Header Section -->
<header class="bg-primary text-white text-center py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <img src="mainLogo1.png" alt="Your Logo" style="height: 50px;">
                
            </div>
            <a href="Admin.jsp" class="btn btn-light">Admin Panel</a>
        </div>
    </div>
</header>

<div class="container">
    <table class="table table-striped table-bordered">
        <c:forEach var="v" items="${vendorDetails}">
            <tr>
                <th>ID</th>
                <td>${v.id}</td>
            </tr>
            <tr>
                <th>Name</th>
                <td>${v.name}</td>
            </tr>
           
            <tr>
                <th>Email</th>
                <td>${v.email}</td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>${v.phone}</td>
            </tr>
            <tr>
                <th>Address</th>
                <td>${v.address}</td>
            </tr>
            <tr>
                <th>Services</th>
                <td>${v.services}</td>
            </tr>
            <tr>
                <th>Username</th>
                <td>${v.username}</td>
            </tr>
            <tr>
                <td colspan="2" class="text-center">
                    <c:url value="updatevendor.jsp" var="vendorupdate">
                        <c:param name="id" value="${v.id}"/>
                        <c:param name="name" value="${v.name}"/>
                        <c:param name="email" value="${v.email}"/>
                        <c:param name="phone" value="${v.phone}"/>
                        <c:param name="address" value="${v.address}"/>
                         <c:param name="services" value="${v.services}"/>
                        <c:param name="username" value="${v.username}"/>
                        <c:param name="password" value="${v.password}"/>
                    </c:url>
                    <a href="${vendorupdate}" class="btn btn-primary">Update</a>

                    <c:url value="deletevendor.jsp" var="vendordelete">
                      <c:param name="id" value="${v.id}"/>
                        <c:param name="name" value="${v.name}"/>
                        <c:param name="email" value="${v.email}"/>
                        <c:param name="phone" value="${v.phone}"/>
                        <c:param name="address" value="${v.address}"/>
                        <c:param name="services" value="${v.services}"/>
                        <c:param name="username" value="${v.username}"/>
                        <c:param name="password" value="${v.password}"/>
                    </c:url>
                    <a href="${vendordelete}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>