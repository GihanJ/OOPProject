package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mysql.jdbc.PreparedStatement;



public class ViewBidsController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String sql="select email,pid,bid from buyer_info order by bid DESC";
		String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
		String username="root";
		String pass = "root";
		
		
		PrintWriter out = response.getWriter();
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st =  (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			
			out.println("<div style=\"background:rgba(1,1,1,0.05)\">");
			out.println("<table align=\"center\" width=\"100%\" cellspacing=\"20px\" bordercolor=\"3px solid black\">");
			out.println("<tr><th align=\"left\">Email</th>");
			out.println("<th align=\"left\">ProductId</th>");
			out.println("<th align=\"left\">Bid Value</th></tr>");
			
			while(rs.next()) 
			{
				
				out.println("<tr><td>");
				out.println(rs.getString(1));
				out.println("</td><td>");
				out.println(rs.getString(2));
				out.println("</td><td>");
				out.println(rs.getLong(3));
				out.println("</td></tr>");
		
			}
			
			out.println("</table>");
			out.println("</div>");
			
		}
		catch (ClassNotFoundException | SQLException e) 
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert(\"Error!!!\")");
			out.println("location='AuctionBuyer.jsp';");
			out.println("</script>");
		}
	
		
	}

}
