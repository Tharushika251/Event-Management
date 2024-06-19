<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Booking</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" type="text/css" href="header&footer.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
<header class="header">
       
    <!-- Brand and Slogan-->
    <div class="header-left" style="margin-right: 25px;">
      <!-- Logo-->
    <a href="#default"><img src="mainLogo.png" alt="MyPlanner Image" class="logo" id="headlogo" height="100px" width="100px" ></a>
    
    </div>

    <div class="navbar" id="Topnav">
      <a href="#default"><button class="active" type="button" id="bttn1"><b>Home</b></button></a>
      <div class="dropdown">
        <button class="dropbtn">Services</button>
        <div class="dropdown-content">
          <a href="#">Awards</a>
          <a href="#">Candidates</a>
          <a href="#">About Award Ceremony</a>
          <a href="#">Nomination Result</a>
          <a href="#">Sponsors</a>
        </div>
      </div>
      <a href="#contact"><button  type="button" id="bttn1">Gallery</button></a>
      <a href="#contact"><button  type="button" id="bttn1">Contact Us</button></a>
      <a href="#about"><button  type="button" id="bttn1">About Us</button></a>
      <!--<a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>-->
    </div>
    <div class="search">
      <form action="/search" method="get">
        <img src="search.png" class="searchimg" height="20px" width="20px">
        <input type="text" class ="input" name="search data" placeholder="Find here" />
        <input type="submit"id="searchbtn" value="Search">
      </form>
    </div>
    <!--User button with photo-->
    <div class="userbtn">
      <div class="userbtntext"><a href="#login" class="userlink">Login/SignUp</a></div>
      <img src="uuser.png" class="userbtnimg" height="35px" width="35px">
    </div>
    
  </header>
    <div class="center-container">
        <div class="confirmation-box">
            <h2>Delete Booking</h2>
            <p>Are you sure you want to delete this booking?</p>
            <form action="deletebooking" method="post">
                <input type="hidden" name="booking_id" value="${param.booking_id}">
                <button type="submit" class="btn btn-danger">Delete</button>
                <a href="viewbooking.jsp" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
    <hr style="background-color: black;height:1px;">
<footer>
  <div class="footer-container">
   
      <div class="footerhead1">
        <img src="mainLogo1.png" alt="logo" class="logo" id="footlogo" height="150px" width="150px" > 
        <p id="footerhead1des">We offer customized event planning services <br>tailored to your specific needs.</p>
        <div>
          <a href="#"><img src="fb.png" class="fimg"></a>
            <a href="#"><img src="instagram.png" class="fimg"></a>
            <a href="#"><img src="twitter.png" class="fimg"></a>
            
        </div>
      </div>
      <div class="footerhead" id="fhd2">
        <h2>For Customers</h2>
        <a href="#">Events</a>
            <a href="#">Consulting</a>
            <a href="#">Plan Events</a>
            <a href="#">Booking Venues</a>
            <a href="#">Reserve Services</a>
            
      </div>
      <div class="footerhead" id="fhd3">
        <h2>For Vendors</h2>
          <a href="#">Advertisement</a>
          <a href="#">Service info</a>
          <a href="#">Recomendation</a>
          <a href="#">Why should join</a>
      </div>
      <div class="footerhead" id="fhd4">
        <h2>We are</h2>
          <a href="#">About Us</a>
          <a href="#">Contact Us</a>
          <a href="#">What is Event Planing?</a>
      </div>
      
    
    <div class="footer-email">
        <h2>Connect with Us</h2>
         <button type="button" onclick="" Value="BOOK CONSULTATION" id="footerc-btn">BOOK CONSULTATION</button>
    </div>
  </div>
  <center>
    <div class="copyright"><h4>© 2023 MyPlanner. All rights reserved.</h4></div>
  </center>
  
 </footer>

    <!-- Add Bootstrap JS and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

