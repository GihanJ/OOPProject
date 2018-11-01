package com.project.GroupProject.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



//import com.mysql.jdbc.Statement;
import com.project.GroupProject.model.Sidebardata1;
import com.project.GroupProject.model.Sidebardata2;

public class SignInDao 
{

	String sql="select * from customers where email=? and password=? and role=?";
	String query ="select * from customers where email=?";
	String url ="jdbc:mysql://localhost:3306/database?autoReconnect=true&useSSL=false";
	String username="root";
	String pass = "root";
	
	public boolean check(String email,String password,String role) throws SQLException 
	{
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, password);
			st.setString(3, role);
			
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

	public Sidebardata1 side1(String email) throws SQLException 
	{
		
		Sidebardata1 s1 = new Sidebardata1();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, pass);
			PreparedStatement st =  con.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			
			
			if(rs.next()) 
			{
				 
				s1.setName(rs.getString("name"));
					
				
			}
			
		} 
		catch (ClassNotFoundException e) 
		{
			
			e.printStackTrace();
		}
		return s1;
	
	}
	
	public Sidebardata2 side2(String email) throws SQLException
	{
		
		Sidebardata2 s2 = new Sidebardata2();
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, username, pass);
				PreparedStatement st =  con.prepareStatement(query);
				st.setString(1, email);
				ResultSet rs = st.executeQuery();
				
				
				if(rs.next()) 
				{
					s2.setAddress(rs.getString("address"));
					
				}
			
			} 
			catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		return s2;
				
	}
	
}
