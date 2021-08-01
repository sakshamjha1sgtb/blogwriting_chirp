package com.chirp.helper;
import java.sql.*;
public class ConnectionProvider 
{

	private static Connection con;
	public static Connection getconnection()
	{
		if(con == null) {
		try {
			String URL = "jdbc:mysql://localhost:3306/chirp";
			String Username = "root";
			String password = "root";
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(URL,Username,password);
			
			
		} catch (Exception e) {
			e.printStackTrace();
	}
		}
		return con; 
}
}