package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.GroupProject.dao.UpdateDao;

public class UpdateController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String name = request.getParameter("Name");
		String email= request.getParameter("Email");
		String address = request.getParameter("Address");
		String password = request.getParameter("Password");
		
		UpdateDao dao = new UpdateDao();
		PrintWriter pw = response.getWriter();
		
		try 
		{
			 dao.ConnectMYSQL(name, email, address, password);
			 
			 HttpSession session = request.getSession();
			 session.setAttribute("name", name);
			 session.setAttribute("address", address);
			 session.setAttribute("pd", password);
			 
			 pw.println("<script type=\"text/javascript\">");
			 pw.println("alert(\"Update Successful!!!\")");
			 pw.println("location='UserPro.jsp';");
			 pw.println("</script>");

		}
					
		catch (SQLException e) 
		{
			e.printStackTrace();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Update Failed!!!\")");
			pw.println("location='SignIn.jsp';");
			pw.println("</script>");
		 
		}
		
	}

}
