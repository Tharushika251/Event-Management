<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Package Details</title>

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
<body>

	<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-tasklist-96.png"
			alt="">
		<h1 class="display-5 fw-bold">Package Details</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Here You can edit the Package details.</p>
		</div>
	</div>

	<div id="mmenu_screen" class="container-fluid main_container d-flex">
		<div class="d-grid gap-2 d-md-block">
			<form action="adminViewPack" method="get">
				<button class="btn btn-primary btn-lg" type="submit">View Details</button>
			</form>
	
		</div>
		<div class="row flex-fill">
			<div class="col-sm-2 h-100"></div>

			<div class="col-sm-8 h-100">

				<div class="card">
					<div class="card-body">

						<table class="table table-striped pb-5">
							<thead>
								<tr>
									<th Style="display: none;" scope="col">ID</th>
									<th scope="col">Package ID</th>
									<th scope="col">Package Name</th>
									<th scope="col">Price</th>
									<th scope="col">Description</th>
									<th scope="col">Update</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>

							<c:forEach items="${PackDetails}" var="pack">
								<tr>
									<td>${pack.pID}</td>
									<td>${pack.packName}</td>
									<td>${pack.price}</td>
									<td>${pack.description}</td>
									<td class="align-middle"><c:url value="updatePackage.jsp"
											var="PackDetails">
											<c:param name="pID" value="${pack.pID}" />
											<c:param name="packName" value="${pack.packName}" />
											<c:param name="price" value="${pack.price}" />
											<c:param name="description" value="${pack.description}" />
										</c:url> <a href="${PackDetails}"> <input class="btn btn-primary"
											type="button" name="update" value="UPDATE">
									</a></td>
									<td class="align-middle"><c:url value="deleteMsg.jsp"
											var="PackDetails">
											<c:param name="pID" value="${pack.pID}" />

										</c:url> <a href="${PackDetails}"> <input class="btn btn-danger"
											type="button" name="delete" value="DELETE">
									</a></td>
								</tr>
							</c:forEach>


						</table>

					</div>
				</div>
			</div>
			<div class="col-sm-2 mmenu_screen--direktaction flex-fill"></div>
		</div>
	</div>



</body>
</html>