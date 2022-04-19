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
	String ID = request.getParameter("ID");
	DB.DB_Connection user = new DB.DB_Connection();
	ResultSet result = user.getUser(Integer.parseInt(ID));
	if (result.next()) {
		String IDEvent = result.getString("IDE");
		String NameEvent = result.getString("NameEvent");
		String NameOrganizer = result.getString("NameOrganizer");
		String DateEvent = result.getString("DateEvent");
		int Capacity  = result.getInt("Capacity");
	%>

	<form action="update.jsp" method="POST">
		<table border="0">
			<tbody>
				<tr>
				<input type="hidden" name="IDEvent" value="<%=ID%>" />
					<td>Name of Event:</td>
					<td><input type="text" name="NameEvent" value="<%=NameEvent%>" size="30" /></td>
				</tr>
				<tr>
				
					<td>Name of Organizer:</td>
					<td><input type="text" name="NameOrganizer" value="<%=NameOrganizer%>" /></td>
				</tr>	
				<tr>
					<td>DateEvent :</td>
					<td>    <input type="date" name="DateEvent"  value="<%=DateEvent%>" min="1997-01-01" max="2030-12-31"></td>
				</tr>
				<tr>	
					 <td>NameOrganizer:</td>
					<td><input type="text" name="NameOrganizer" value="<%=NameOrganizer%>" /></td>
				</tr>
				<tr>
					<td>Capacity:</td>
					<td><input type="text" name="Capacity" value="<%=Capacity%>" /></td>		
					
								
				</tr>
				<tr>
					<td><input type="submit" value="Update" name="Update" /></td>
					<td><input type="reset" value="Clear" name="Clear" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<% }
 user.close();
 %>
</body>
</html>