<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<body>

<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-tasklist-96.png"
			alt="">
		<h1 class="display-5 fw-bold">Hotel Details</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Here You can edit the project details, add
				tasks to the project and you can edit or remove tasks.</p>
		</div>
	</div>
	
	<div id="mmenu_screen" class="container-fluid main_container d-flex">
		<div class="row flex-fill">
			<div class="col-sm-2 h-100">
			
			</div>
			<div class="col-sm-8 h-100">
				<div class="card">
					<div class="card-body">

	<table class="table table-striped pb-5">	
	  <thead>
	    <tr>
	      <th scope="col">Hotel ID</th>
		  <th Style = "display:none;"scope="col">Lab ID</th>
		  <th Style = "display:none;"scope="col">Patient ID</th>
	      <th scope="col">Hotel Name</th> 
	      <th scope="col">Location</th>
	      <th scope="col">Email</th>
	      <th scope="col">description </th>
	      <th scope="col"> update</th>
	      <th scope="col"> delete </th>
	    </tr>
	    
	    
	    
	  </thead>
	  
	  
	    <c:forEach items="${HotelDetails}" var="hotel">
            <tr>
                <td>${hotel.hid}</td>
                <td>${hotel.hname}</td>
                <td>${hotel.hemail}</td>
                <td>${hotel.harea}</td>
                <td>${hotel.hdescription}</td>
                <td class="align-middle">
	     
	
    <c:url value="updateHotel.jsp" var="hotelDetails">
        <c:param name="hid" value="${hotel.hid}"/>
        <c:param name="hname" value="${hotel.hname}"/>
        <c:param name="hemail" value="${hotel.hemail}"/>
        <c:param name="harea" value="${hotel.harea}"/>
        <c:param name="hdescription" value="${hotel.hdescription}"/>
    </c:url>
    <a href="${hotelDetails}">
        <input class="btn btn-primary" type="button" name="update" value="UPDATE">
    </a>
</td>
    <td class="align-middle" >	
			
			<form action="deleteHotel" method="POST">
		
		<input type="hidden" name="hid" value="${hotel.hid}">
			
			<input class="btn btn-outline-danger" type="submit"
					name="submit" value="CANCEL">
					</div>
			</form>	
    
    
</td>

            </tr>
        </c:forEach>
          
	    
	  <tbody>
 <form action="viewHotel" method="get">
     
        <input type="hidden" name="hid" id="hid">
      
   
    
  
 </form> 
 
		 <form action="adminView" method="get">
        <label for="hid">Enter Hotel ID:</label>
        <input type="text" name="hid" id="hid">
        <input type="submit" value="Search">
   
    
  
 </form> 
	
	</table>

	</div>
				</div>
			</div>
			<div class="col-sm-2 mmenu_screen--direktaction flex-fill">
				
			</div>
		</div>
	</div>

 
  
</body>
</html>