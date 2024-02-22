<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registering...</title>
</head>
<body>
<%

String email,user,pass,status="Active",role="Driver";

email=request.getParameter("uemail");
user=request.getParameter("uuser");
pass=request.getParameter("upass");

String q="insert into logincab (username,password,email,status,role) values('"+user+"','"+pass+"','"+email+"','"+status+"','"+role+"')";

PreparedStatement ps=conn.prepareStatement(q);

int row=ps.executeUpdate();

if(row>0)
{
	out.println("<script>alert('Account Created Successfully!');window.location.href='login.jsp';</script>");	
}
else
{
	out.println("Wrong");
}
%>

</body>
</html>