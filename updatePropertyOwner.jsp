<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Your Account</title>
<link rel="stylesheet" type="text/css" href="Styles/header_footer.css">
<link rel="stylesheet" type="text/css" href="Styles/updatepropertyowner.css">
<style>
body {
  background-image: url('Images/img6.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
</head>
<div class="header">
        <nav>
         <img src="Images/realLand.jpg" class="logo" width="30" height="80">
         <ul class="nav-links">
         <li><a href="HomePage.jsp">Home</a></li>
         <li><a href="SearchProperty.jsp">Search Property</a></li>
         <li><a href="Application.jsp">Rent Property</a></li>
         <li><a href="About us.jsp">About US</a></li>
         <li><a href="ContactUs.jsp">Contact US</a></li>
           
         </ul>
        
    </nav>    
    </div>
<body>
<br><br><br>

   <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
   %>
   
   <div class="update_delete">
   <form action = "p_update" method = "post">
   <h2 align="center">Update Your Account</h2>
     <br>
     Property Owner ID<br><input type="text" name="pid" value="<%=id%>" readonly><br><br>
     
     Name<br>
          <input type="text" name="name" value="<%=name%>"><br><br>
     
     NIC<br>
          <input type="text" name="nic" value="<%=nic%>"><br><br>
     
     Email<br>
          <input type="text" name="email" value="<%=email%>"><br><br>
     
     Contact Number<br>
          <input type="tel" name="phone" value="<%=phone%>"><br><br>
     
     Residential Address<br>
          <input type="text" name="address" value="<%=address%>"><br><br>
     
     User Name<br>
          <input type="text" name="puname" value="<%=username%>"><br><br>
     
     Password<br>
          <input type="password" name="pass" value="<%=password%>"><br><br>
     
     <p align = "center">
     <input type="submit" name="submit" value="Update My Data"><br><br>
     </p>
   </form>
</div>

<br><br><br>
</body>
<footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="footer-col">
                            <h4>Quick Links</h4>
                            <ul>
                                <li><a href="SearchProperty.jsp">Search Property</a></li>
                                <li><a href="Application.jsp">Rent Property</a></li>
                                <li><a>LandMark.com 2023</a></li>
                             <li><a>All Right Reserved</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Company</h4>
                            <ul>
                                <li><a href="About us.jsp">About Us</a></li>
  	 				            <li><a href="privacy and policy.jsp">privacy policy</a></li>
  	 				            <li><a href="Terms and Conditions.jsp">Terms and Conditions</a></li>
                                
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Contact Us</h4>
                            <ul>
                                <li><a href="#">121Kandy RoadMalabe</a></li>
                                <li><a href="#"> landmark@gmail.com</a></li>
                                <li><a href="#"> 077 2425678</a></li>
                                <li><a href="#"> 011 2425987</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>follow us</h4>
                            <ul>
                                <li><a href="#"> Instagram</a></li>
                                <li><a href="#"> FaceBook</a></li>
                                <li><a href="#"> Twitter</a></li>
                                <li><a href="#"> LinkedIn </a></li>
                            </ul>
                        </div>
                        </div>
                    </div>
           </footer> 

</html>