<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HomePage</title>
	<link rel="stylesheet"  href="Style.css">
</head>
<body>
	<div id = "container" style="height: 1800px">
		<div id = "header" style="height: 14%">
			<div id="img1">
				<a href="HomePage1.jsp" ><img src="Images/Logo.jpg" width="12%" align="left"></a>
			</div>
			
			<a href="HomePage1.jsp"><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>

        	<div id="text1">
            	<a href=""><br/><img src="Images/cart.png" width="10%" height="10%" align="right"> </a>
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
		<div id ="search" >
			<input type="text" name="search" size="105%" placeholder="&nbsp Search ...">
		</div>
		
		<div id="getStarted">
			<a href="SignUp.jsp"><img src="Images/getstarted.PNG" ></a> 
		</div>

		<div id = "mainbody" align="center" style="width:100%;height: 80%">

		<h1 align="center">TRENDING</h1>
        <div class="n-bordered td">
            <table width="90%"align="center"   cellpadding="26%" >
				
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
                		<a href="HowToBuy1.html"><img src="Images/buy.jpg" width="100%" height="70%">
                    	<p><hr>How To Buy</p></a>
                    </td>
					<td>
						<a href="HowToSell1.html"><img src="Images/sell.jpg"width="100%" height="70%">
                    	<p><hr>How To Sell </p></a>
                    </td>
			</table>
          </div>
		  <h1 align="center">OUR PARTNERS</h1>
            
          <div class="n-bordered td">
            <table width="90%"align="center"   cellpadding="26%" >
	
				 <tr>
                	<td>
                		<img src="Images/nike.png" width="70%" height="60%" >
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
                			<img src="Images/dell.png" width="70%" height="60%">
                		</td>
						<td>
							<img src="Images/apple.png"width="70%" height="60%">
                    	</td>
                     	<td>
                     		<img src="Images/barclays.jpg" width="70%" height="60%">
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
  
        <li><a href="HomePage1.jsp"><font color="white">Home</font></a></li>
        <li><a href="HowToBuy1.html"><font color="white">How To Buy?</font></a></li>
        <li><a href="HowToSell1.html"><font color="white">How To Sell?</font></a></li>
        <li><a href="ContactUs1.jsp"><font color="white">Contact us</font> </a> </li>
        
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