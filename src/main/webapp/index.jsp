
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ola - Book Your Cab</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="height: 100vh; position:relative;">
<!-- Nav Bar -->
<nav class="postion-absolute z-index-2 navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="#">Ola Cabs</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <div>
        	<a href="login.jsp"><button type="button" class="btn btn-primary">Log In</button></a>
        	<a href="signup.jsp"><button class="btn btn-danger">Sign Up</button></a>
        </div>
      </div>
    </div>
  </div>
</nav>
<!-- xx Nav Bar xx -->

<!-- Home Page -->
<section style="height: calc(100vh - 80px)" class="position-relative d-inline-flex flex-column justify-content-center align-items-center container-fluid">
	<!-- Image Carousel -->
	<div style="height: calc(100vh - 80px)" id="carouselExampleControls" class="carousel slide position-absolute z-index-n2" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.unsplash.com/photo-1518614919089-568f0daa305b?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="d-block img-fluid" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1569435544409-c870fd7703dc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://plus.unsplash.com/premium_photo-1658506638425-25dc93218082?q=80&w=1547&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- xx Image Carousel xx -->

<div class="px-5 py-3 bg-white rounded-pill position-absolute z-index-2 d-inline-flex flex-column align-items-center">
	<h1 class="fs-3 fw-bold">Book a Taxi in your city</h1>
	<h2 class="fs-5 fw-normal">Choose from a range of Categories and Price</h2>
	<a href="signup.jsp"><button class="btn btn-primary">Book Now</button></a>
</div>
</section>
<!-- xx Home Page xx -->
</body>
</html>