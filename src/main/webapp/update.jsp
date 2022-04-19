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
	<%
 String NameEvent = request.getParameter("NameEvent");
 String DateEvent = request.getParameter("DateEvent");
 String NameOrganizer = request.getParameter("NameOrganizer");
 String Capacity = request.getParameter("Capacity");
 String IDE = request.getParameter("IDEvent");
 DB.DB_Connection conn = new DB.DB_Connection();
 int isAdded = conn.updateUser( NameEvent,  DateEvent,  NameOrganizer ,  Capacity , IDE);
 if(isAdded>0)
 out.print("Data is successfully Updated!");
 else
 out.print("Error");
 conn.close();
 %>
</body>
</html>