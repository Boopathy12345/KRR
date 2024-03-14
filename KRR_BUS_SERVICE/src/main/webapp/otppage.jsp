<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="otppage.css">
<title>Register OTP</title>
</head>
<body>

	<div class="main">
        <h5>A one-time password has been sent to your email. Please check it.</h5>
        <div class="hand_line">
            <h1>ENTER OTP</h1>
        </div>
        <div class="form_line">
            <form action="otpverify" method="GET" id="passwordForm">
            	<input type="hidden" id="fname" name="name" value="${data.getName()}">
            	<input type="hidden" id="email" name="email" value="${data.getEmail()}">
            	<input type="hidden" id="pass" name="password" value="${data.getPassword()}">
            	<input type="hidden" id="pnum" name="phonenumber" value="${data.getPhonenumber()}">
                <input class="digit-input" type="text" maxlength="1"  name="digit1" required autofocus>
                <input class="digit-input" type="text" maxlength="1"  name="digit2" required>
                <input class="digit-input" type="text" maxlength="1"  name="digit3" required>
                <input class="digit-input" type="text" maxlength="1"  name="digit4" required>
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

</body>
</html>