<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
	<%
	String Nameevent = request.getParameter("Nameevent");
	String Dateevent = request.getParameter("Dateevent");
	String NameOrganizere = request.getParameter("NameOrganizer");
	String N_O_Paticapants = request.getParameter("N_O_Paticapants");
	DB.DB_Connection conn = new DB.DB_Connection();
	boolean isAdded = conn.addEvent(Nameevent,Dateevent,NameOrganizere,N_O_Paticapants);
	if (isAdded)
	out.print("Data is successfully inserted!");
	else
	out.print("Error");
	%>
</body>
</html>