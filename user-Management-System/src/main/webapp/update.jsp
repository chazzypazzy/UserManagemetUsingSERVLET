
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

.background_image {
	background-image: url(img/bg_img1.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	height: 570px;
}
</style>
</head>
<body>
	<%@ include file="components/homePage.jsp"%>
	<%
	UserDao dao =new UserDao();
	int id = Integer.parseInt(request.getParameter("id"));
	User u = dao.fetchUerbyID(id);


	%>
	<div class="background_image">
		<div class="container p-3">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="car paint-card">
						<div class="card-body">
							<p class="fs-4 text-center">
								Update
								<%=u.getName()%>'s Profile
							</p>
							<form action="updateuser" method="post">
								<div class="mb-3">
									<input name="id" type="hidden" class="form-control"
										value="<%=u.getId()%>" required>
								</div>
								<div class="mb-3">
									<label class="form-label">Name</label> <input name="name"
										type="text" class="form-control" value="<%=u.getName()%>"
										required>
								</div>
								<div class="mb-3">
									<label class="form-label">Age</label> <input name="age"
										type="text" class="form-control" value="<%=u.getAge()%>"
										required>
								</div>
								<div class="mb-3">
									<label class="form-label">Mobile</label> <input name="mobile"
										type="text" class="form-control" value="<%=u.getMobile()%>"
										required>
								</div>
								<div class="mb-3">
									<label class="form-label">Email</label> <input name="email"
										type="email" class="form-control" value="<%=u.getEmail()%>"
										required>
								</div>
								<button type="submit"
									class="btn bg-primary text-white col-md-12">Confirm
									Change</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>