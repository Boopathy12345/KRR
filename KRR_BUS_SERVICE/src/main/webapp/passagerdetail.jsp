<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="passagerdetail.css">
<title>Insert title here</title>
</head>
<body>
    <div class="nav">
        <a href="index.jsp">Logout</a>
    </div>
    <div class="main">

        <form action="finall" method="post">
        
        	 <div class="hand1">
                <h4>Passenger Information</h4>
            </div>
            <div class="hand1_info">
                <div class="hand1_info_line1">
                	<input type="hidden" name="busno" value="${page.getBusno()}">
 			<input type="hidden" name="date" value="${page.getDate()}">
  			<input type="hidden" name="fromaddress" value="${page.getFromaddress()}">
  			<input type="hidden" name="toaddress" value="${page.getToaddress()}">
 		 	<input type="hidden" name="fromtime" value="${page.getFromtime()}">
  			<input type="hidden" name="totime" value="${page.getTotime()}">
  			<input type="hidden" name="bustype" value="${page.getBustype()}">
  			<input type="hidden" name="seatno" value="${page.getBuscapacity()+1-page.getAvailableseat()}">
           
                    <label for="name">Name:</label><br>
                    <input class="hand1_info_line1_input" type="text" id="name" name="name" placeholder="Name" required>
                </div>
                <div class="hand1_info_line2">
                    <label for="gender">Gender</label><br>
                    <input class="hand1_info_line2_input" type="radio" name="gender" value="Male" id="gender">
                    <label>Male</label>
                    <input type="radio" id="gender" name="gender" value="Female">
                    <label>Female</label>                    
                </div>

                <div class="hand1_info_line3">
                    <label for="age">Age:</label><br>
                    <input class="hand1_info_line3_input" type="number" id="age" name="age" placeholder="Age" required>
                </div>
            </div><br><br>

            <div class="hand2">
                <h4>Contact Details</h4>
            </div>
            <div class="hand2_info">
                <div class="hand2_info_line1">
                    <p>Your ticket will be sent to these details</p>
                </div>
                <div class="hand2_info_line2">
                    <label for="email">Email:</label><br>
                    <input class="hand2_info_line2_input" type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="hand2_info_line3">
                    <label for="phone">Phone:</label><br>
                    <input class="hand2_info_line3_input" type="tel" id="phone" name="phonenumber" minlength="10" maxlength="10" placeholder="Phone Number" required>
                </div>
            </div>

            <div class="fooding">
                <div class="fooding_line1">
                    By clicking on proceed, I agree that I have read and understood the TnCs and the Privacy<a href="">Policy</a>
                </div>
                <button class="fooding_line2">Book Now</button>
            </div>
        </form>    
    </div>
    <div class="marquee_div">
        <marquee behavior="loop" direction="left" scrollamount="10"><h4>We were India's Favourite Bus Service Company in year 2016 and we also
            received India's Favourite Bus Service Award from Holiday IQ - March 2016 at New Delhi.
        </h4></marquee>
    </div>
    <div class="finall_fooding">
        <div class="finall_fooding_div">
            <div>@2023 KRR SERVICES PVT.LTD.</div>
            <div>Country India</div>
        </div>
    </div>
</body>


</html>