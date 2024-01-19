<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Property Owner Profile</title>
<link rel="stylesheet" type="text/css" href="Styles/header_footer.css">
<link rel="stylesheet" type="text/css" href="Styles/propertyowner.css">
</head>
<body>
<div class="header">
        <nav>
         <img src="Images/realLand.jpg" class="logo" width="30" height="80">
         <ul class="nav-links">
         <li><a href="HomaPage.jsp">Home</a></li>
         <li><a href="SearchProperty.jsp">Search Property</a></li>
         <li><a href="Application.jsp">Rent Property</a></li>
         <li><a href="About us.jsp">About US</a></li>
         <li><a href="ContactUs.jsp">Contact US</a></li>
           
         </ul>
        </nav>    
    </div>
    
    <br><br><br>
    <h1 align="center">Welcome to Your Profile</h1><br>
    <div class="po">
    <form>
    <h3 align="center">Personal Information</h3><br>
    <table>
    
    <c:forEach var="owner" items="${ownerDetails}">
    
    <c:set var="id" value="${owner.id}"/>
    <c:set var="name" value="${owner.name}"/>
    <c:set var="nic" value="${owner.nic}"/>
    <c:set var="email" value="${owner.email}"/>
    <c:set var="phone" value="${owner.phone}"/>
    <c:set var="gender" value="${owner.gender}"/>
    <c:set var="address" value="${owner.address}"/>
    <c:set var="username" value="${owner.username}"/>
    <c:set var="password" value="${owner.password}"/>
    
    <tr>
         <td>Property Owner ID</td>
         <td>&#160&#160&#160&#160 ${owner.id}</td>
    </tr>
    
    <tr>
         <td>Name</td>
         <td>&#160&#160&#160&#160 ${owner.name}</td>
    </tr>
    
    <tr>
         <td>NIC</td>
         <td>&#160&#160&#160&#160 ${owner.nic}</td>
    </tr>
    
    <tr>
         <td>Email</td>
         <td>&#160&#160&#160&#160 ${owner.email}</td>
    </tr>
    
    <tr>
         <td>Contact Number</td>
         <td>&#160&#160&#160&#160 ${owner.phone}</td>
    </tr>
    
    <tr>
         <td>Gender</td>
         <td>&#160&#160&#160&#160 ${owner.gender}</td>
    </tr>
    
    <tr>
         <td>Residential Address</td>
         <td>&#160&#160&#160&#160 ${owner.address}</td>
    </tr>
    
    <tr>
         <td>User Name</td>
         <td>&#160&#160&#160&#160 ${owner.username}</td>
    </tr>
    
    <tr>
         <td>Password</td>
         <td>&#160&#160&#160&#160 ${owner.password}</td>
    </tr>
        
    </c:forEach>
    </table>
   
    <br>
    <c:url value="updatePropertyOwner.jsp" var="propertyownerupdate">
         <c:param name="id" value="${id}"/>
         <c:param name="name" value="${name}"/>
         <c:param name="nic" value="${nic}"/>
         <c:param name="email" value="${email}"/>
         <c:param name="phone" value="${phone}"/>
         <c:param name="address" value="${address}"/>
         <c:param name="username" value="${username}"/>
         <c:param name="password" value="${password}"/>
    </c:url>
    <p align = "center">
    <a href="${propertyownerupdate}">
    <input type="button" class="btn" name="update" value="Update My Data">
    </a>
    </p>
    
    
    <br><br>
    <c:url value="DeletePropertyOwner.jsp" var="propertyownerdelete">
         <c:param name="id" value="${id}"/>
         <c:param name="name" value="${name}"/>
         <c:param name="nic" value="${nic}"/>
         <c:param name="email" value="${email}"/>
         <c:param name="phone" value="${phone}"/>
         <c:param name="address" value="${address}"/>
         <c:param name="username" value="${username}"/>
         <c:param name="password" value="${password}"/>
    </c:url>
    <p align = "center">
    <a href="${propertyownerdelete}">
    <input type="button" class="btn" name="delete" value="Delete My Account">
    </a>
    </p>
     </form>
    </div>
    <br><br><br>
    <p align = "center">
    <a href = "add_property.jsp">
    <input type="button" class="btn" value="Add property">
    </a>
    </p>
    
    <br><br><br>
    <p align = "center">
    <a href = "HomePage.jsp">
    <input type="button" class="btn" value="Log Out">
    </a>
    </p>
    
    
</body>

<br><br><br><br><br><br>

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