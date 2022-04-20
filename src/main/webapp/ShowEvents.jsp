<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Events</title>
</head>
<body>

<% 
 DB.DB_Connection u = new DB.DB_Connection();
 ResultSet result = u.getEvents();
 %>
 <h1>My Events</h1>
 <table border="1">
 <tbody>
 <tr>
 <td>Event name:</td>
 <td></td>
 </tr>
<% while(result.next()) { %>
 <tr>
 <td><%= result.getString("NameEvent")%></td>
 
 </tr>
<% }
u.close();
 %> 
 </tbody>
 </table>

</body>
</html>