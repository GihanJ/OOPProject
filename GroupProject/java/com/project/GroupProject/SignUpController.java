package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.project.GroupProject.dao.SignUpDao;


public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  	{
		
		String name = request.getParameter("urName");
		String email= request.getParameter("email");
		String address = request.getParameter("address");
		String password = request.getParameter("pd");
		String role = request.getParameter("role");
		
		SignUpDao dao = new SignUpDao();
		PrintWriter pw = response.getWriter();
		
		try 
		{
			 dao.ConnectMYSQL(name, email, address, password,role);
			 
			 pw.println("<script type=\"text/javascript\">");
			 pw.println("alert(\"Registration Successful!!!\")");
			 pw.println("location='SignIn.jsp';");
			 pw.println("</script>");
			
		
		}
					
		catch (SQLException e) 
		{
			
			e.printStackTrace();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert(\"Email Already Exists!!!\")");
			pw.println("location='SignUp.jsp';");
			pw.println("</script>");
			
		}
		
	}

}
