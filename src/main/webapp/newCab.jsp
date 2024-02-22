<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Booking Entry...</title>
</head>
<body>
	<%

String phone, pick, drop;

phone=request.getParameter("uphone");
pick=request.getParameter("upickup");
drop=request.getParameter("udrop");

String q="insert into userdetails (phone_no,pickup_location,drop_location) values('"+phone+"','"+pick+"','"+drop+"')";

PreparedStatement ps=conn.prepareStatement(q);

int row=ps.executeUpdate();

if(row>0)
{
	out.println("<script>alert('Booking Created Successfully!');window.location.href='userPage.jsp';</script>");	
}
else
{
	out.println("Wrong");
}
%>
</body>
</html>