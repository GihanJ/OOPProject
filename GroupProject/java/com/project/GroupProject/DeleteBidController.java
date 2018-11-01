package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class DeleteBidController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String sql="delete from buyer_info where email=?";
		String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
		String username="root";
		String pass = "root";
		
		
		HttpSession session=request.getSession();
		String email = (String) session.getAttribute("email");
		PrintWriter pw = response.getWriter();
		
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,email);
			int count=st.executeUpdate();
			System.out.println(count+"row/s affected");
			st.close();
			con.close();
			
			
		 	pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Bid Successfully Deleted!!!\")");
			pw.println("location='AuctionBuyer.jsp';");
			pw.println("</script>");
			
		}
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"SQL Error!!!\")");
			pw.println("location='SignIn.jsp';");
			pw.println("</script>");
		}
	
		
		
	}

}
