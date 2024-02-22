<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Panel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="height:100vh">
<!-- Nav Bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="#">Ola Cabs</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        <div>
        	<li class="nav-item">
        		<a class="nav-link" href="logout.jsp"><button class="btn btn-danger">Logout</button></a>
      		</li>
        </div>
      </div>
    </div>
    <div>
    	<%
    ResultSet rs;
    String q;
    PreparedStatement ps;
    	String s=(String)session.getAttribute("usern");
    
    	q="select * from logincab where (email='"+s+"' OR username='"+s+"')";
    	
    	ps=conn.prepareStatement(q);
    	
    	rs=ps.executeQuery();
    	
    	if(rs.next())
    	{
    		String us=rs.getString("username");	
    	
    	%>
      <div class="nav-item">
        <a class="nav-link fw-bold fs-5 text-success" href="#">Hello, <%=us %></a>
      </div>
      <%
    }
    %> 
    </div>
  </div>
</nav>
	<!-- xx Nav Bar xx -->
	

	<div class="h-100 px-5 py-5 bg-dark text-black rounded-xl">
		<div class="h-75 bg-white p-5" style="border-radius: 1rem">
			<h1>Welcome, Book your cab now</h1><hr/>
			<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Book Cab
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Book a Cab</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form method="post" action="newCab.jsp" class="h-75 p-5 bg-white rounded-3 w-100 d-inline-flex flex-column gap-2">
			<div class="d-inline-flex flex-column">
				<label for="uphone" class="fs-5 fw-bold">Phone No.</label>
				<input type="text" placeholder="Enter Phone No." name="uphone"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="upickup" class="fs-5 fw-bold">Pick up location</label>
				<input type="text" placeholder="Enter Pick up location" name="upickup"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="udrop" class="fs-5 fw-bold">Drop location</label>
				<input type="text" placeholder="Enter Drop location" name="udrop"/>
			</div>
			<input type="submit" class="btn btn-danger" value="Book Now"/>
		</form>
      </div>
    </div>
  </div>
</div>
			<%
				//String urole="User";
				q="select * from logincab where role='Driver'";
				ps=conn.prepareStatement(q);
				rs=ps.executeQuery();
			%>
			<table class="table table-hover">
				<thead class="thead-dark">
					<tr>
					<th scope="col">ID</th>
					<th scope="col">Email</th>
					<th scope="col">Role</th>
					</tr>
					</thead>
					
					<%
					while(rs.next())
					{
					%>
						<tbody>
							<tr>
							<th scope="row"><%=rs.getInt("id") %></th>
							<td scope="row"><%=rs.getString("email") %></td>
							<td scope="row"><%=rs.getString("role") %></td>
							</tr>
						</tbody>
						
						<%
					}
					%>
		</div>
	</div>
</body>
</html>