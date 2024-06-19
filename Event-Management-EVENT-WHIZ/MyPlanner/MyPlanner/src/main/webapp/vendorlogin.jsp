<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Vendor Login</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!--JavaScript Bundle with popper-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous">
	
</script>
         
   
</head>
<body class="bg-light">

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



<section class="text-center text-lg-start">

<style>

.cascading-right {
	margin-right: -50px;
}

@media ( max-width : 991.98px) {
	.cascading-right {
		margin-right: 0;
	}
}
</style>


		<div class="container py-4">
			<div class="row g-0 align-items-center">

				<div class="col-lg-4 m-4 mb-lg-2">
					<img src="mainLogo.png" class="w-100 rounded-4 shadow-4" alt="***" />
				</div>

				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="card cascading-right"
						style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
						<div class="card-body p-5 shadow-5 text-center">
							<h2 class="fw-bold mb-5">Vendor SignIn</h2>
							<form action="loginvendor" method="post">
								<!-- 2 column grid layout with text inputs for the first and last names -->

								<!-- Email input -->
								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example3">UserName</label>
									<input type="text" id="form3Example3" class="form-control"
										placeholder="Enter valid User Name" name="uid" required/>
								</div>

								<!-- Password input -->
								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4">Password</label>
									<input type="password" id="form3Example4" class="form-control"
										placeholder="Enter a valid Password" name="pass" required/>
								</div>

								<!-- Submit button -->
								<button type="submit" class="btn btn-primary btn-block mb-4">
									SignIn</button>
							</form>

							<!-- Register buttons -->
							<div class="text-center">
								<p>or sign up with:</p>

								<a href="clientlogin.jsp" style="text-decoration: none;">
									<button type="button" class="btn btn-secondary btn-block mr-4">SignIn
										as Client</button>
								</a> <a href="addnewvendor.jsp" style="text-decoration: none;">
									<button type="button" class="btn btn-success btn-block m-2">Create
										Account</button>
								</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
