package com.project.GroupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.GroupProject.dao.PaymentDao;


public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String CardNo= request.getParameter("cno");
		String CardName = request.getParameter("cname");
		String Expire = request.getParameter("cexpire");
		String Cvv = request.getParameter("cvv");
		
		PrintWriter out = response.getWriter();
		
		PaymentDao dao = new PaymentDao();
		
		try {
			if(dao.check(CardNo, CardName, Expire, Cvv)) 
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert(\"Congratulations!!! Your order has been placed.--Redirecting to Home page---\")");
				out.println("location='HomePage2.jsp';");
				out.println("</script>");
				
			}
			
			else 
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert(\"Please Enter Valid Details\")");
				out.println("location='Payment.jsp';");
				out.println("</script>");
				
				
			}
		} 
		catch (SQLException e)
		{
		
			e.printStackTrace();
		}
			
			
			
		
	}

}
