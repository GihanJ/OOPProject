<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.project.GroupProject.model.Sidebardata1"%>
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
		
		
		  .area1
        {
            height: 30px;
            border-width: 1px;
            border-radius:3px;
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
		<a href="AdminHome.jsp" ><img src="Images/Logo.jpg" width="12%" align="left"></a>
	</div>
	
	<a href="AdminHome.jsp"><font color="white" style="font-family:'Good Times';float: left;font-size: 55px;padding-top: 2%" >EASY<br>BID</font></a>

    <div id="text1">
         <a href=""><br/><img src="Images/cart.png" width="10%" height="10%" align="right"> </a>
         
         <br><br><br><br>
         
         <div style="float: right;color: white"> <%= session.getAttribute("email")%>
         </div>
         
         <br><br><br>
		
		 <form action=logout><font style="float: right"><input type="submit" value="Sign Out" class="area" > &nbsp&nbsp&nbsp&nbsp</font></form>

     </div>

	 <div id = "navbar">

		   <li><a href="AuctionAdmin.jsp"><font color="black" size="4">Auction</font></a></li>
           <li><a href="AdminHome.jsp"><font color="black" size="4">Home</font> </a></li><br/>
	
	</div>

	</div>

	<div id="sidebar" >
	
		<div id="pro">
			<img src="Images/propic.png" border="2px solid black"> 
			<br>
			<h2>&nbsp&nbsp&nbsp&nbsp&nbspUser Profile</h2>
		</div>
		<br><br>
		
		<div style="margin-left: 10%">
		
			<%=session.getAttribute("name")%>
			<br><br>
			<%= session.getAttribute("address")%>
			<br><br>
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

	
		
    <div class="n-bordered td">
    	<table width="90%"align="center"   cellpadding="26%" >
			 <tr>
             	<td>
             		<a href="ViewBuyers"><img src="Images/buyer.jpg" width="100%" height="70%" >
                    <p><hr>Buyers</p></a>
               	</td>

                <td>
                	<a href="ViewSellers"><img src="Images/seller.jpg"width="100%" height="70%">
                    <p><hr>Sellers</p></a>
                </td>

              </tr>
          </table>
       </div>

		<div class="n-bordered td">
            	<table width="90%"align="center"   cellpadding="26%" >
					<tr>
                		<td>
                			<a href="ViewAdmins"><img src="Images/admins.jpg" width="100%" height="70%" >
                    		<p><hr>Admins</p></a>
                    	</td>
				</table>
          
		</div>
			
		<h1 align="center">RULE VIOLATION</h1>	
			
		<form action="RemoveB" method="post">
			<table width="50%"align="center"   cellpadding="26%" >
					<tr>
                		<td>
                			<h4>Remove Buyer</h4>
                		</td>
                		<td>
                    		<input type="text" placeholder="Enter Buyer Email" name="bemail" class="area1" size="30px">
                    		<input type="submit" class="area">
                    	</td>
                    </tr>	
			</table>
          </form>
          
          <form action="RemoveS" method="post">
			<table width="50%"align="center"   cellpadding="26%" >
					<tr>
                		<td>
                			<h4>Remove Seller</h4>
                		</td>
                		<td>
                    		<input type="text" placeholder="Enter seller Email" name="semail" class="area1" size="30px">
                    		<input type="submit" class="area">
                    	</td>
                    </tr>	
				</table>
          </form>
			
      </div>

	  <div id = "footer"  style="height:10%">
  
        	<li><a href="AdminHome.jsp"><font color="white">Home</font></a></li>
      
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