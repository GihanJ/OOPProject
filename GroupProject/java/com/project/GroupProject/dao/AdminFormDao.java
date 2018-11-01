package com.project.GroupProject.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminFormDao 
{
	String sql="update auction_info set aid=?,atime=? where pid='1000';";
	String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
	String username="root";
	String pass = "root";
	
	public boolean ConnectMYSQL(String aid,int atime) throws SQLException 
	{
		try 
		{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,pass);
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, aid);
				st.setLong(2, atime);
				
				int count=st.executeUpdate();
				
				System.out.println(count+"row/s affected");
				st.close();
				con.close();
		} 
		
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		return false;
			
	}
	
}
