package com.org.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.org.dto.User;
import com.org.utilities.HelperClass;

public class UserDao {
	public void saveuser(User user) {
		Connection conn = HelperClass.getDBConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(
					"insert into db_table_project1(name,age,mobile,email,password) values(?,?,?,?,?)");
			ps.setString(1, user.getName());
			ps.setInt(2, user.getAge());
			ps.setLong(3, user.getMobile());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> fetchAllUser() {
		Connection con = HelperClass.getDBConnection();
		User user = null;
		List<User> list = new ArrayList<User>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from db_table_project1");
			ResultSet rst = ps.executeQuery();
			while (rst.next()) {
				int id = rst.getInt("id");
				String name = rst.getString("name");
				int age = rst.getInt("age");
				long mobile = rst.getLong("mobile");
				String email1 = rst.getString("email");
				String password2 = rst.getString("password");

				user = new User();
				user.setId(id);
				user.setName(name);
				user.setMobile(mobile);
				user.setAge(age);
				user.setEmail(email1);
				user.setPassword(password2);

				list.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public User fetchUerbyID(int id) {
		Connection con = HelperClass.getDBConnection();
		User user = null;
		try {
			PreparedStatement stat = con.prepareStatement("select * from db_table_project1 where id=?");
			stat.setInt(1, id);

			ResultSet rst = stat.executeQuery();

			if (rst.next()) {
				int id1 = rst.getInt("id");
				String name = rst.getString("name");
				int age = rst.getInt("age");
				long mobile = rst.getLong("mobile");
				String email1 = rst.getString("email");
				String password2 = rst.getString("password");

				user = new User();
				user.setId(id1);
				user.setName(name);
				user.setAge(age);
				user.setMobile(mobile);
				user.setEmail(email1);
				user.setPassword(password2);
			}
			return user;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public void updateUserbyID(User user) {
		Connection con = HelperClass.getDBConnection();
		try {
			PreparedStatement ps = con
					.prepareStatement("update db_table_project1 set name=?,age=?,mobile=?,email=? where id=?");
			ps.setString(1, user.getName());
			ps.setInt(2, user.getAge());
			ps.setLong(3, user.getMobile());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getId());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public User fetchUserbyEmailAndPassword(String email, String password) {
		Connection con = HelperClass.getDBConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from db_table_project1 where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rst = ps.executeQuery();

			User user = null;
			if (rst.next()) {
				int id = rst.getInt("id");
				String name = rst.getString("name");
				int age = rst.getInt("age");
				long mobile = rst.getLong("mobile");
				String email1 = rst.getString("email");
				String password1 = rst.getString("password");

				user = new User();
				user.setId(id);
				user.setName(name);
				user.setAge(age);
				user.setMobile(mobile);
				user.setEmail(email1);
				user.setPassword(password1);
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void deleteUser(User user) {

		Connection con = HelperClass.getDBConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from db_table_project1 where id=?");
			ps.setInt(1, user.getId());
			ps.executeUpdate();    
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}