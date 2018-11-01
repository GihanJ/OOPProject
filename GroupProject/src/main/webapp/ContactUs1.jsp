<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ContactUs</title>
	<link rel="stylesheet"  href="Style.css">
 	<script language="JavaScript" type="text/javascript" src="validation.js"></script>
 	
 	<style>
 
         #container
         {
			 height: 1200px;
         }

         #header
         {
            height: 21%;
         }

         #mainbody
         {
			 height:80%;
            width:100%;
          	margin-top: 5%
         }
         #footer
         {
			height: 14%;
            margin-top: 5%;
         }
         
        .area
        {
            height: 40px;
            border-width: 1px;
            border-radius:3px;
            border-color:black;
		 }
		 
        #button
        {
            background-color: #23A8E1;
            color: white;
            font-size: 15px;
            border-radius: 10px;
            height: 40px;
            width: 100%;
		}
 
		 #formcontent 
		 {
            float: left;
            width: 40%;
            margin-top: 100px;
            margin-left: 100px;
		 }
       
        .multi
        {
            border-radius: 3px;
            border-color: black;
        }
        
		#media
		{
            width: 52%;
            float: right;
            margin-top: 150px;
            font-size: 30px;
		}
    
 	</style>
</head>
<body>
  <div id = "container">
	<div id = "header">
		<div id="img1">
			<a href="HomePage1.jsp" ><img src="Images/Logo.jpg" width="12%" align="left"></a>
		</div>
		
		<a href="HomePage1.jsp" ><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>

        <div id="text1">
            <a href=""><br/><img src="Images/cart.png" width="10%" height="10%" align="right"></a>
			 <br><br><br><br><br><br><br>
			<a href="SignUp.jsp"> <font color="white" style="float: right"> &nbsp&nbsp&nbsp&nbspSign Up</font></a>
            <a href="SignIn.jsp" ><font color="white" style="float: right">Sign In &nbsp&nbsp&nbsp&nbsp</font></a>
		</div>

		<div id = "navbar">
			<li><a href="ContactUs1.jsp"><font color="black" size="4"  >Contact Us</font></a></li>
	        <li><a href="AboutUs1.html"><font color="black" size="4">About Us</font></a></li>
	        <li><a href="SignIn.jsp"><font color="black" size="4">Auction</font> </a></li>
	        <li><a href="Trending1.jsp"><font color="black" size="4">Trending</font> </a></li>
	        <li><a href="HomePage1.jsp"><font color="black" size="4">Home</font> </a></li><br/>
		</div>
	</div>

	<div id = "mainbody" align="center">

	   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.5116981423857!2d79.8663009141619!3d6.82907992143148!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25b241b6f91ed%3A0x841858331caf15a1!2s133+Galle+Rd%2C+Dehiwala-Mount+Lavinia!5e0!3m2!1sen!2slk!4v1508012378576"  width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        
       <div id="formcontent">
        	<form name="form2" onsubmit="return form2Validate()">
            	<table>
                	<tr>
                    	<td>
                    		<input type="text" placeholder="   Name" name="urName" value="" class="area" size="35px"> 
                    	</td>
                	</tr>
                	
                	<tr>
                    	<td>
                    		<input type="text" placeholder="   Email" name="email" value="" class="area" size="35px">
                    	</td>
                	</tr>
                	
                	<tr>
                    	<td>
                    		<input type="text" placeholder="   Phone Number" name="number" class="area" size="35px">
                    	</td>
                	</tr>
                	
                	<tr>
                    	<td>
                    		<textarea rows="10" cols="36" placeholder=" Question/Comment" name="comment=" class="multi"></textarea>
                    	</td>
                	</tr>
                	
                	<tr>
                    	<td>
                    		<input type="submit" onclick="" id="button">
                    	</td>
                	</tr>

          		</table>
          	</form>
        </div>

        <div id="media" align="center">

            Find Us On<br>
            <a href=""><img src="Images/facev.png" width="10%"  height="10%"></a>
            <a href=""><img src="Images/instav.png" width="10%" height="10%"></a>
            <a href=""><img src="Images/twitterv.png" width="10%" height="10%"></a>
            <a href=""><img src="Images/youtubev.png" width="10%" height="10%"></a>

        </div>

	 </div>
	 <div id = "footer">
  
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