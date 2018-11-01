<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>SignIn</title>
	<link rel="stylesheet"  href="Style.css">
 	<script language="JavaScript" type="text/javascript" src="validation.js"></script>
	
	 <style>
	 
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
		    height:60%;
            width:100%;
        }
        
        #footer 
        {
	        height: 31%;
            margin-top: 5%;
        }
        
        .area
        {
            height: 40px;
            border-width: 1px;
            border-radius:3px;
            border-color:black;
	    }
	    
        .button
        {
            background-color: #23A8E1;
            color: white;
            font-size: 15px;
            border-radius: 10px;
            height: 40px;
            width: 100%;
	    }

    </style>
</head>
<body>

	<% 
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1
		response.setHeader("Pragma","no-cache"); //HTTP 1.0
		response.setHeader("Expires","0");  //Proxies
	%>
	
	<div id = "container">
		<div id = "header">
			<div id="img1">
				<a href="HomePage1.jsp" ><img src="Images/Logo.jpg" width="12%" align="left"></a>
			</div>
			
			<a href="HomePage1.jsp" ><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>

        	<div id="text1">
            <a href=""><br/><img src="Images/cart.png" width="10%" height="10%" align="right"> </a>
            <br><br><br><br><br><br><br>
            <a href="SignUp.jsp"> <font color="white" style="float: right"> &nbsp&nbsp&nbsp&nbspSign Up</font></a>
 			</div>

			<div id = "navbar">
			  	<li><a href="ContactUs1.jsp"><font color="black" size="4"  >Contact Us</font></a></li>
	            <li><a href="AboutUs1.html"><font color="black" size="4">About Us</font></a></li>
	            <li><a href="SignIn.jsp"><font color="black" size="4">Auction</font> </a></li>
	            <li><a href="Trending1.jsp"><font color="black" size="4">Trending</font> </a></li>
	            <li><a href="HomePage1.jsp"><font color="black" size="4">Home</font> </a></li><br/>
			</div>
		</div>
		
		<div id = "mainbody" align="center" style="width:100%;margin-top: 7%" >

		<h1>Sign In</h1>
        <h2>Sign in to Continue!</h2>

        <form name="form3" action="getSignIn" onsubmit="return form3Validate()" method="post">
                <table cellspacing="10px">
                
                    <tr>
                        <td>
                        	<input type="text" placeholder="   Email" name="email" value="" class="area" size="35px">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                        	<input type="password" placeholder="   Password" name="pd" value="" class="area" size="35px"> 
                        </td>
                    </tr>
                    
                     <tr>
                		<td>
					 		<select name="role" class="area" style="width: 275px">
							<option value="Buyer">Buyer</option>
							<option value="Seller">Seller</option>
							<option value="Admin">Admin</option>
							</select>
                		</td>
                	</tr>
                    
                    <tr>
                        <td>
                        	<input type="submit" name="sIn" value="Sign In"  size="35px" class="button" >
                         </td>
                    </tr>
                </table>
           </form>
           
           <table width="21%">
                    
                    <tr>
                        <td>
                        	<a href="SignUp.jsp"> <input type="submit" name="sUp" value="Sign Up" class="button"  style="background-color: white; border-color: #23A8E1;color:#23A8E1" > </a>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                        	<a href=""><p align="center">Forgot Password?</p></a> 
                        </td>
                    </tr>
            </table>
  

			<div id = "footer" >
  
		        <li><a href="HomePage1.jsp"><font color="white">Home</font></a></li>
		        <li><a href="HowToBuy1.html"><font color="white">How To Buy?</font></a></li>
		        <li><a href="HowToSell1.html"><font color="white">How To Sell?</font></a></li>
		        <li><a href="ContactUs1.jsp"><font color="white">Contact us</font> </a> </li>
        
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