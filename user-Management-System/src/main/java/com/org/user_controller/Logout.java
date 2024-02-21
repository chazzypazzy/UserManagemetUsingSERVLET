package com.org.user_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dto.User;
@WebServlet("/logout")
public class Logout extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	HttpSession session = req.getSession(false);
	if(session != null)
	{
		session.getAttribute("userObject");
		session.invalidate();
	}
	resp.sendRedirect("login.jsp");
	
	}
}
