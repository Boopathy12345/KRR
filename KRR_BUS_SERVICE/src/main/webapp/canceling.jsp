<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="canceling.css">
<title>Ticket Canceling</title>
</head>
<body>

	  <%
    String objects = (String) request.getAttribute("popupdata");
    if (objects != null && objects.equals("emailnotvalid")) { 
    	
    %>
     <script type="text/javascript">
        function displayPopupMessage() {
            alert("Email and Booking Number doesd't  match. Please try again.");
        }
        window.onload = function() {
            displayPopupMessage();
        };
    </script>
  <%
    }
  %>
  
  <%
    String objects1 = (String) request.getAttribute("data");
    if (objects1 != null && objects1.equals("otpmissmathch")) { 
    	
    %>
     <script type="text/javascript">
        function displayPopupMessage() {
            alert("OTP doesd't  match. Please try again.");
        }
        window.onload = function() {
            displayPopupMessage();
        };
    </script>
  <%
    }
  %>
  
  
    <div class="nav">
        <a href=""><h3 class="Cancelling">Booking</h3></a>
        <a href=""><h3 class="Ticket_Info">Ticket Info</h3></a>
        <a href=""><h3 class="Contact">Contact</h3></a>
        <a href="index.jsp"><h3 class="Logout">Logout</h3></a>
    </div>

    <div class="cancel_box">
        <div class="cancel_box_line1">
            <h3>Cancel your Ticket</h3>
        </div>

        <div class="cancel_box_line2">
            <form action="cancelpageverify">
                <div class="form_line1">
                    <div class="form_sec1">
                        <label for="ticket_no">ENTER BOOKING NO</label>
                        <input type="text" id="ticket_no" name="bookingnumber" minlength="4" maxlength="4"  required>   
                    </div> 
                    <div class="form_sec2">
                        <label for="email">EMAIL ID</label><br>
                        <input type="email" id="email" name="email"  required>
                    </div>
                </div>
                <div class="form_line2">
                    <button type="submit">SELECT PASSENGERS</button>
                </div>

            </form>
        </div>
    </div>



	<%
    String value = (String) request.getAttribute("data");
    if (value != null && value.equals("otpBox")) { 
    	
    %>
    
    <div class="otp_div">
    <div class="verify_page">
        <h4>ENTER OTP</h4>
        <form action="otpdataverify" method="GET" id="passwordForm">
            <div>
            <input type="hidden" id="ticket_no" name="bookingnumber" value=${data1.getBookingnumber() } >
            <input type="hidden" id="mobile_no" name="email" value=${data1.getEmail() } >
            <input class="digit-input" type="text" maxlength="1"  name="digit1" required autofocus>
            <input class="digit-input" type="text" maxlength="1"  name="digit2" required>
            <input class="digit-input" type="text" maxlength="1"  name="digit3" required>
            <input class="digit-input" type="text" maxlength="1"  name="digit4" required>
            </div>
            <br><br>
            <div class="btn">
                <button>SUBMIT</button>
            </div> 
        </form>
    </div>
    </div>
    <script>
        var inputs = document.querySelectorAll('.digit-input');

        inputs.forEach(function(input, index) {
            input.addEventListener('input', function() {
                if (this.value.length === 1) {
                    if (index < inputs.length - 1) {
                        inputs[index + 1].focus();
                    } else {
                        this.blur();
                    }
                }
            });
        });
    </script>
    
     <%
    	}
  	 %>
  	 
  	 
  	 
  	 <%
    String suc = (String) request.getAttribute("data");
    if (suc != null && suc.equals("success")) { 
    	
    %>
  	 <div class="ok_box_div">
        <div class="ok_box">
            <div class="image_div">
                <img src="photo/tick_mark-transformed.jpeg" alt="">
            </div> 
            <h4>Ticket successfully cancelled!!!</h4>
            <h5>Your refund amount has been sent to your account. Within the next 24 hours.</h5>
            <a href="home.jsp">OK</a>
        </div>
    </div>
    
    <%
    	}
  	 %>
</body>
</html>