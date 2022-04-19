<%@ page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
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
			<a href="ModifyForm.jsp">Modify  Events </a> 
			<a href="AddEventForm.jsp"> Add Events </a>
		</div>
	</div>
	
	<%
	DB.DB_Connection user = new DB.DB_Connection();
	ResultSet result = user.getEvent();
	%>
	<table border="1">
		<tbody>
			<tr>
				<td>Name</td>
				<td>DateEvent</td>
			</tr>
			<%
			while (result.next()) {
			%>
			<tr>
				<td><%=result.getString("NameEvent")%></td>
				<td><%=result.getString("IDE")%></td>
				<td><%=result.getString("DateEvent")%></td>
				<td><a
					href="updateEventForm.jsp?ID=<%=result.getInt("IDE")%>">
						Update </a> | <a
					href="DeleteEvent.jsp?ID=<%=result.getInt("IDE")%>"> Delete
				</a></td>
			</tr>
			<%}
			
			user.close();
			%>
</body>
</html>