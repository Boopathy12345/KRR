<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>login</title>
    
     <%
    String objects = (String) request.getAttribute("loginpopup");
    if (objects != null && objects.equals("createpopup")) { 
    	
    %>
     <script type="text/javascript">
        function displayPopupMessage() {
            alert("Email and password do not match. Please try again.");
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
       <form action="login" method="post">
           
                <h3>Login</h3>
         
            <div class="em">
                <label for="email">EMAIL : </label><br>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="pa">
                <label for="pass">PASSWORD : </label><br>
                <input type="password" id="pass" name="password" required>
            </div>
            <div class="bu">
                <button>Login</button>
            </div>
            <div class="container">
                <div class="line"></div> <!-- First line -->
                <div class="word">OR</div> <!-- Centered Word -->
                <div class="line"></div> <!-- Second line -->
              </div>
           
            <div class="last">
                <span>Don't have an account?</span><a href="register.jsp"> Sign up</a>
            </div>
        </form>
    </div>
    
</body>
</html>