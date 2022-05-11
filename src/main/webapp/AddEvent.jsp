<%@page import="DB.EventPage"%>
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
      boolean Cheak_Vaild_Input = true ;
	String Massege = "";
 String NameEvent = request.getParameter("NameEvent");
 String DateEvent = request.getParameter("DateEvent");
 String NameOrganizer = request.getParameter("NameOrganizer");
 String Capacity = request.getParameter("Capacity");
 DB.DB_Connection conn = new DB.DB_Connection();
 boolean isAdded = conn.addEvent( NameEvent,  DateEvent,  NameOrganizer ,  Capacity);
 boolean isStrig = false ; 
 DB.EventPage event   = new EventPage();
 isStrig = event.isonlyalphabets(NameEvent);
 
 out.print(isStrig +"  "+NameEvent);
 
 if(isAdded)
 out.print("Data is successfully Added!");
 else
 out.print("Error");
 conn.close();
 
	
	
 %>
</body>
</html>