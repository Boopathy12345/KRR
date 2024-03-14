<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <title>Register</title>

<%
    String objects = (String) request.getAttribute("registerpopup");
    if (objects != null && objects.equals("createpopup")) { 
    	
%>
     <script type="text/javascript">
        function displayPopupMessage() {
            alert("Your email ID OR phone number already exists. Please use a different email id OR phone number.");
        }
        window.onload = function() {
            displayPopupMessage();
        };
    </script>
<%
    }
    else if(objects != null && objects.equals("worningcreatepopup")){
%>
	<script type="text/javascript">
        function displayPopupMessage() {
            alert("Your OTP doesn't match. Please try again.");
        }
        window.onload = function() {
            displayPopupMessage();
        };
    </script>
 <%
    }
 %>



</head>
<body>

     <div class="frm">
        <form action="userchack" method="post">           
                <h3>Register</h3>         
            <div class="na">
                <label for=fname>Name : </label><br>
				<input type="text" id="fname" name="name" required>
            </div>
            <div class="em">
                <label for=email>Email Id: </label><br>
				<input type="email" id="email" name="email" required>
            </div>
            <div class="pa">
                <label for=pass>Password : </label><br>
				<input type="password" id="pass" name="password" required>
            </div>
            <div class="pn">
                <label for=pnum>Phone Number : </label>
				<input type="tel" id="pnum" name="phonenumber" pattern="[0-9]{10}" required><br>
            </div>

            <div class="bu">
                <button>Register</button>
            </div>
            <div class="container">
                <div class="line"></div> <!-- First line -->
                <div class="word">OR</div> <!-- Centered Word -->
                <div class="line"></div> <!-- Second line -->
              </div>
           
            <div class="last">
                <span>Already have an account?</span><a href="login.jsp"> Login</a>
            </div>
        </form>
    </div>

</body>
</html>