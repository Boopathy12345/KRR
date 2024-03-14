<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>    
    <%@ page import="com.product.home.ENTITY.BUSINFO" %>
    <%@ page import="java.time.LocalDate" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="buslistyouer.css">
<title>Insert title here</title>

     <%
     LocalDate now = LocalDate.now();
	 LocalDate maxDate = now.plusDays(60); 
	 String nowdate = now.toString(); 
	 String lastdate = maxDate.toString();
	%>



</head>
<body>




<div class="nav">
        <form action="businfo" method="post">
            <input type="text" name="fromaddress" placeholder="Form">
            <input type="text" name="toaddress" placeholder="To">
            <input type="date" min="<%= nowdate %>" max="<%=lastdate %>" name="date" >
            <button>Search</button>
        </form>
        <a href="index.jsp" class="logout">Logout</a>
        
    </div>

    <div class="total">
        <div class="side_add">

        </div>

        <div class="main">

            <div class="centre_add">

            </div>

            <div class="gap_box">

            </div>
           
             <%
        		List<BUSINFO> user = (List<BUSINFO>) request.getAttribute("user");
        		List<Integer> count1 = (List<Integer>) request.getAttribute("count1");

        		if (user != null && count1 != null) {
            	for (int i = 0; i < user.size(); i++) {
       		 %>
            
            <div class="bus_detail">

                <div class="bus_line1">
                    <div class="line1_sec1">
                        <p class="line1_sec1_p">Bus No: </p>
                        
                        <p>	<%= user.get(i).getBusno() %>, <%= user.get(i).getBustype() %></p>                        
                    </div>

                    <div class="line1_sec2">
                        <P>KRR BUS SERVICES</P>
                    </div>

                    <div class="line1_sec3">
                        <p>Rs.<%=user.get(i).getAmount()%></p>
                    </div>

                </div>

                 <div class="bus_line2">

                    <div class="line2_sec1">
                        <p class="line2_sec1_p">Starting Point: </p>
                        <p><%=user.get(i).getFromaddress()%></p>
                    </div>

                    <div class="line2_sec2">
                        <p><%=user.get(i).getFromtime()%> --------- <%=user.get(i).getDuration()%> --------- <%=user.get(i).getTotime()%></p>
                    </div>

                    <div class="line2_sec3">
                        <p class="line2_sec3_p">Ending Point: </p>
                        <p><%=user.get(i).getToaddress()%></p>
                    </div>

                </div>

                <div class="bus_line3">

                    <div class="line3_sec1">
                        <p class="line3_sec1_p">Bus Capacity:</p>
                        <p><%=user.get(i).getCapacity()%></p>
                    </div>

                    <div class="line3_sec2">
                        <p class="line3_sec2_p">Seat Availability: </p>
                        <p><%=count1.get(i)%></p>
                    </div>

                     <form action="youerbus"  class="line3_sec3" method="post">
                        <input type="hidden" name="busno" value="<%= user.get(i).getBusno()%>">
                        <input type="hidden" name="date" value="${date}">
                        <input type="hidden" name="fromaddress" value="<%=user.get(i).getFromaddress()%>">
                        <input type="hidden" name="toaddress" value="<%=user.get(i).getToaddress()%>">
                        <input type="hidden" name="fromtime" value="<%=user.get(i).getFromtime()%>">
                        <input type="hidden" name="totime" value="<%=user.get(i).getTotime()%>">
                        <input type="hidden" name="bustype" value="<%=user.get(i).getBustype()%>">
                        <input type="hidden" name="buscapacity" value="<%=user.get(i).getCapacity()%>">
                        <input type="hidden" name="availableseat" value="<%=count1.get(i)%>">
                      <input type="submit" value="BOOK" class="line3_sec3_submit">
                    </form>

                </div> 
    
            </div>
            <%} } %>
        </div>
   </div>



























</body>
</html>