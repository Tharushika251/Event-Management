<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<!-- Add Bootstrap CSS link -->
<link rel="stylesheet" type="text/css" href="header&footer.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.center-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.confirmation-box {
	text-align: center;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
	<div class="center-container">
		<div class="confirmation-box">
			<h2>Delete Package</h2>
			<p>Are you sure you want to delete ${param.pID} Package?</p>
			
			<form action="packageDelete" method="post">
				<input type="hidden" name="pID" value="${param.pID}">
				<button type="submit" class="btn btn-danger">Delete</button>
				<a href="adminPackView.jsp" class="btn btn-secondary">Cancel</a>
			</form>
		</div>
	</div>

</body>
</html>