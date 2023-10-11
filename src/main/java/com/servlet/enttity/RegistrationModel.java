package com.servlet.enttity;

import java.util.Arrays;

public class RegistrationModel {
	
	private String fname;
	private String lname;
	private String password;
	private String gender;
	private String email;
	private String phone;
	private String squestion;
	private String sanswer;
	private String[] lang;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSquestion() {
		return squestion;
	}
	public void setSquestion(String squestion) {
		this.squestion = squestion;
	}
	public String getSanswer() {
		return sanswer;
	}
	public void setSanswer(String sanswer) {
		this.sanswer = sanswer;
	}
	public String[] getLang() {
		return lang;
	}
	public void setLang(String[] lang) {
		this.lang = lang;
	}
	@Override
	public String toString() {
		return "RegistrationModel [fname=" + fname + ", lname=" + lname + ", password=" + password + ", gender="
				+ gender + ", email=" + email + ", phone=" + phone + ", squestion=" + squestion + ", sanswer=" + sanswer
				+ ", lang=" + Arrays.toString(lang) + "]";
	}
	
	
}
