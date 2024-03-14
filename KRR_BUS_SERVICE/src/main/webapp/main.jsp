<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>KRR SERVICE</title>
    
    <script>
    window.onload = function() {
        var alertShown = false;
        
        // Function to show alert message only once
        function showAlertMessage() {
            if (!alertShown) {
                alert("Please login to your account.");
                alertShown = true;
            }
        }
        
        // Call showAlertMessage when the button is clicked
        document.getElementById("searchButton").onclick = showAlertMessage;
    };
    </script>
    
</head>
<body>
    <div class="contaner">
        <img src="photo/launch_page_img.jpg">
        <div class="nav">
            <a href=""><h3 class="about">About</h3></a>
            <a href=""><h3 class="content">content</h3></a>
            <a href="login.jsp"><h3 class="login">Login</h3></a>
            <a href="register.jsp"><h3 class="register">Register</h3></a>
        </div>
        <div>
            <p class="Welocome">Welocome to KRR Bus Services</p>
            <p class="Welocomeline2">MOST TRUSTED AND</p>
            <p class="Welocomeline3">VALUABLE COMPANY</p>
            <p class="Welocomeline4">KRR Bus Services is the world's largest online bus ticket booking Service trusted by over 25 million happy customers globally. KRR Bus Services offers bus ticket booking through it's website,ios and Android mobile apps for all majar routes.</p>
        </div>
    </div>

    <div class="serachbox">
        <h4 class="serachboxline1">India's NO.1 online Bus Ticket Booking Site</h4>
        <div class="serachboxform">
            <form action="" method="post">
                <input class="input1"  type="text" name="fromaddress" placeholder="From">
                <input class="input2" type="text" name="toaddress" placeholder="To">
                <input class="input3" type="date" name="date" placeholder="date">
                <button id="searchButton" class="input4" onclick="alertmessage">Search Buses</button>
                
            </form>
        </div>
    </div>

    <div class="marqueetag">
        <marquee behavior="loop" direction="left" scrollamount="10"><h4>We were India's Favourite Bus Service Company in year 2016 and we also
             received India's Favourite Bus Service Award from Holiday IQ - March 2016 at New Delhi.
        </h4></marquee>
    </div>

    <div class="rootbox">
        <div class="line1">
            <div class="root1">
                <img src="photo/bangalore1.jpg">
                <div class="bus1">
                    <h4>Bus From Bangalore To</h4>
                    <p>Chennai, Hyderabad,Goa, Coimbatore, Mumbai</p>
                </div>
            </div>
            <div class="root2">
                <img src="photo/chennai.jpg">
                <div class="bus2">
                    <h4>Bus From Chennai To</h4>
                    <p>Bangalore, Coimbatore, Madurai, Hyderabad, Trichy</p>
                </div>
            </div>
            <div class="root3">
                <img src="photo/hyderabad.jpeg">
                <div class="bus3">
                    <h4>Bus From Hyderabad To</h4>
                    <p>Bangalore, Chennai, Mumbai, Pune, Vijayawada</p>
                </div>
            </div>
            <div class="root4">
                <img src="photo/madurai.jpg">
                <div class="bus4">
                    <h4>Bus From Madurai To</h4>
                    <p>Bangalore, Chennai, Mumbai, Pune, Kolkata</p>
                </div>
            </div>
        </div>    

        <div class="line2">

            <div class="root1">
                <img src="photo/Pune.jpg">
                <div class="bus1">
                    <h4>Bus From Pune To</h4>
                    <p>Goa, Bangalore, Nagpur, Hyderabad, Mumbai</p>
                </div>
            </div>

            <div class="root2">
                <img src="photo/dehali.jpg">
                <div class="bus2">
                    <h4>Bus From Delhi To</h4>
                    <p>Lucknow, Dehradun, Manali, Kanpur, Jaipur</p>
                </div>
            </div>

            <div class="root3">
                <img src="photo/mumai3.png">
                <div class="bus3">
                    <h4>Bus From Mumbai To</h4>
                    <p>Bangalore, goa, Pune, Indore, Ahmedabad</p>
                </div>
            </div>

            <div class="root4">
                <img src="photo/kerala.jpeg">
                <div class="bus4">
                    <h4>Bus From Kerala To</h4>
                    <p>Bangalore, Chennai, Mumbai, Vijayawada</p>
                </div>
            </div>

        </div>

        <div class="line3">

            <div class="root1">
                <img src="photo/Ahmedabad.jpg">
                <div class="bus1">
                    <h4>Bus From Ahmedabad To</h4>
                    <p>Mumbai, Rajkot, Surat, Pune, Indore</p>
                </div>
            </div>

            <div class="root2">
                <img src="photo/coimbatore.jpg">
                <div class="bus2">
                    <h4>Bus From Coimbatore To</h4>
                    <p>Bangalore, Chennai, Mumbai, Pondicherry, Nagercoil</p>
                </div>
            </div>

            <div class="root3">
                <img src="photo/Kolkata.jpg">
                <div class="bus3">
                    <h4>Bus From Kolkata To</h4>
                    <p>Durgapur, Asansol, Siliguri, Bhubaneshwar</p>
                </div>
            </div>

            <div class="root4">
                <img src="photo/vijayawada1.jpg">
                <div class="bus4">
                    <h4>Bus From Vijayawada To</h4>
                    <p>Bangalore, Chennai, Pune, Kolkata</p>
                </div>
            </div>


        </div>
     
    </div>

    <div class="detail">

        <div class="detail_line1">
            <div class="detail_line_start">
                <h4>Make Your Bus Booking Smoother With KRR Bus Services</h4>
                <p>Imagine the thrill of feeling the wind in your hair, while looking at the changing scenes from a window-
                   seat, in a bus. Makes you smile, doesn’t it? Bus journeys are always filled with such memorable and fun
                   moments, which we look back at, fondly. And in our continuous endeavour to bring to our customers
                   the best travel experiences, we now offer smarter bus booking services on our platform. Read on to
                   know why you should make your upcoming bus ticket bookings, online on MakeMyTrip.
                </p>
            </div>
            <div class="detail_line_end">
                <h4>Reasons to Choose KRR Bus Services for Bus Booking:</h4>
                <p>
                    MySafety Assurance: All the buses available on our platform are MySafety-assured with regular
                    sanitization of the vehicle carried out after every trip, regular temperature checks done on
                    passengers before boarding the bus, and the staff following all safety protocols.
                    Customer First Policy: When you complete your online bus booking on MakeMyTrip, be sure of
                    getting the highest standards of customer service, including regular trip-related updates on your
                    device.
                    Competitive Prices:Enjoy the best partner offers on your online bus reservation on our platform, and
                    choose from over 70,000 private and government-run buses.
                    Alternate Routes Policy: You can make your online booking bus on alternate routes, on our platform,
                    in case no direct route buses are available
                </p>
            </div>
        </div>

        <div class="detail_line2">
            <div class="detail_line_start">
                <h4>Advantages of booking bus tickets online on KRR Bus Services</h4>
                <p>
                    The most important part of any trip is planning because if you plan well, you are sure to enjoy your trip
                    better. And online bus bookings allow you just that. You can check for bus routes to your destination,
                    compare prices with other nearby routes, choose from AC/non-AC buses as per your preference and
                    more, all within a few minutes and with just a few taps on your phone. You can also avail of immediate
                    cancellation in case of a sudden change in plans, within a few seconds, and without the hassle of falling
                    in line for counter bus ticket booking. Online bus reservation lets you have an m-Ticket which again
                    has its advantages. You do not need to carry a physical ticket, so the chances of forgetting it back at
                    home are not there anymore. All you have to do is show your mobile screen at the counter, displaying
                    the m-Ticket and you are sorted. Oh! And make sure to carry your government identity proof with you
                    at all times.
                </p>
            </div>
            <div class="detail_line_end">
                <h4>What’s more?</h4>
                <p>Online bus ticket booking also gives you the freedom to choose your mode of payment. No more do
                    you have to carry cash or pay for your tickets in cash. You can avail a variety of payment modes when
                    you choose to book bus online on MakeMyTrip. Here below is a list of the payment modes available on
                    our platform: Debit Card, Credit Card & Net Banking with banks like: HDFC Bank, ICICI Bank, Axis
                    Bank, State Bank of India and many more, UPI mode of payment, Trip Money, Wallet & more , Google
                    Pay, PhonePe, Amazon Pay, MobiKwik Wait, that’s not all! If you choose to make your bus booking
                    online, you also get to choose from over 70,000 vehicles available at your service, with features to
                    cater to a wide range of audience. The most popular bus categories on our platform include:
                    AC Bus: Booking bus tickets for AC buses is ideal for travellers looking for long-distance travel in the
                    warmer parts of India and preferring comfort and class in road journeys.
                    Non-AC Bus: Online bus bookings on non-AC buses are perfect for those budget trips you take with
                    your friends to nearby destinations/
                    Volvo AC Seater Bus: Catering to almost all popular routes, this is the best choice for travellers
                    looking for comfort sans the air-conditioning service.
                    Volvo AC Bus: Running on most of the popular routes in India, making online bus reservation on a
                    Volvo AC bus, is the ideal choice for the comfort-seeking traveller who is ready to shell out a bit more
                    on his/her bus booking.
                    AC Sleeper Bus: Bus bookings on AC sleeper buses are the right choice for long-distance or overnight
                    travel, with the best-in-class comfort.
                    Sleeper Seater Bus: Depending on your choice, make sleeper seater bus bookings when you are tired
                    and are looking to rest while travelling.
                    AC Luxury Bus: The name itself is enough! Opt for this bus category while booking bus tickets online,
                    if the best luxury on wheels is what your heart wants.
                    Deluxe Bus: Enjoy luxury road journeys on budget when you opt for this category while booking bus
                    tickets online.
                    Sleeper: Suitable for budget travelling across long distances, this category is quite popular with the
                    young ones itching to explore the country.
                    Smart Bus: If you’re worried about the long-interval breaks during road journeys by bus, worry no
                    more. Smart buses come with in-built toilets that are practical to use and are ideal for long-distance
                    journeys.
                </p>
            </div>
        </div>

        <div class="detail_line3">
            <div class="detail_line_start">
                <h4>How to Book Bus Online on KRR Bus Services:</h4>
                <p>Booking bus tickets online is super easy and comfortable. All you have to do is follow the steps below:
                    Tap on the ‘Trains & Bus’ icon on the MakeMyTrip homepage
                    Select the ‘Book Bus Tickets’ tab
                    Enter details of your bus journey and tap on the ‘SEARCH’ button
                    Choose your preferred bus service
                    Select your seat next
                    Choose the nearest pick-up and drop-off points
                    Enter traveller details and coupon code
                    You can even choose to insure your journey so that you will be covered in case of an accident or loss of
                    luggageOnce you book bus ticket and get confirmation, we will send you an m-Ticket on your mobile
                    and an e-Ticket on the email ID entered while booking bus ticket online.
                </p>
            </div>
            <div class="detail_line_end">
                <h4>MySafety Assurance on Bus Bookings:</h4>
                <p>All the buses available on our platform follow stringent safety protocols and government-mandated
                    social distancing guidelines, with the primary focus on customer safety.
                    All customers have to undergo temperature checks mandatorily before boarding the bus.
                    All the buses come with hand sanitisers.
                    All the staff wear masks and gloves to minimize direct contact.
                    The vehicle is thoroughly disinfected after the completion of every bus ride.
                    Seats are allocated, keeping the social distancing norms in place.
                </p>

            </div>
        </div>

        <div class="detail_line4">
            <div class="detail_line_start">
                <h4>Why KRR Bus Services for Bus Booking?</h4>
                <p>The leading player in online Bus bookings in India, MakeMyTrip offers lowest fares, exclusive
                    discounts and a seamless online booking experience. Desktop or mobile site is a delightfully customer
                    friendly experience, and with just a few clicks you can complete your booking.
                </p>

            </div>
            <div class="detail_line_end">
                <h4>Booking Bus Ticket with KRR Bus Services</h4>
                <p>With more than 12,000 bus routes spread across India and integration with over 1300 bus operators,
                    MakeMyTrip's online bus reservation system is simpler and smarter. It provides you a wide range of
                    facilities, right from choosing your pickup point to your preferred choice of seat (for instance, luxury
                    buses with sleeper berths). You can also choose from the widest range of available buses like
                    Mercedes, Volvo, Volvo AC, AC luxury, Deluxe, Sleeper, Express and other private buses. The payment
                    options are easier too- you can use either debit/credit card facility or net-banking. Not just that, in
                    case of any change in your travel plan, bus tickets can be cancelled online. So, next time you need not
                    stand in long queues or search at different bus ticket counters. You can directly book bus tickets
                    online with MakeMyTrip.com and stay assured.
                </p>
            </div>
        </div>

        <div class="detail_line5">
            <div class="detail_line_start">
                <h4>Bus Tickets Online</h4>
                <p>MakeMyTrip is India's leading player for Bus bookings. With the cheapest fare guarantee, experience
                    great value at the lowest price. Instant notifications ensure current bus schedule, instant fare drops,
                    amazing discounts, instant refunds and rebook options, price, Operator reviews and many more
                    interesting features.
                </p>
            </div>
            <div class="detail_line_end">

            </div>
        </div>
    </div>

   <div class="footing">
         <div>
            @ 2023 KRR BUS SERVICES PVT.LTD.
             Counter India
         </div>
        
   </div>



</body>
</html>
