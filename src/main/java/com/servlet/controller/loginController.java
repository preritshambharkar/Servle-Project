package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servlet.enttity.LoginModel;

@WebServlet("/login")
public class loginController extends HttpServlet {

	private static final long serialVersionUID = 5845710607140076166L;

	public loginController() {
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		PrintWriter out = resp.getWriter();
		out.println("login model : " + username);
		out.println("login model : " + password);
//		LoginModel lm = () req;
//		out.println("login model : " + lm);
	}
	
}
