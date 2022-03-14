<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Create Account</title>
</head>
<body>
	<%
	String fName = request.getParameter("fName");
	String lName = request.getParameter("lName");
	String email = request.getParameter("email");
	String password = request.getParameter("pass");
	DB.DB_Connection conn = new DB.DB_Connection();
	boolean isAdded = conn.addUser(fName, lName, email, password);
	if (isAdded)
	out.print("Data is successfully inserted!");
	else
	out.print("Error");
	%>

</body>
</html>