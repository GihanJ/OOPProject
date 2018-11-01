<%@page import="com.project.GroupProject.model.Sidebardata1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HomePage</title>
	<link rel="stylesheet"  href="Style.css">
	
	<style>

	  .button
	  {
            background-color: #23A8E1;
            color: white;
            font-size: 20px;
            border-radius: 10px;
            width: 80%;
            border-color:black;
	   }
      .area
      {
           	background-color: #23A8E1;
            color: white;
            font-size:17px;
            border-width: 1px;
            border-radius:3px;
	   }

	</style>
</head>
<body>
	<% 
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1
		response.setHeader("Pragma","no-cache"); //HTTP 1.0
		response.setHeader("Expires","0");  //Proxies

		if(session.getAttribute("email")== null)
		{
			response.sendRedirect("SignIn.jsp");
		}
	%>

	<div id = "container" style="height: 1800px">
		<div id = "header" style="height: 14%">
			<div id="img1">
				<a href="HomePage2.jsp" ><img src="Images/Logo.jpg" width="12%" align="left"></a>
			</div>
			
			<a href="HomePage2.jsp"><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>

        	<div id="text1">
            	<a href=""><br/>
            	<img src="Images/cart.png" width="10%" height="10%" align="right"></a>
            	
           		<br><br><br><br>
           			<div style="float: right;color: white"> 
           				<%= session.getAttribute("email")%>
           			</div>
           			
           			<br><br><br>
				    <form action=logout>
				    <font style="float: right"><input type="submit" value="Sign Out" class="area" > &nbsp&nbsp&nbsp&nbsp</font>
				    </form>
			</div>
			
			<div id = "navbar">
	
				 <li><a href="ContactUs2.jsp"><font color="black" size="4"  >Contact Us</font></a></li>
	            <li><a href="AboutUs2.jsp"><font color="black" size="4">About Us</font></a></li>
          
  			 	<% 
            		String role=(String)session.getAttribute("role");
            		if(role.equals("Buyer")){
            	%>
            	
            	<li><a href="BuyerController"><font color="black" size="4">Auction</font></a></li>
           
            	<%
            		}else if(role.equals("Seller")){
            	%>
            	
                	<li><a href="SellerController"><font color="black" size="4">Auction</font></a></li>
            
             	<% } %>  
  			
				 <li><a href="Trending2.jsp"><font color="black" size="4">Trending</font> </a></li>
            	<li><a href="HomePage2.jsp"><font color="black" size="4">Home</font> </a></li><br/>
			</div>
		</div>
		
		<div id="sidebar" >
			<div id="pro">
				<img src="Images/propic.png" border="2px solid black"><br><h2>&nbsp&nbsp&nbsp&nbsp&nbspUser Profile</h2>
			</div>
			<br><br>
				
			<div style="margin-left: 10%;">
				<%= session.getAttribute("name")%><br><br>
				<%= session.getAttribute("address")%><br><br>
				<%= session.getAttribute("email")%>
			</div>
			
			<br><br>
			
			<div style="margin-left: 10% ">
				<a href="UserPro.jsp"><input type="submit" class="button" value="Edit Details"></a>
			</div>
		</div>

		<div id = "mainbody" align="right" style="width:80%;height: 80%" >
			<div id ="search" >
				<input type="text" name="search" size="105%" placeholder="&nbsp Search ...">
			</div>

			<h1 align="center">TRENDING</h1>
		
        	<div class="n-bordered td">
               <table width="90%"align="center"   cellpadding="26%">
				
                <tr>
                	<td>
                		<img src="Images/men.jpg" width="100%" height="70%">
                    	<p><hr>Men's Clothing</p>
                    </td>
					<td>
						<img src="Images/women.jpg"width="100%" height="70%">
                    	<p><hr>Women's Clothing </p>
                    </td>
					<td>
						<img src="Images/kid.jpg"width="100%" height="70%">
                    	<p><hr>Kid's Clothing</p>
                    </td>
                 </tr>
  				</table>
  			</div>
  			
            <h1 align="center">HOW TO START?</h1>
            
            <div class="n-bordered td">
            <table width="90%"align="center"   cellpadding="26%" >
				
                <tr>
                	<td>
                		<a href="HowToBuy2.jsp">
                		<img src="Images/buy.jpg" width="100%" height="70%">
                    	<p><hr>How To Buy</p></a>
                    </td>
					<td>
						<a href="HowToSell2.jsp">
						<img src="Images/sell.jpg"width="100%" height="70%">
                    	<p><hr>How To Sell </p></a>
                    </td>
                 </tr>
			 </table>
           </div>
		   <h1 align="center">OUR PARTNERS</h1>
            
           <div class="n-bordered td">
           		<table width="90%"align="center"   cellpadding="26%" >
				
                	<tr>
                		<td>
                			<img src="Images/nike.png" width="70%" height="60%">
                		</td>
						<td>
							<img src="Images/puma.png"width="70%" height="60%">
                    	</td>
                     	<td>
                     		<img src="Images/hp.jpg" width="70%" height="60%">
                    	</td>
						 <td>
						 	<img src="Images/paypal.jpg"width="70%" height="60%">
                    	</td>
                     	<td>
                     		<img src="Images/adidas.jpg" width="70%" height="60%">
                    	</td>
					</tr>
                                
                    <tr>
                		<td>
                			<img src="Images/dell.png" width="70%" height="60%" >
                		</td>
						<td>
							<img src="Images/apple.png"width="70%" height="60%">
                    	</td>
                     	<td>
                     		<img src="Images/barclays.jpg" width="70%" height="60%" >
                    	</td>
						<td>
							<img src="Images/walmart.jpg"width="70%" height="60%">
                    	</td>
                     	<td>
                     		<img src="Images/neteller.png" width="70%" height="60%" >
                    	</td>
					</tr>
				</table>
         	</div>
		</div>
		<div id = "footer"  style="height:10%">
  
	        <li><a href="HomePage2.jsp"><font color="white">Home</font></a></li>
	        <li><a href="HowToBuy2.jsp"><font color="white">How To Buy?</font></a></li>
	        <li><a href="HowToSell2.jsp"><font color="white">How To Sell?</font></a></li>
	        <li><a href="ContactUs2.jsp"><font color="white">Contact us</font> </a> </li>
	        
	        <a href=""><img src="Images/facebook.jpg" height="30%"> </a>
	        <a href=""><img src="Images/instagram.jpg" height="30%"> </a>
	        <a href=""><img src="Images/snapchat.jpg" height="30%"> </a>
	        <a href=""><img src="Images/twitter.jpg" height="30%"> </a>
	        <a href=""><img src="Images/youtube.jpg" height="30%"> </a>
	        
        	<br><br><br><br><br> 
        	Copyright @ OOP Project-Y2-S1-Group 2. 2018-All rights Reserved
		</div>
	</div>
</body>
</html>