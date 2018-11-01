package com.project.GroupProject.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;

public class SignUpDao 
{

	
	String sql="insert into customers values (?,?,?,?,?);";
	String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
	String username="root";
	String pass = "root";
	
	public boolean ConnectMYSQL(String name,String email,String address,String password,String role) throws SQLException 
	{
	
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, address);
			st.setString(4, password);	
			st.setString(5, role);	

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
