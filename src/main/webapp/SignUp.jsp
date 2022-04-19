<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Sign Up</title>
<link rel="stylesheet" href="/455Project/signupstyle.css" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
</head>

<body>
	<div class="header">
		<img src="img/fcitlogo.jpg" alt="logo"> <a href="#default"
			class="logo">FCIT EVENTS</a>
		<div class="header-right">
			<a href="ModifyForm.jsp">Modify  Events </a> 
			<a href="AddEventForm.jsp"> Add Events </a>
		</div>
	</div>
	<form name="SignupForm" action="CreateAccount.jsp" method="POST">
		<h3>Create Account</h3>
		<p>Fill in your details to create an account</p>
		
		<label>First Name:</label> 
		<input type="text" name="fName" value="" size="20">
		
		<label>Last Name:</label> 
		<input type="text" name="lName" value="" size="20">
		
		<label>Email</label> 
		<input type="text" name="email" value="" size="20">
		
		<label>Password:</label> 
		<input type="password" name="pass" value="" size="20">

		<button>Submit</button>
	</form>
	
</body>
</html>