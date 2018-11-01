package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.GroupProject.dao.BuyerFormDao;


public class BuyerFormController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String email = request.getParameter("email");
		String pid = request.getParameter("pid");
		int atime = Integer.parseInt(request.getParameter("atime"));
		float bid =Float.parseFloat(request.getParameter("bid"));
	
		HttpSession session = request.getSession();
		session.setAttribute("bid", bid);
		
		BuyerFormDao dao = new BuyerFormDao();
		PrintWriter pw = response.getWriter();
		
		try 
		{
			 dao.ConnectMYSQL(email,pid,atime,bid);
			
			 pw.println("<script type=\"text/javascript\">");
			 pw.println("alert(\"Bid Placed Successfully !!!\")");
			 pw.println("location='AuctionBuyer.jsp';");
			 pw.println("</script>");
				
		
		}
					
		catch (SQLException|NumberFormatException e) 
		{
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Remove Your Current Bid First !!!\")");
			pw.println("location='AuctionBuyer.jsp';");
			pw.println("</script>");
		}
		
	}
}
	