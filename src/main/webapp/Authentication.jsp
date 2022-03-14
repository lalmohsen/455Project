<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Authentication</title>
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
		<a class="logo">FCIT EVENTS</a>
		<div class="header-right">
			<a class="active" href="#home">Home</a> <a href="#contact">Contact Us</a>
			<a href="#about">About Us</a>
		</div>
	</div>
	<%
	String email = request.getParameter("email");
	String password = request.getParameter("pass");
	DB.DB_Connection conn = new DB.DB_Connection();
	ResultSet result = conn.verifyUser(email, password);
	if (result.next()) {
		String fn = result.getString("firstName");
		String ln = result.getString("lastName");
		String em = result.getString("email");
		String pw = result.getString("password");
		String id = result.getString("studentID");
		if (pw.equals(password)) {
	%>
	<form action="HomePage.jsp" method="POST">
		<input type="hidden" name="fName" value="<%=fn%>" size="20"/> 
		<input type="hidden" name="lName" value="<%=ln%>" size="20"/> 
		<input type="hidden" name="sID" value="<%=em%>" size="20"/> 
		<input type="hidden" name="email" value="<%=pw%>" size="20"/> 
		<input type="hidden" name="pwd" value="<%=id%>" size="20"/>
		<h2>Successful Log in!</h2>
		<p>Welcome, <%=fn%> <%=ln%></p>
		<button>Continue to Home Page</button>
	</form>
	<%
	} else {
	String redirectURL = "LoginError.jsp";
	response.sendRedirect(redirectURL);
	}
	}
	conn.close();
	%>
</body>
</html>