package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SignOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		session.removeAttribute("email");
		session.invalidate();
		PrintWriter pw = response.getWriter();
		pw.println("<script type=\"text/javascript\">");
		pw.println("alert(\"Sign Out Successful!!!\")");
		pw.println("location='SignIn.jsp';");
		pw.println("</script>");
	}


}