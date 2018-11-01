package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.project.GroupProject.dao.SellerFormDao;


public class SellerFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String email = request.getParameter("email");
		String pid = request.getParameter("pid");
		int atime = Integer.parseInt(request.getParameter("atime"));
		float price = Float.parseFloat(request.getParameter("price"));
		
		SellerFormDao dao = new SellerFormDao();
		PrintWriter pw = response.getWriter();
		
		
		try 
		{
			 dao.ConnectMYSQL(email,pid,atime,price);
				
			 pw.println("<script type=\"text/javascript\">");
			 pw.println("alert(\"Price Updated Successfully !!!\")");
			 pw.println("location='AuctionSeller.jsp';");
			 pw.println("</script>");
		
		}
					
		catch (SQLException e) 
		{
			e.printStackTrace();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Remove Your Current Price First!!!\")");
			pw.println("location='AuctionSeller.jsp';");
			pw.println("</script>");
		}
		
	}
}
