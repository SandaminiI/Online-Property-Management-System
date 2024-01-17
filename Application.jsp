<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
     <title>Rent Property</title>
     <link rel="stylesheet" type="text/css" href="Styles/header_footer.css">
     <link rel="stylesheet" type="text/css" href="Styles/application.css">
    
</head>

<div class="header">
        <nav>
         <img src="Images/realLand.jpg" class="logo" width="30" height="80">
         <ul class="nav-links">
         <li><a href="HomePage.jsp">Home</a></li>
         <li><a href="SearchProperty.jsp">Search Property</a></li>
         <li><a href="About us.jsp">About US</a></li>
         <li><a href="ContactUs.jsp">Contact US</a></li>
           
         </ul>
        
    </nav>    
    </div>
<body>

<br>

<div class="app">
   <form action="insert" method="post">
     
     <h1 align = "center">Rental Application</h1><br>
     
     
     <h2>Personal Information</h2><br>
     <label>Full Name</label><br>
     <input type="text" class="name" name="name" required><br><br>

     <label>NIC</label><br>
     <input type="text" class="name" name="nic" required><br><br>
     
     <label>Date Of Birth</label><br>
     <input type="date" class="name" name="dob" required><br><br>

     <label>Email</label><br>
     <input type="email" name="email" pattern="[a-z0-9.-+_%]+@[a-z0-9.-]+\.[a-z]{2,3} " placeholder="example@gmail.com" required><br><br>

     <label>Address</label><br/>
     <textarea name="address" rows="5" cols="148" required></textarea><br/><br>

     <label>Contact number</label><br>
     <input type="tel" name="mobile" pattern="[0-9]{10}" placeholder="0712345678" class="name" required><br><br><br>
     
     
     <h2>Rental History</h2><br>
     <label>Previous Rental Address</label><br>
     <textarea name="paddress" rows="5" cols="148"></textarea><br/><br>
     
     <label>Dates Of Residence</label><br>
     <input type="number" name = "dates" class="name"><br><br>
 
     <label>Rental Reference</label><br>
     <input type="tel" name="pmobile" pattern="[0-9]{10}" placeholder="0718976532" class="name"><br><br><br>

     <h2>Employment and Income</h2><br>
     
     <label>Current Employment company</label><br>
     <input type="text" name="company" class="name" required><br><br>
     
     <label>Job title</label><br>
     <input type="text" name="job" class="name" required><br><br>
     
     <label>Monthly income or salary</label><br>
     <input type="number" name="sal" class="name" required><br><br>
     
     <label>Proof Of Income</label>
     <input type="file" name="file" required><br><br><br>
     
     <h2>Personal references</h2><br>
     
     <label>Name</label><br>
     <input type="text" class="name" name="rname" required><br><br>
     
     <label>Contact Number</label><br>
     <input type="tel" name="rmobile" pattern="[0-9]{10}" placeholder="0712000678" class="name" required><br><br><br>
     
     <h2>Additional Information</h2><br>
     *** Number of people who will be living in the rental property.<br>
     *** If the applicant has pets, information about the type and number of pets.<br>
     *** If parking is provided, details about the applicant vehicle(s).<br><br>
     
     <textarea name="additional" rows="10" cols="148"></textarea><br><br>
     
     It's important for applicants to provide accurate and complete information.
     Inaccuracies or omissions could lead to rejection of the application. 
     Additionally, applicants should be aware of their rights under fair housing laws,
     which prohibit discrimination on the basis of race, color, religion,disability, 
     family status, or national origin.
     <br><br>
     
     <p align = "center">
     <input type="submit" value="submit">
     </p>
   </form>
</div>

</body>

<br>

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