<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

body {
	background-image: url(img/bg_img1.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
</head>
<body>
	<%@ include file="components/homePage.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<%
						UserDao dao1 = new UserDao();
						int id1 = Integer.parseInt(request.getParameter("id"));
						User u = dao1.fetchUerbyID(id1);
						%>
						<p class="fs-3 text-center">
							Are You Confirm to Delete the
							<%=u.getName()%>'s Data Permanently?
						</p>
						<form action="deleteuser" method="post"
							style="text-align: center;">
							<input type="hidden" name="userId"
								value="<%=request.getParameter("id")%>"> <input
								class="btn btn-primary" type="submit" value="Confirm"
								name="Confirm"> <a class="btn btn-danger text-center"
								href="home.jsp">Cancel</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>