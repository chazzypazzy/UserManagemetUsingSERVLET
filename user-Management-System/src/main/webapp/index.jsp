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
	<%@ include file="components/navbar.jsp"%>
	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img src="img/img1.jpg" class="d-block w-100" height="550px"
					alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="5000">
				<img src="img/img2.jpg" class="d-block w-100" alt="..."
					height="550px">
			</div>
			<div class="carousel-item" data-bs-interval="5000">
				<img src="img/img3.jpg" class="d-block w-100" alt="..."
					height="550px">
			</div>
		</div>
	</div>
</body>
</body>
</html>