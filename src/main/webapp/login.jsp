<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="height: 100vh">
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
        	<a href="login.jsp"><button type="button" class="btn btn-primary">Log In</button></a>
        	<a href="signup.jsp"><button class="btn btn-danger">Sign Up</button></a>
        </div>
      </div>
    </div>
  </div>
</nav>
	<!-- xx Nav Bar xx -->
	
	<!--  Login Form -->
	
	<div class="h-100 py-5 d-flex justify-content-center" style="background-color: #e5e5f7;
opacity: 0.8;
background-image:  linear-gradient(30deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(150deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(30deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(150deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(60deg, #444cf777 25%, transparent 25.5%, transparent 75%, #444cf777 75%, #444cf777), linear-gradient(60deg, #444cf777 25%, transparent 25.5%, transparent 75%, #444cf777 75%, #444cf777);
background-size: 20px 35px;
background-position: 0 0, 0 0, 10px 18px, 10px 18px, 0 0, 10px 18px;">
		<form method="post" action="authentication.jsp" class="h-75 p-5 bg-white rounded-3 w-25 d-inline-flex flex-column gap-2">
			<h2>Log In</h2>
			<div class="d-inline-flex flex-column">
				<label for="username" class="fs-5 fw-bold">Username</label>
				<input type="text" placeholder="Enter Username" name="uemail"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="password" class="fs-5 fw-bold">Password</label>
				<input type="password" placeholder="Enter Password" name="upass"/>
			</div>
			<input type="submit" value="Login"/>
		</form>
	</div>
	<!-- xx Login Form -->
</body>
</html>