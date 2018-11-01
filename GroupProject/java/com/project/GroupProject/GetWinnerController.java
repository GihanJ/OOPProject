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
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;


public class GetWinnerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String sql="select email,bid from buyer_info where bid =(select max(bid)  from buyer_info where bid >(select minPrice from seller_info where pid = 1000))";
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
			HttpSession session = request.getSession();
			
			out.println("<div style=\"background:rgba(1,1,1,0.05)\">");
			out.println("<table align=\"center\" width=\"100%\" cellspacing=\"20px\" bordercolor=\"3px solid black\">");
			out.println("<tr><th align=\"left\">Winner</th>");
			out.println("<th align=\"left\">Bid Value</th></tr>");
			
			while(rs.next()) 
			{
				
				session.setAttribute("Winner", rs.getString(1));
				out.println("<tr><td>");
				out.println(rs.getString(1));
				out.println("</td><td>");
				out.println(rs.getLong(2));
				out.println("</td></tr>");
		
			}
			
			out.println("</table>");
			out.println("</div>");
			
		}
		catch (ClassNotFoundException | SQLException e) 
		{
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert(\"Error!!!\")");
			out.println("location='HomePage2.jsp';");
			out.println("</script>");
		}
	
		
	}
		
}


