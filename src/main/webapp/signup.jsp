<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body class="w-100" style="height: 100vh">
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

<!-- Sign up Form -->
<div class="h-100 py-5 d-flex flex-column align-items-center gap-2" style="background-color: #e5e5f7;
opacity: 0.8;
background-image:  linear-gradient(30deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(150deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(30deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(150deg, #444cf7 12%, transparent 12.5%, transparent 87%, #444cf7 87.5%, #444cf7), linear-gradient(60deg, #444cf777 25%, transparent 25.5%, transparent 75%, #444cf777 75%, #444cf777), linear-gradient(60deg, #444cf777 25%, transparent 25.5%, transparent 75%, #444cf777 75%, #444cf777);
background-size: 20px 35px;
background-position: 0 0, 0 0, 10px 18px, 10px 18px, 0 0, 10px 18px;">
		<div>
		<div class="nav nav-tabs d-flex px-5 py-2 bg-white rounded shadow" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
    <button class="nav-link active" id="user-tab" data-bs-toggle="tab" data-bs-target="#user" type="button" role="tab" aria-controls="user" aria-selected="true">User</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="driver-tab" data-bs-toggle="tab" data-bs-target="#driver" type="button" role="tab" aria-controls="driver" aria-selected="false">Driver</button>
  </li>
		</div>
		<!-- User Form -->
		<div class="tab-content" id="nav-tabContent">
		<form method="post" action="userRegisterAuth.jsp" id="user"  role="tabpanel" aria-labelledby="user-home-tab" class="tab-pane fade show active h-75 p-5 shadow-lg bg-white rounded-3 d-inline-flex flex-column gap-2">
		   <h2>User</h2>
			<div class="d-inline-flex flex-column">
				<label for="username" class="fs-5 fw-bold">Username</label>
				<input type="text" name="uuser" placeholder="Enter Username"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="username" class="fs-5 fw-bold">Email</label>
				<input type="text" name="uemail" placeholder="Enter Email"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="password" class="fs-5 fw-bold">Password</label>
				<input type="password" name="upass" placeholder="Enter Password"/>
			</div>
			<input type="submit" value="Sign Up" class="fw-bold btn btn-primary"/>
		</form>
		<!-- Driver Form -->
		<form method="post" action="driverRegisterAuth.jsp" id="driver"  role="tabpanel" aria-labelledby="driver-home-tab" class="tab-pane fade h-75 p-5 shadow-lg bg-white rounded-3 d-inline-flex flex-column gap-2">
		   <h2>Driver</h2>
			<div class="d-inline-flex flex-column">
				<label for="username" class="fs-5 fw-bold">Username</label>
				<input type="text" name="uuser" placeholder="Enter Username"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="username" class="fs-5 fw-bold">Email</label>
				<input type="text" name="uemail" placeholder="Enter Email"/>
			</div>
			<div class="d-inline-flex flex-column">
				<label for="password" class="fs-5 fw-bold">Password</label>
				<input type="password" name="upass" placeholder="Enter Password"/>
			</div>
			<input type="submit" value="Sign Up" class="fw-bold btn btn-primary"/>
		</form>
		</div>
		</div>
	</div>
	<!-- xx Sign Up Form -->
	
</body>
</html>