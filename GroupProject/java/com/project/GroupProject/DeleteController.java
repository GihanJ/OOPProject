package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.GroupProject.dao.DeleteDao;



public class DeleteController extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		HttpSession session=request.getSession();
		String email =(String) session.getAttribute("email");
		
		
		DeleteDao dao = new DeleteDao();
		
		try 
		{
			 dao.ConnectMYSQL(email);
			 
			 PrintWriter pw = response.getWriter();
			 pw.println("<script type=\"text/javascript\">");
			 pw.println("alert(\"Account Successfully Deleted!!!\")");
			 pw.println("location='SignIn.jsp';");
			 pw.println("</script>");
		}
					
		catch (SQLException e) 
		{
			e.printStackTrace();
			response.sendRedirect("UserPro.jsp");
		}
		
	}

}
