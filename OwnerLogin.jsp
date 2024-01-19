<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <title>Owner Login</title>
   <link rel="stylesheet" type="text/css" href="Styles/header_footer.css">
   <link rel = "stylesheet" type="text/css" href ="Styles/POLogin.css">
   <style>
body {
  background-image: url('Images/p1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
</head>
<body>
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
    
    
    <br><br><br><br><br>


    <div class="log">
            <h2 align = "center">Property Owner Login</h2><br><br>
			
            <form method="post"  action="log">
			
                    <label>Enter UserName </label><br>
                     <input type="text" class="name" name="uname" placeholder="username" required><br><br>
					 
					 <label>Enter password </label><br>
                     <input type="password" name="pwd" placeholder="password" required><br><br><br>
					 
					 <p align = "center">
				     <input type="submit" name="login" value="Login">
				</p>
		    </form>
        
        <br><br><p align="center">Don't have an account? <a href="OwnerRegistration.jsp">Register</a></p>
        
        </div>
        
</body>

<br><br><br><br><br>

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