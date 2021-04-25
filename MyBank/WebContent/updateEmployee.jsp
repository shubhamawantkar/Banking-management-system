<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>

</head>
<body>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>

<%
	
String emailid=request.getParameter("emailid");
System.out.println(emailid);
%>

<form action="updateEmployee" method="post">

<input type="text" placeholder="Username" name="uname" required>
<br>
<input type="text" placeholder="email" name="email" required>
<br>
<input type="text" placeholder="password" name="psw" required>
<br>
<button type="submit">Update</button>
</form>
</body>
</html>