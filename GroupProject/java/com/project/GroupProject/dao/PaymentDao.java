package com.project.GroupProject.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentDao 
{
	String sql="select * from payment where CardNo=? and CardName=? and ExpiryDate=? and Cvv=?";
	String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
	String username="root";
	String pass = "root";
	
	public boolean check(String CardNo,String CardName,String Expire,String Cvv) throws SQLException 
	{
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, CardNo);
			st.setString(2, CardName);
			st.setString(3, Expire);
			st.setString(4, Cvv);
			
			ResultSet rs = st.executeQuery();
			
			
			
			if(rs.next()) 
			{
					
				return true;
				
			}	
			
		} 
		catch (ClassNotFoundException e) 
		{
			
			e.printStackTrace();
		}
		
		
		
		return false;
	}


}
