<%@page import="com.org.dto.User"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/allcss.jsp"%>
</head>
<body>
	<%@ include file="components/homePage.jsp"%>

	<h1 class="text-center">Welcome to ShelterWander.com</h1>
	<center>
		<p>
			<i>ShelterWander provides a streamlined solution for effortless data
				storage and deletion functions, and for those coustomer who Purchases Shelter for pet animals from ShelterWander.com</i>
		<center>
			<a class="btn btn-primary" href="adduser.jsp">To Add New user
				Click Here</a>
			<div class="container-fluid p-3">

				<p class="fs-3 text-center">All User Details</p>
				<hr>
				<table class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Age</th>
							<th>Mobile</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						UserDao dao = new UserDao();
						List<User> users = dao.fetchAllUser();
						User user = (User) session.getAttribute("userObject");
						for (User u : users) {
							if (user.getId() == u.getId())
								continue;
						%>
						<tr>
							<td><%=u.getName()%></td>
							<td><%=u.getAge()%></td>
							<td><%=u.getMobile()%></td>
							<td><%=u.getEmail()%></td>
							<td><a class="btn btn-primary"
								href="update.jsp?id=<%=u.getId()%>">Update</a> <a
								class="btn btn-danger" href="delete.jsp?id=<%=u.getId()%>">Delete</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
</body>
</html>