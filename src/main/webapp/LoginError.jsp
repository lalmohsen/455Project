<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Log in Error</title>
<link rel="stylesheet" href="/455Project/errorstyle.css" type="text/css">
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
	<form name="errorForm" action="index.jsp" method="POST">
		<h2>Error Logging in!</h2>
		<p>Wrong Email or Password, Please try again</p>
		<button>Back</button>
	</form>
</body> 
</html>