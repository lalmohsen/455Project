
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

<%	
 String errorEventName=null,errorNameOrganizer =null,errorN_O_Paticapants=null , MassegeDataBase=null;
	 if (request.getParameter("Update") != null) {
		
		 String NameEvent_u = request.getParameter("NameEvent");
		 String DateEvent_u = request.getParameter("DateEvent");
		 String NameOrganizer_u = request.getParameter("NameOrganizer");
		 String Capacity_u = request.getParameter("Capacity");
	
		 DB.DB_Connection conn1 = new DB.DB_Connection();
		 DB.EventPage Event = new DB.EventPage();
		 
		 NameEvent_u = Event.RemoveSpece(NameEvent_u);
		 NameOrganizer_u = Event.RemoveSpece(NameOrganizer_u);
		 Capacity_u = Event.RemoveSpece(Capacity_u);
	
	boolean checkEventName=Event.isonlyalphabets(NameEvent_u);
	boolean checkNameOrganizer=Event.isonlyalphabets(NameOrganizer_u);
	boolean check_O_Paticapants=Event.isIntger(Capacity_u);
	boolean check_DB= false;
	
	if(checkEventName && checkNameOrganizer && check_O_Paticapants){
		 
		int  isAddedd = conn1.updateUser( NameEvent_u,  DateEvent_u,  NameOrganizer_u ,  Capacity_u , IDEvent);
		 if(isAddedd>0){
			 MassegeDataBase ="Data is successfully Added!";
			 check_DB = true;
		 } else{
				 MassegeDataBase ="Error";
				 check_DB = true;
			 conn1.close();}

	}else{
		if(!checkEventName){
			errorEventName="The name of Event("+NameEvent_u +") The name must be all letters";
		}
		if(!checkNameOrganizer){
			errorNameOrganizer="The name of Organizer("+NameOrganizer_u+") must be all letters";
		}
		if(!check_O_Paticapants){
			errorN_O_Paticapants="The Number of Paticapants ("+Capacity_u+")is must be intger ";
		}

	}
 }
 %> 






<%@ page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<style>

form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
  body {
            font-family: 'Poppins',sans-serif;
            letter-spacing: 0.5px;
            margin:0;
            background-color: #376e44;
        	 font-weight: 500;
            font-size: 16px;
            color: #ffffff;
            display: block;
             
         

   

input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
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
			<a href="ModifyForm.jsp">Modify  Events </a> 
			<a href="AddEventForm.jsp"> Add Events </a>
		</div>
	</div>


	<form action="" method="POST">

	<h3
				style="color: white; font-size: 32px; font-weight: 500; line-height: 42px; text-align: center; margin-bottom: 20px">
				Update </h3>
				<input type="hidden" name="IDEvent" value="<%=ID%>" style="/>
					 Name of Event: 
					<input type="text" name="NameEvent" value="<%=NameEvent%>" size="20" />
                       <% if(errorEventName!=null){ %>
			<p style="color: red;"> <% out.print(errorEventName); }%></p>
				
					Name of Organizer:
				<input type="text" name="NameOrganizer" value="<%=NameOrganizer%>" />
                   <% if(errorNameOrganizer!=null){ %>
			    <p style="color: red;"> <% out.print(errorNameOrganizer); }%></p>
		
					Date Event :
					  <input type="date" name="DateEvent"  value="<%=DateEvent%>" min="1997-01-01" max="2030-12-31">

		
					Capacity:
					<input type="text" name="Capacity" value="<%=Capacity%>"  size="20"/>		
					<% if(errorN_O_Paticapants!=null){ %>
			<p style="color: red;"> <% out.print(errorN_O_Paticapants); }%></p>

					<input type="submit" value="Update" name="Update" />
					<input type="reset" value="Clear" name="Clear" />
			<p style="color: Black;"> <% if(MassegeDataBase!=null){
			out.print(MassegeDataBase);
			MassegeDataBase = null ;
		}%></p>
					

	</form>
	<% }
 user.close();
 %>
</body>
</html>