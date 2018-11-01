package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.GroupProject.dao.SignInDao;
import com.project.GroupProject.model.Sidebardata1;
import com.project.GroupProject.model.Sidebardata2;




public class SignInController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String email= request.getParameter("email");
		String password = request.getParameter("pd");
		String role = request.getParameter("role");
		
		
		SignInDao dao = new SignInDao();
		PrintWriter pw = response.getWriter();
		
		try 
		{
			if(dao.check(email,password,role))
			{
				
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("pd", password);
				session.setAttribute("role", role);
				Sidebardata1 s1 =dao.side1(email);	
				Sidebardata2 s2 =dao.side2(email);
				session.setAttribute("name",s1);
				session.setAttribute("address",s2);
				
				
				
				if(email.equals(email) && (password.equals(password) && (role.equals("Admin"))))
				{
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert(\"Admin Login Successful!!!\")");
					pw.println("location='AdminHome.jsp';");
					pw.println("</script>");
		
				}
				else if(email.equals(email) && (password.equals(password) && (role.equals("Buyer"))))
				{
					
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert(\"Buyer Login Successful!!!\")");
					pw.println("location='HomePage2.jsp';");
					pw.println("</script>");
					
					
				}
				else if(email.equals(email) && (password.equals(password) && (role.equals("Seller"))))
				{
	
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert(\"Seller Login Successful!!!\")");
					pw.println("location='HomePage2.jsp';");
					pw.println("</script>");
					
	
				}
				
			}
			
			else {
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert(\"Enter Valid Credentials!\")");
					pw.println("location='SignIn.jsp';");
					pw.println("</script>");
					
				}
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}
	
	
}
