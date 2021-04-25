
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham","root","root");
String str="select * from shubham.reg";
Statement ps=con.prepareStatement(str);
ResultSet rs=ps.executeQuery(str);

%>
<form action="updateEmployee.jsp">
<table border="1">
<tr><td><b>username</b></td>
<td><b>email</b></td>
<td><b>password</b></td>
<td><b>update</b></td>
</tr>
<%
	while(rs.next())
	{ 
%>
		<tr><td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			
			<td><a href="updateEmployee.jsp?emailid=<%=rs.getString(2)%>">Update</a></td>
		</tr>
<%
	}
%>
</table>
</form>
</body>
</html>