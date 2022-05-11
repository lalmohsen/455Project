<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<style>

table.center {
  margin-left: auto; 
  margin-right: auto;
}
th, td {

  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;

  border-color: white;
}
thead{
font-family: 'Poppins',sans-serif;
  border-style:solid;
  border-color: white;
  padding: 10px;
  font-size:20px;
}
}
table{
padding: 10px;
color:white;
border-collapse: collapse;

}


</style>
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
			<a href="ModifyForm.jsp">Modify Events </a> <a
				href="AddEventForm.jsp"> Add Events </a>
		</div>
	</div>

	<%
	DB.DB_Connection user = new DB.DB_Connection();
	ResultSet result = user.getEvent();
	%>

	<table border="3px"  ; class="center"; border-color="white" ; style="width:100%" ">
	<h3
				style="color: white; font-size: 32px; font-weight: 500; line-height: 42px; text-align: center; font-family:'Poppins',sans-serif; margin-bottom:25px; margin-top:25px">
				Modify Events</h3>
		<thead >
				<td style='color:white; font-size: 40; font-weight:bold; text-align:center;'>Name</td>
			<td style='color:white; font-size: 40; font-weight:bold; text-align:center;'>Capacity</td>
				<td style='color:white; font-size: 40; font-weight:bold; text-align:center;'>Date Event</td>
				<td style='color:white; font-size: 40; font-weight:bold; text-align:center;'> Operation </td>
		</thead>
		<tbody>
		

			<%
			while (result.next()) {
			%>


			<td style='color:white; text-align:center;'><%=result.getString("NameEvent")%></td>
			<td style='color:white; text-align:center;'><%=result.getString("IDE")%></td>
			<td style='color:white; text-align:center;'><%=result.getString("DateEvent")%></td>

			<td>
				<div style="margin: auto; text-align: center; display: block; color:white">
					
					
					<a  href="updateEventForm.jsp?ID=<%=result.getInt("IDE")%>">Update </a> 
					
					
					||| <a href="DeleteEvent.jsp?ID=<%=result.getInt("IDE")%>">Delete </div>
					 </a>
				
				
						
			</td>
			</tr>
			<%
			}

			user.close();
			%>
		
</body>
</html>