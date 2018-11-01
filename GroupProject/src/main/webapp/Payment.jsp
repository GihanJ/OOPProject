<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Payment</title>
	<link rel="stylesheet"  href="Style.css">
 	<script language="JavaScript" type="text/javascript" src="validation.js"></script>
 
 	<style>
      
		  #container
		  {
		   height: 1200px;
       	  }

          #header
          {
            height: 22%;
  		  }

          #mainbody
          {
		    height:72%;
            width:100%;
            color:black;
		  }
        
          #mainbody li
          {
   			text-align: Center;
    		line-height: 100px;
 	      }
 	      
          #footer 
          {
			 height: 26%;
            margin-top: 5% ;
            height: 17%;
       	   }
       	   
 	    .area
 	      {
           	background-color: #23A8E1;
            color: white;
            font-size:17px;
            border-width: 1px;
            border-radius:3px;
 	      }
        
        .updateArea
         {
    	    font-size:17px;
            border-width: 1px;
            border-radius:3px;
        
         }
          
        .upbutton
         {
            background-color: rgba(195,195,195,0.2);
            color:black;
            font-size: 20px;
            border-radius: 10px;
            width: 40%;
            margin-right:5%;
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
				<a href="HomePage2.jsp" ><img src="Images/Logo.jpg" width="12%" align="left"></a>
			</div>
			
			<a href="HomePage2.jsp" ><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>

        	<div id="text1">
            	<a href=""><br/><img src="Images/cart.png" width="10%" height="10%" align="right"></a>
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
	            <li><a href="BuyerController"><font color="black" size="4">Auction</font></a></li>
	            <li><a href="Trending2.jsp"><font color="black" size="4">Trending</font> </a></li>
	            <li><a href="HomePage2.jsp"><font color="black" size="4">Home</font> </a></li><br/>
			</div>
		</div>

		<div id = "mainbody" align="center">

			<h1 >Payment Page</h1>

			<table cellspacing="20px" width="35%">
 				<tr>
 					<td>
 						<h3>Name</h3>
 					</td>
 					<td>
 						<%=session.getAttribute("name") %><input type="hidden"   class="updateArea" size="35px">
 					</td>
 				</tr>
 				
				<tr>
					<td>
						<h3>Email</h3>
					</td>
					<td>
						<%=session.getAttribute("email")%><input type="hidden"   class="updateArea" size="35px">
					</td>
				</tr>
				
				<tr>
					<td>
						<h3>Address</h3>
					</td>
					<td>
						<%=session.getAttribute("address") %><input type="hidden"    class="updateArea" size="35px">
					</td>
				</tr>
				
				<tr>
					<td>
						<h3>Amount</h3>
					</td>
					<td>
						<%=session.getAttribute("bid") %><input type="hidden"    class="updateArea" size="35px">
					</td>
				</tr>
			</table>

			<form name="form5"   method="post" action="getPayment">
			<table cellspacing="20px" width="35%">
				<tr>
					<td>
						<h3>Card Number</h3>
					</td>
					<td>
						<input type="text"   name="cno" class="updateArea" >
					</td>
				</tr>
				
				<tr>
					<td>
						<h3>Name of Owner</h3>
					</td>
					<td>
						<input type="text"   name="cname" class="updateArea">
					</td>
				</tr>
				
				<tr>
					<td>
						<h3>Expire Date</h3>
					<td>
						<input type="text"   name="cexpire" class="updateArea" placeholder="2002 for (2020/Feb)">
					</td>
				</tr>
				
				<tr>
					<td>
						<h3>CVV Code</h3>
					<td>
						<input type="text"   name="cvv" class="updateArea" >
					</td>
				</tr>
				
				<tr>
					<td	>
						<input type="submit"  value="Ok" class="upbutton">
					</td>
					<td>
						<input type="reset"  value="Cancel" class="upbutton">
					</td>
				</tr>
			</table>
			</form>
		</div>

		<div id = "footer"  >
  
	        <li><a href="HomePage2.jsp"><font color="white">Home</font></a></li>
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