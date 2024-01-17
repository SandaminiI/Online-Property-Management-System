<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View ApplicationDetails</title>
<link rel="stylesheet" type="text/css" href="Styles/header_footer.css">
<link rel="stylesheet" type="text/css" href="Styles/applicationDetails.css">

<style>
body {
  background-image: url('Images/p1.jpg');
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
     <h3 align = "center">Your application submitted successfully</h3><br><br>
     
    <div class="po">
    <form>
    <table>
    <c:forEach var="application" items="${appdetails}">
        <tr>
            <td>Name</td>
            <td>&#160&#160&#160&#160 ${application.name}</td>
        </tr>
        <tr>
            <td>NIC</td>
            <td>&#160&#160&#160&#160 ${application.nic}</td>
        </tr>
        <tr>    
            <td>DOB</td>
            <td>&#160&#160&#160&#160 ${application.dob}</td>
         </tr>
         <tr>   
            <td>Email</td>
            <td>&#160&#160&#160&#160 ${application.email}</td>
         </tr>
         <tr>   
            <td>Address</td>
            <td>&#160&#160&#160&#160 ${application.address}</td>
         </tr>
         <tr>   
            <td>Mobile</td>
            <td>&#160&#160&#160&#160 ${application.mobile}</td>    
         </tr>
         <tr>   
            <td>Previous Rental Address</td>
            <td>&#160&#160&#160&#160 ${application.paddress}</td>
         </tr>
         <tr>   
            <td>Dates Of Residence</td>
            <td>&#160&#160&#160&#160 ${application.dates}</td>
         </tr>
         <tr>   
            <td>RentalReference</td>
            <td>&#160&#160&#160&#160 ${application.pmobile}</td>
            
         </tr>
         <tr>   
            <td>Current Employment company</td>
            <td>&#160&#160&#160&#160 ${application.company}</td>
         </tr>
         <tr>   
            <td>Job title</td>
            <td>&#160&#160&#160&#160 ${application.job}</td>
         </tr>
         <tr>   
            <td>Monthly income or salary</td>
            <td>&#160&#160&#160&#160 ${application.sal}</td>
         </tr>
         <tr>   
            <td>Name</td>
            <td>&#160&#160&#160&#160 ${application.rname}</td>
         </tr>
         <tr>   
            <td>Contact Number</td>
            <td>&#160&#160&#160&#160 ${application.rmobile}</td>
         </tr>
         <tr>   
            <td>Additional</td>
            <td>&#160&#160&#160&#160 ${application.additional}</td>
        </tr>

        </c:forEach>
    </table>
    
    <br>
    </form>
    </div>
    
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>   
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