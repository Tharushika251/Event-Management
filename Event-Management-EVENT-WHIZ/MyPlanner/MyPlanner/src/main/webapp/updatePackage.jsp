<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
Connection conn = null;
ResultSet resultSet = null;

String url = "jdbc:mysql://localhost:3306/myplanner";
String user = "root";
String password = "admin";

try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);

	String query = "SELECT idhotels,hname FROM hotels";
	Statement statement = conn.createStatement();
	resultSet = statement.executeQuery(query);
} catch (Exception e) {
	System.out.println("Database connection is unsuccesful!!!");
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Package</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous">
	
</script>
</head>
<body>

	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Update
										Package</p>

									<form action="packageUpdate" method="POST" class="mx-1 mx-md-4">

										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Hotel
													Name</label> <select name="idhotels" id="form3Example1c"
													class="form-control">
													<option value="Select">Select a Hotel</option>

													<%
													while (resultSet.next()) {
														int hotelID = resultSet.getInt("idhotels");
														String hotelName = resultSet.getString("hname");
													%>

													<option value="<%=hotelID%>"><%=hotelName%> -
														<%=hotelID%></option>
													<%
													}
													%>

												</select>
											</div>
										</div>
										<input type="hidden" name="selectedHotelID"
											id="selectedHotelID" value="" />

										<script>
											// Get the select element
											var selectElement = document
													.getElementById("form3Example1c");

											// Add an onchange event handler to update the hidden input field
											selectElement.onchange = function() {
												var selectedHotelID = selectElement.value;
												document
														.getElementById("selectedHotelID").value = selectedHotelID;
											};
										</script>
										
										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												 <input name="pID" type="hidden" id="pID" value="${param.pID}" class="form-control" />

											</div>
										</div>

										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Package
													Name</label> <input name="packName" type="text" id="form3Example1c" value="${param.packName}"
													class="form-control" />

											</div>
										</div>

										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Price
												</label> <input name="price" type="text" id="form3Example3c" value="${param.price}"
													class="form-control" />

											</div>
										</div>

										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Description</label>
												<input name="description" type="text" id="form3Example1c" value="${param.description}"
													class="form-control" />

											</div>
										</div>

										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" class="btn btn-primary btn-lg">Update</button>
										</div>

									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
										class="img-fluid" alt="Sample image">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
