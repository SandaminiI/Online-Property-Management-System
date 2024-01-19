<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Registration</title>
   <link rel="stylesheet" type="text/css" href="Styles/header_footer.css">
   <link rel="stylesheet" type="text/css" href="Styles/OwnerRegistration.css">
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
    <br><br>
    
    <div class="register"> 
        <h2 align="center"> Property Owner Registration</h2><br><br><br>
    
    <form action="register" method="POST">
	
		<label>Full name:</label><br>
        <input type="text" class="name" name="name" required><br><br>
			
        <label>NIC</label><br>
        <input type="text" class="name" name="nic" required><br><br>
        
        <label>Date Of Birth</label>
        <input type="date" name="dob" class="name"  required><br><br>
        
        <label>Email</label><br>
        <input type="email" class="name" name="email" pattern="[a-z0-9.-+_%]+@[a-z0-9.-]+\.[a-z]{2,3} " required><br><br>

        <label>Contact Number</label>
        <input type="tel" name="mobile" class="name" pattern="[0-9]{10}" placeholder="0712345678" required><br><br>
        
        <label for="gender">Gender</label><br>
        <input type="radio" name="gender" value="Male"> Male
        <input type="radio" name="gender" value="Female"> Female
		<br><br>

        <label>Address</label><br>
        <textarea name="address" rows="7" cols="80" required></textarea><br><br>

        <label>UserName:</label><br>
        <input type="text" class="name" name="uname" pattern="{5,15}" required><br><br>

        <label>Password</label><br>
        <input type="password" name="pwd" pattern="(!@#$%^&*?/\)(?=.+[a-z])(?=.+[A-Z]).{5,15}" required><br><br>
			
        Re-Enter Password<br>
        <input type="password" name="repwd" pattern="(!@#$%^&*?/\)(?=.+[a-z])(?=.+[A-Z]).{5,15}" required><br><br>
        
        <p align = "center">
        <input type="submit" name="submitBtn" value="submit"><br><br><br>
        </p>
		<div><p align="center">Already have an account <a href="OwnerLogin.jsp">Login</a></p></div>
            
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