<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>View Packeages</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<!-- Add Bootstrap CSS link -->

<link rel="stylesheet" type="text/css" href="header&footer.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<%
	String successMessage = (String) request.getAttribute("successMessage");
	%>
	<%
	String unsuccessMessage = (String) request.getAttribute("unsuccessMessage");
	%>

	<%
	if (successMessage != null) {
	%>
	<script>
        alert("<%=successMessage%>");
    </script>
	<%
	}
	%>

	<%
	if (unsuccessMessage != null) {
	%>
	<script>
        alert("Error: <%=unsuccessMessage%>
		");
	</script>
	<%
	}
	%>

	<nav class="navbar" style="background-color: #e3f2fd;">
		<!-- Navbar content -->
	</nav>


	<header class="header">

		<!-- Brand and Slogan-->
		<div class="header-left" style="margin-right: 25px;">
			<!-- Logo-->
			<a href="#default"><img src="mainLogo.png" alt="MyPlanner Image"
				class="logo" id="headlogo" height="100px" width="100px"></a>

		</div>

		<div class="navbar" id="Topnav">
			<a href="#default"><button class="active" type="button"
					id="bttn1">
					<b>Home</b>
				</button></a>
			<div class="dropdown">
				<button class="dropbtn">Services</button>
				<div class="dropdown-content">
					<a href="#">Awards</a> <a href="#">Candidates</a> <a href="#">About
						Award Ceremony</a> <a href="#">Nomination Result</a> <a href="#">Sponsors</a>
				</div>
			</div>
			<a href="#contact"><button type="button" id="bttn1">Gallery</button></a>
			<a href="#contact"><button type="button" id="bttn1">Contact
					Us</button></a> <a href="#about"><button type="button" id="bttn1">About
					Us</button></a>
			<!--<a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>-->
		</div>
		<div class="search">
			<form action="/search" method="get">
				<img src="search.png" class="searchimg" height="20px" width="20px">
				<input type="text" class="input" name="search data"
					placeholder="Find here" /> <input type="submit" id="searchbtn"
					value="Search">
			</form>
		</div>
		<!--User button with photo-->
		<div class="userbtn">
			<div class="userbtntext">
				<a href="useraccount.jsp" class="userlink">User Account</a>
			</div>
			<img src="uuser.png" class="userbtnimg" height="35px" width="35px">
		</div>

	</header>

	<div class="container">
		<h2>All Packages</h2>
		<div class="d-flex justify-content-between">
			<form action="viewPackDetails" method="get">
			
				<p class="d-inline-flex gap-1">
					<button type="submit" class="btn btn-primary"
						data-bs-toggle="button">View All Packages</button>
				</p>
			</form>


		</div>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>PID</th>
					<th>Package Name</th>
					<th>Price</th>
					<th>Description</th>

				</tr>
			</thead>
			<tbody>
				<!-- Loop through your booking data and generate rows for each booking -->
				<c:forEach items="${PackDetails}" var="pack">
					<tr>
						<td>${pack.pID}</td>
						<td>${pack.packName}</td>
						<td>${pack.price}</td>
						<td>${pack.description}</td>
						
			
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<hr style="background-color: black; height: 1px;">
	<footer>
		<div class="footer-container">

			<div class="footerhead1">
				<img src="mainLogo1.png" alt="logo" class="logo" id="footlogo"
					height="150px" width="150px">
				<p id="footerhead1des">
					We offer customized event planning services <br>tailored to
					your specific needs.
				</p>
				<div>
					<a href="#"><img src="fb.png" class="fimg"></a> <a href="#"><img
						src="instagram.png" class="fimg"></a> <a href="#"><img
						src="twitter.png" class="fimg"></a>

				</div>
			</div>
			<div class="footerhead" id="fhd2">
				<h2>For Customers</h2>
				<a href="#">Events</a> <a href="#">Consulting</a> <a href="#">Plan
					Events</a> <a href="#">Booking Venues</a> <a href="#">Reserve
					Services</a>

			</div>
			<div class="footerhead" id="fhd3">
				<h2>For Vendors</h2>
				<a href="#">Advertisement</a> <a href="#">Service info</a> <a
					href="#">Recomendation</a> <a href="#">Why should join</a>
			</div>
			<div class="footerhead" id="fhd4">
				<h2>We are</h2>
				<a href="#">About Us</a> <a href="#">Contact Us</a> <a href="#">What
					is Event Planing?</a>
			</div>


			<div class="footer-email">
				<h2>Connect with Us</h2>
				<button type="button" onclick="" Value="BOOK CONSULTATION"
					id="footerc-btn">BOOK CONSULTATION</button>
			</div>
		</div>
		<center>
			<div class="copyright">
				<h4>© 2023 MyPlanner. All rights reserved.</h4>
			</div>
		</center>

	</footer>


	<!-- Add Bootstrap JS and jQuery scripts -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</html>