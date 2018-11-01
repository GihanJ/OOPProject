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


public class RemoveSellerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String sql="delete from customers where email=?";
		String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
		String username="root";
		String pass = "root";
		
		String semail= request.getParameter("semail");
		PrintWriter pw = response.getWriter();
		
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,semail);
			int count=st.executeUpdate();
			System.out.println(count+"row/s affected");
			st.close();
			con.close();
			
			
		 	pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Seller Removed!!!\")");
			pw.println("location='AdminHome.jsp';");
			pw.println("</script>");
			
		}
		catch (ClassNotFoundException | SQLException e)
		{
			
			e.printStackTrace();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Error!!!\")");
			pw.println("location='SignIn.jsp';");
			pw.println("</script>");
		}
	
		
		
	}

}
