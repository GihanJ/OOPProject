<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Auction</title>
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
        
        .area1
        {
			 font-size:17px;
            border-width: 1px;
            border-radius:3px;
            border-color: black;
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
	            <li><a href="SellerController"><font color="black" size="4">Auction</font></a></li>
	           	<li><a href="Trending2.jsp"><font color="black" size="4">Trending</font> </a></li>
	            <li><a href="HomePage2.jsp"><font color="black" size="4">Home</font> </a></li><br/>
			</div>
			</div>

		<div id = "mainbody" align="center" style="width:100%" >

			<h1 align="center">Men's Wear</h1>
        	<div class="n-bordered td">
            	<table width="50%"align="center"   cellpadding="26%" >
				
                	<tr>
                		<td>
                			<img src="Images/men.jpg" width="100%" height="70%" >
                    		<p><hr>Shades</p>
                    		<form action="SellerForm" onsubmit="" method="post">
							<table cellspacing="10px">
							
								<tr>
                        			<td>
                        				Email
                        			</td>
                        			<td>
                        				<%=session.getAttribute("email")%>
                        				<input type="hidden" placeholder="   Email" name="email" value="<%=session.getAttribute("email") %>" class="area1" size="35px">
                        			</td>
								</tr>
			
								<tr>
                        			<td>
                        				Product ID
                        			</td>
                        			<td>
                        				<%=session.getAttribute("pid")%>
                        				<input type="hidden"  name="pid" value="<%=session.getAttribute("pid") %>" class="area1" size="35px"> 
                        			</td>
                    			</tr>	
			
                    			<tr>
                        			<td>
                        				Auction Time(Seconds)
                        			</td>
                        			<td>
                        				<%=session.getAttribute("atime")%>
                        				<input type="hidden"  name="atime" value="<%=session.getAttribute("atime") %>" class="area1" size="35px"> 
                        			</td>
   								</tr>
                    				 
                    			<tr>
                        			<td>
                        				Minimum Price(Rs)
                        			</td>
                        			<td>
                        				<input type="text" placeholder="   Min Price" name="price" value="" class="area1" size="35px"> 
                        			</td>
                    			</tr>
                    			
                    			<tr>
                       				<td>
                       					<input type="submit"   value="Update Price" class="area" size="40px"> 
                       				</td>
                        			<td>
                        			<input type="reset"   value="Reset" class="area" size="40px"> 
                        			</td>
                    			</tr>
                    		</table>
						</form>
					 <td>
 						<form action="DeletePrice" onsubmit="" method="post" ><input type="submit"   value="Delete Price" class="area" size="40px"></form>
 					</td>
					<td>
						<form action="ViewBids" onsubmit="" method="post" ><input type="submit"   value="View Bids" class="area" size="40px"></form>
					</td>
					<td>
						<form action="ViewPrice" onsubmit="" method="post" ><input type="submit"   value="View Price" class="area" size="40px"></form>
					</td>
				 </tr>
		
				 <tr>  
				 	<td>
				 		<img src="Images/shirt.jpg"width="100%" height="70%">
                    	<p><hr>Shirts</p>
         				<form action="" onsubmit="" >
						<table cellspacing="10px">
			
							<tr>
                        		<td>
                        			<input type="text" placeholder="   ProductID" name="pid" value="" class="area1" size="35px"> 
                        		</td>
                    		</tr>	
			
                    		<tr>
                        		<td>
                        			<input type="text" placeholder="   AuctionTime" name="atime" value="" class="area1" size="35px"> 
                        		</td>
                        		<td>
                        			<input type="submit"   value="Update Price" class="area" size="40px"> 
                        		</td>
                        			
                       			 <td>
                       			 	<input type="reset"   value="Reset" class="area" size="40px"> 
                       			 </td>
                   			</tr>
                   			
                    		<tr>
                        		<td>
                        			<input type="text" placeholder="   Min Price" name="price" value="" class="area1" size="35px"> 
                        		</td>
                    		</tr>
                		 </table>
                	</form>
                 </td>
               </tr>
			 </table>
			</div>
		</div>

		<div id = "footer" style="height: 15%">
  
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