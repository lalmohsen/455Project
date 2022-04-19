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
	
		<form name="AddEvent" action="AddEvent.jsp" method="POST">
		<h3>Form to add events </h3>
		<p>Fill  all fields in order to add the event correctly</p>
		
		<label>Name of Event:</label> 
		<input type="text" name="NameEvent" value="" size="20">
		<label>Date of Event:</label> 
  
    <input type="date" name="DateEvent" 
       value="" min="1997-01-01" max="2030-12-31">
				<label>Name Organizer:</label> 
		<input type="text" name="NameOrganizer" value="" size="20">	
		<label>Number of N_O_Paticapants:</label> 
		<input type="text" name="Capacity" value="" size="20">	
		<button>Submit</button>		
	</form>	
</body>
</html>