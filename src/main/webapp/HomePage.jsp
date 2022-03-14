<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>FCIT Events | Home</title>
<link rel="stylesheet" href="/455Project/homestyle.css" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="header">
		<img src="img/fcitlogo.jpg" alt="logo"> <a href="#default"
			class="logo">FCIT EVENTS</a>
		<div class="header-right">
			<a class="active" href="#home">Home</a> <a href="#contact">Contact
				Us</a> <a href="#about">About Us</a>
		</div>
	</div>
	<%
	String fName = request.getParameter("fName");
	String lName = request.getParameter("lName");
	String email = request.getParameter("email");
	String passwordd = request.getParameter("pwd");
	String id = request.getParameter("sID");
	%>
	<form>
		<div> 
			<h2>Welcome, <%=fName%></h2>
		</div>
		<div>
			<div class="carousel">
				<ul class="slides">
					<input type="radio" name="radio-buttons" id="img-1" checked />
					<li class="slide-container">
						<div class="slide-image">
							<img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Timisoara_-_Regional_Business_Centre.jpg">
						</div>
						<div class="carousel-controls">
							<label for="img-3" class="prev-slide"> <span>&lsaquo;</span>
							</label> <label for="img-2" class="next-slide"> <span>&rsaquo;</span>
							</label>
						</div>
					</li>
					<input type="radio" name="radio-buttons" id="img-2" />
					<li class="slide-container">
						<div class="slide-image">
							<img src="https://content.r9cdn.net/rimg/dimg/db/02/06b291e8-city-14912-171317ad83a.jpg?width=1750&height=1000&xhint=3040&yhint=2553&crop=true">
						</div>
						<div class="carousel-controls">
							<label for="img-1" class="prev-slide"> <span>&lsaquo;</span>
							</label> <label for="img-3" class="next-slide"> <span>&rsaquo;</span>
							</label>
						</div>
					</li>
					<input type="radio" name="radio-buttons" id="img-3" />
					<li class="slide-container">
						<div class="slide-image">
							<img src="https://speakzeasy.files.wordpress.com/2015/05/twa_blogpic_timisoara-4415.jpg">
						</div>
						<div class="carousel-controls">
							<label for="img-2" class="prev-slide"> <span>&lsaquo;</span>
							</label> <label for="img-1" class="next-slide"> <span>&rsaquo;</span>
							</label>
						</div>
					</li>
					<div class="carousel-dots">
						<label for="img-1" class="carousel-dot" id="img-dot-1"></label> <label
							for="img-2" class="carousel-dot" id="img-dot-2"></label> <label
							for="img-3" class="carousel-dot" id="img-dot-3"></label>
					</div>
				</ul>
			</div>
		</div>
	</form>
</body>
</html>