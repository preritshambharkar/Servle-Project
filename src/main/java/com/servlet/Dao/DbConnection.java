package com.servlet.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	 static Connection con;
	 
	 public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newservlet", "root", "");
		} catch (Exception e) {
			System.out.println("getting issue creating connection with DB" + e);
			e.printStackTrace();	
		}
		return con;
	 }


}
