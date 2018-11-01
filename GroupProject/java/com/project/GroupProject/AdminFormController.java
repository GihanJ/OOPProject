package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.GroupProject.dao.AdminFormDao;

public class AdminFormController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
			String aid= request.getParameter("aid");
			int atime = Integer.parseInt(request.getParameter("atime"));
		
			PrintWriter pw = response.getWriter();
			AdminFormDao dao = new AdminFormDao();
			HttpSession session = request.getSession();
			session.setAttribute("aid", aid);
			session.setAttribute("atime", atime);
			
			try 
			{
				 	dao.ConnectMYSQL(aid,atime);
				 	pw.println("<script type=\"text/javascript\">");
					pw.println("alert(\"Auction Started!!!\")");
					pw.println("location='AuctionAdmin2.jsp';");
					pw.println("</script>");
			}
						
			catch (SQLException e) 
			{
	
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert(\"Enter Valid Details!!!\")");
				pw.println("location='AuctionAdmin.jsp';");
				pw.println("</script>");
				
			}
			
	}
		
}

