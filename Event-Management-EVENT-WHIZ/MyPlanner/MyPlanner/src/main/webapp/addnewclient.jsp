<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Client Registration</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        
        body {
            background-color: #f5f5f5;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }
        h2 {
            font-size: 24px;
        }
        label {
            font-size: 18px;
        }
    </style>
</head>
<body>


	 <script>
        function toggleSubmit() {
            var registerButton = document.getElementById("register");
            var termsCheckbox = document.getElementById("terms_conditions");

            if (termsCheckbox.checked) {
                registerButton.disabled = false;
            } else {
                registerButton.disabled = true;
            }
        }
    </script>
    <div class="container">
        <h2 class="text-center">Client Registration Form</h2>
        <form action="registerclient" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            
            <div class="form-group">
                <label for="gender">Gender:</label><br>
                <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="genderMale" name="gender" value="Male" required>
                    <label class="form-check-label" for="genderMale">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="genderFemale" name="gender" value="Female" required>
                    <label class="form-check-label" for="genderFemale">Female</label>
                </div>
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth (MM-DD-YYYY):</label>
                <input type="date" class="form-control" id="dob" name="dob" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" class="form-control" id="phone" name="phone" required pattern="[0-9]{10}" maxlength="10">
                <small class="form-text text-muted">Please enter a 10-digit phone number.</small>
            </div>
            
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{6,}$">
                <small class="form-text text-muted">Password must be at least 6 characters long and contain at least one uppercase letter, one lowercase letter, and one special character.</small>
            </div>
            
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="terms_conditions" name="terms_conditions" onchange="toggleSubmit()" required>
                <label class="form-check-label" for="terms_conditions">I Agree to the <a href="terms.jsp" target="_blank">Terms and Conditions</a></label>
            </div>

            <button type="submit" class="btn btn-primary" id="register" disabled>Register</button>
        </form>
    </div>

   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
