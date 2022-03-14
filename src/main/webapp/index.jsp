<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>FCIT Events</title>
<link rel="stylesheet" href="/455Project/indexstyles.css" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
</head>

<body>
	<div class="header">
		<img src="img/fcitlogo.jpg" alt="logo">
		<a href="#default" class="logo">FCIT EVENTS</a>
		<div class="header-right">
			<a class="active" href="#home">Home</a> <a href="#contact">Contact Us</a>
			<a href="#about">About Us</a>
		</div>
	</div>
	<form name="loginForm" action="Authentication.jsp" method="POST">
		<h3>Welcome!</h3>
		<p>Sign in to register for upcoming events in FCIT</p>

		<label for="id">Email:</label> 
		<input type="text" placeholder="Student@stu.kau.edu.sa" name="email"> 
		
		<label for="password">Password:</label>
		<input type="password" placeholder="Password" name="pass">

		<button>Sign In</button>
		<p>Don't have an account?</p>
		<div style="margin: auto; text-align: center; display: block;">
			<a href="SignUp.jsp"> Sign Up </a>
		</div>
	</form>
</body>

</html>