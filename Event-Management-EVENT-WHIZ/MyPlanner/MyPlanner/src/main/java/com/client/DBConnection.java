package com.client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static String url="jdbc:mysql://localhost:3306/myplanner";
	public static String user="root";
	public static String pass="admin";
	private static Connection con;
	
	public static Connection getConnection() {
		//use try catch to display an error when an error occurred, without terminating the program
		try {
			Class.forName("com.mysql.jdbc.Driver"); //interfaces are running on this inbuilt class 'Class'
			con=DriverManager.getConnection(url, user, pass);
			
			
		} catch (Exception e) {
			System.out.println("Database connection is unsuccesful!!!"); 
  		}
		
		
		
		
		return con;
		
		
	}

	public static void close(Connection con2) {
	    if (con2 != null) {
	        try {
	            con2.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle the exception or log it
	        }
	    }
	}




	


}
