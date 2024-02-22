<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CONNECTION</title>
</head>
<body>
<%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/olacab","root","");
%>
</body>
</html>