<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authenticating...</title>
</head>
<body>
<%

String email,pass;

email=request.getParameter("uemail");
pass=request.getParameter("upass");

String q="select * from logincab where (email='"+email+"' OR username='"+email+"') AND password='"+pass+"'";

PreparedStatement psmt=conn.prepareStatement(q);

ResultSet rs=psmt.executeQuery();

session.setAttribute("usern", email);


while(rs.next())
{
	if((rs.getString("email").equals(email) || rs.getString("username").equals(email)) && rs.getString("password").equals(pass) && rs.getString("role").equals("Admin"))
	{
		response.sendRedirect("adminPage.jsp");
	}
	
	if((rs.getString("email").equals(email) || rs.getString("username").equals(email)) && rs.getString("password").equals(pass) && rs.getString("role").equals("User") && rs.getString("status").equals("Active"))
	{
		response.sendRedirect("userPage.jsp");
	}
	
	if((rs.getString("email").equals(email) || rs.getString("username").equals(email)) && rs.getString("password").equals(pass) && rs.getString("role").equals("Driver") && rs.getString("status").equals("Active"))
	{
		response.sendRedirect("driverPage.jsp");
	}
}

out.println(email+" "+pass);
out.println("<script>alert('Invalid Username or Password');window.location.href='login.jsp';</script>");

%>
</body>
</html>