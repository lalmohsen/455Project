
	<%
	String Massege_DB = null;
	String ID = request.getParameter("ID");
	int id = Integer.parseInt(ID);

	DB.DB_Connection conn = new DB.DB_Connection();
	int isDeleted = conn.deleteUser(id);
	if (isDeleted > 0)
		Massege_DB ="User is successfully deleted!";
	else
		Massege_DB ="Error";
	conn.close();
	%>









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
<div>
	<p style="color: Black;"> <% 
			out.print(Massege_DB);
			
		%></p>
		</div>

	
</body>
</html>











