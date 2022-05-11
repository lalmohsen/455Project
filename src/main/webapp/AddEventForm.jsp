

<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
 
   <%
 String errorEventName=null,errorNameOrganizer =null,errorN_O_Paticapants=null ,
		 errorDateEvent=null , MassegeDataBase=null;
	 if (request.getParameter("submit") != null) {
		
		 DB.DB_Connection conn = new DB.DB_Connection();
		 DB.EventPage Event = new DB.EventPage();
		 
		 String NameEvent = request.getParameter("NameEvent");
		 String DateEvent = request.getParameter("DateEvent");
		 String NameOrganizer = request.getParameter("NameOrganizer");
		 String Capacity = request.getParameter("Capacity");
	
		
	 
		 
		 NameEvent = Event.RemoveSpece(NameEvent);
		 NameOrganizer = Event.RemoveSpece(NameOrganizer);
		 Capacity = Event.RemoveSpece(Capacity);
		 
	boolean checkEventName=Event.isonlyalphabets(NameEvent);
	boolean checkNameOrganizer=Event.isonlyalphabets(NameOrganizer);
	boolean check_O_Paticapants=Event.isIntger(Capacity);
	boolean check_DB= false;
	boolean check_DateEvent= false;
	
	 if(!DateEvent.equals("")){
		 check_DateEvent= true;
	}
	
	if(checkEventName && checkNameOrganizer && check_O_Paticapants&&check_DateEvent){
		 boolean isAdded = conn.addEvent( NameEvent,  DateEvent,  NameOrganizer ,  Capacity);
		 if(isAdded){
			 MassegeDataBase ="Data is successfully Added!";
			 check_DB = true;
		 } else{
				 MassegeDataBase ="Error";
				 check_DB = true;
			 conn.close();}

	}else{
		if(!checkEventName){
			errorEventName="The name of Event("+NameEvent+") The name must be all letters";
		}
		if(!checkNameOrganizer){
			errorNameOrganizer="The name of Organizer("+NameOrganizer+") must be all letters";
		}
		
		if(!check_O_Paticapants){
			errorN_O_Paticapants="The Number of Paticapants ("+Capacity+")is must be intger ";
		}

		if(!check_DateEvent){
			errorN_O_Paticapants="The Number of Paticapants ("+Capacity+")is must be intger ";
		}
		
		if(check_DateEvent== false){
			 errorDateEvent = "Please Enter The Date";;
		}
		
		if(NameEvent.equals("")){
			errorEventName="please Enter The Event Name ";
		}
		if(NameOrganizer.equals("")){
			errorNameOrganizer="please Enter The Name of organzer  ";
		}
		if(Capacity.equals("")){
			errorN_O_Paticapants="please Enter The Capacity  ";
		}
	}
 }
 %>  
    
    
    
    
       
    
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
		<form name="AddEvent" action="" method="POST">
		<h3
				style="color: white; font-size: 32px; font-weight: 500; line-height: 42px; text-align: center;">
				Add Event </h3>
		<label>Name of Event:</label> 
		<input type="text" name="NameEvent" value="" size="20">
		        <% if(errorEventName!=null){ %>
			<p style="color: red;"> <% out.print(errorEventName); }%></p>
		<label>Date of Event:</label> 
    <input type="date" name="DateEvent" value="" min="1997-01-01" max="2030-12-31">
     <% if(errorDateEvent!=null){ %>
			<p style="color: red;"> <% out.print(errorDateEvent); }%></p>
       
				<label>Name Organizer:</label> 
		<input type="text" name="NameOrganizer" value="" size="20">	
				        <% if(errorNameOrganizer!=null){ %>
			<p style="color: red;"> <% out.print(errorNameOrganizer); }%></p>
		<label>Number of N_O_Paticapants:</label> 
		<input type="text" name="Capacity" value="" size="20">
			 <% if(errorN_O_Paticapants!=null){ %>
			<p style="color: red;"> <% out.print(errorN_O_Paticapants); }%></p>
			
		<input type="submit" class="add-btn" name="submit" value="Done">
		
		<p style="color: Black;"> <% if(MassegeDataBase!=null){
			out.print(MassegeDataBase);
			MassegeDataBase = null ;
			  errorEventName=null;
			  errorNameOrganizer =null;
			  errorN_O_Paticapants=null ;
					 errorDateEvent=null ; 
					 MassegeDataBase=null;
		}%></p>
		

	</form>	
</body>
</html>