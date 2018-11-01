package com.project.GroupProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SellerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String query ="select pid,atime from auction_info where pid=1000";
		String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
		String username="root";
		String pass = "root";
			
			
		try 
		{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, username, pass);
				PreparedStatement st =  con.prepareStatement(query);
				
				ResultSet rs = st.executeQuery();
				HttpSession session = request.getSession();
				
				if(rs.next()) 
				{
						session.setAttribute("pid",(rs.getString("pid")));
						session.setAttribute("atime",(rs.getString("atime")));
						response.sendRedirect("AuctionSeller.jsp");
				}
					
					
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		} 
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
						
					
	}
				
}
