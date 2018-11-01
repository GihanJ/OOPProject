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



public class UpdateAuctionController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String sql="update auction_info set aid=?,atime=? where pid='1000';";
		String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
		String username="root";
		String pass = "root";
		
		String aid= request.getParameter("aid");
		int atime = Integer.parseInt(request.getParameter("atime"));
		HttpSession session=request.getSession();
		
		PrintWriter pw = response.getWriter();
		
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, aid);
			st.setLong(2, atime);
			int count=st.executeUpdate();
			System.out.println(count+"row/s affected");
			st.close();
			con.close();
			
			
		 	pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Auction Successfully Updated!!!\")");
			session.setAttribute("aid", aid);
			session.setAttribute("atime", atime);
			pw.println("location='AuctionAdmin2.jsp';");
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


