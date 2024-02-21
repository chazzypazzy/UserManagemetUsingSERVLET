package com.org.user_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/deleteuser")
public class DeleteUserbyID extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String str = req.getParameter("userId");
		int id4 = Integer.parseInt(str);
		
		User user1 = new User();
		user1.setId(id4);
		UserDao dao = new UserDao();
		dao.deleteUser(user1);
		
		resp.sendRedirect("home.jsp");
		
	
	}
}
