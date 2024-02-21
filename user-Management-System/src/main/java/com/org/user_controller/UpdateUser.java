package com.org.user_controller;

import java.io.IOException;

import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.UserDao;
import com.org.dto.User;
import com.org.utilities.HelperClass;

@WebServlet("/updateuser")
public class UpdateUser extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		Long mobile = Long.parseLong(req.getParameter("mobile"));
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setAge(age);
		user.setMobile(mobile);
		user.setEmail(email);
		user.setPassword(password);
		
		UserDao dao = new UserDao();
		dao.updateUserbyID(user);

		resp.sendRedirect("home.jsp");
	}
}
