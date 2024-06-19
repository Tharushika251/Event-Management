<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
	<%
	String hid = request.getParameter("hid");
	String hname = request.getParameter("hname");
	String hemail = request.getParameter("hemail");
	String harea = request.getParameter("harea");
	String hdescription = request.getParameter("hdescription");
	%>

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
										Hotel</p>
									<form action="update" method="POST" class="mx-1 mx-md-4">

										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<input type="hidden" name="hid" value="${param.hid}">
											</div>
										</div>


										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="hname">Hotel Name</label> <input
													name="hname" type="text" id="form3Example1c"
													value="${param.hname}" class="form-control" />

											</div>
										</div>


										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="hemail">Email</label> <input
													name="hemail" type="text" id="form3Example1c"
													value="${param.hemail}" class="form-control" />

											</div>
										</div>

										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="harea">Location</label> <input
													name="harea" type="text" id="form3Example1c"
													value="${param.harea}" class="form-control" />

											</div>
										</div>


										<div class="mb-3">
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="harea">Description</label> <input
													name="hdescription" type="text" id="form3Example1c"
													value="${param.hdescription}" class="form-control" />

											</div>
										</div>


										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" class="btn btn-primary btn-lg"
												value="Update My Data">Updates</button>
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