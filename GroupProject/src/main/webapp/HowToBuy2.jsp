<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HowToBuy</title>
	<link rel="stylesheet"  href="Style.css">
	
	<style>

  		.area
  		{
           	background-color: #23A8E1;
            color: white;
            font-size:17px;
            border-width: 1px;
            border-radius:3px;
 		 }
        
		#container
		{
			 height: 1000px;
        }

        #header
        {
            height: 25.5%;
		}

        #mainbody
        {
			height:70%;
            width:100%;
            background-image:url(Images/hsell.jpg);
            color:black;
		}
		
 	 	#mainbody li
 	 	{
 			text-align: Center;
    		line-height: 100px;
		}
		
        #footer 
        {
			height: 28%;
            margin-top: 5% ;
            height: 17%;
        }
        #trans
        {
		  width:60%;
     	  margin-top:2%;
      	  background:rgba(255,255,255,0.3)
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
	
	<div id = "container">
		<div id = "header">
			<div id="img1">
				<a href="HomePage2.jsp"> <img src="Images/Logo.jpg" width="12%" align="left"></a> 
			</div>
		
			<a href="HomePage2.jsp"><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>
		
		    <div id="text1">
		         <a href=""><br/><img src="Images/cart.png" width="10%" height="10%" align="right"> </a>
		          <br><br><br><br><div style="float: right;color: white"> <%= session.getAttribute("email")%></div><br><br><br>
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
	         		<li><a href="HomePage2.jsp"><font color="black" size="4">Home</font></a></li>
			</div>
		</div>
	
		<div id = "mainbody" align="center">
			<div id="trans">
				<br><h1>How To Buy?</h1><br>
			</div>
			
			<div id="trans">
				<h2><li>Sign Up For Your Free Account</li>
				<li>Go To Auction Page</li>
				<li>Place Your Winning Bid</li>
				<li>Provide Payment Details</li>
				<li>Place Your Order</li></h2>
			</div> 
		</div>
		
		<div id = "footer"  >
  
	        <li><a href="HomePage2.jsp"><font color="white" size="4">Home</font></a></li>
	        <li><a href="HowToBuy2.jsp"><font color="white">How To Buy?</font></a></li>
	        <li><a href="HowToSell2.jsp"><font color="white">How To Sell?</font></a></li>
	        <li><a href="ContactUs2.jsp"><font color="white">Contact us</font> </a> </li>
	      
	        <a href=""><img src="Images/facebook.jpg" height="30%"> </a>
	        <a href=""><img src="Images/instagram.jpg" height="30%"> </a>
	        <a href=""><img src="Images/snapchat.jpg" height="28%"> </a>
	        <a href=""><img src="Images/twitter.jpg" height="30%"> </a>
	        <a href=""><img src="Images/youtube.jpg" height="30%"> </a>
	        
	        <br><br><br><br><br> 
	        Copyright @ OOP Project-Y2-S1-Group 2. 2018-All rights Reserved
	        
		</div>
	</div>
</body>
</html>