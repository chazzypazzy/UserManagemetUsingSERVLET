<%@page import="com.org.dto.User"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary navbar-dark"
	style="background-color: black">
	<div class="container-fluid">
		<a class="navbar-brand" href="home.jsp">ShelterWander.com</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse text-center"
			id="navbarSupportedContent">

				<ul class="navbar-nav me-2 mb-2 mb-lg-1 ms-auto">
					<%
						User profileuser = (User) session.getAttribute("userObject");
					%>
					<li class="nav-item m-2"><a class="btn btn-success" aria-current="page" href="update.jsp?id=<%=profileuser.getId()%>">Profile</a></li>
					<li><form action="logout" method="post" class="navbar-nav m-2 me-2 mb-1 mb-lg-1 ms-auto">
						<input class="btn btn-danger" type="submit" name="profile" value="Logout"></form>
					</li>
			</ul>
		</div>
	</div>
</nav>