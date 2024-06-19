<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            width: 300px;
            text-align: center;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="card">
        <img src="booking.jpg" alt="Booking" style="max-width: 100%;">
        <h3>Booking</h3>
        <a href="viewbooking.jsp" class="btn btn-primary">Go to Booking</a>
    </div>

    <div class="card">
        <img src="create_event.jpg" alt="Create Event" style="max-width: 100%;">
        <h3>Create Event</h3>
        <a href="create_event.html" class="btn btn-primary">Create Event</a>
    </div>
    
     <div class="card">
        <img src="create_event.jpg" alt="Create Event" style="max-width: 100%;">
        <h3>Create Package</h3>
        <a href="viewPackage.jsp" class="btn btn-primary">Create Package</a>
    </div>
    
</body>
</html>
