package com.servlet.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.servlet.enttity.RegistrationModel;

public class RegistrationDao {

	static Connection con = DbConnection.getConnection();
	
	public static int registerUser(RegistrationModel rm) {
		
		PreparedStatement ps;
		int i=0;
		String slang = "";
		for (String lang : rm.getLang()) {
			slang = slang + lang + " ,";
		}
		try {
			System.out.println(rm);
			ps = con.prepareStatement("insert into registration(fname, lname, password, gender, email, phone, squestion, sanswer, lang) values('"+rm.getFname()+"','"+rm.getLname()+"','"+rm.getPassword()+"','"+rm.getGender()+"','"+rm.getEmail()+"','"+rm.getPhone()+"','"+rm.getSquestion()+"','"+rm.getSanswer()+"','"+slang+"')");
			i = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("exception while inserting values in database = " + e);
			e.printStackTrace();
		}
		return i;
	}
	

}
