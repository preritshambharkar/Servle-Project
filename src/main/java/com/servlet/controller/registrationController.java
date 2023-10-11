package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.servlet.enttity.RegistrationModel;
import com.servlet.service.serviceImpl;

@WebServlet("/registration")
public class registrationController extends HttpServlet {
	private static final long serialVersionUID = 2868476700415025101L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		RegistrationModel rm = new RegistrationModel();
		String[] lang = req.getParameterValues("lang");
		rm.setFname(req.getParameter("fname"));
		rm.setLname(req.getParameter("lname"));
		rm.setPassword(req.getParameter("password"));
		rm.setGender(req.getParameter("gender"));
		rm.setEmail(req.getParameter("email"));
		rm.setPhone(req.getParameter("phone"));
		rm.setSquestion(req.getParameter("squestion"));
		rm.setSanswer(req.getParameter("answer"));
		rm.setLang(lang);
		int i = serviceImpl.registerUser(rm);
//		HttpSession session = req.getSession(true);
		RequestDispatcher rd = req.getRequestDispatcher("registration.jsp");
		if(i==1) {
//			session.setAttribute("userRegistered","success");
			req.setAttribute("userRegistered", "success");
			rd.forward(req, resp);
		} else {
			req.setAttribute("userRegistered", "failed");
//			session.setAttribute("userRegistered", "failed");
			rd.forward(req, resp);
		}
	}
}
