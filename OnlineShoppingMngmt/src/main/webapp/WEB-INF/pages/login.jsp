<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<title>Login page</title>
</head>
<body>

	<%
	String login_session = (String) session.getAttribute("user");%>
	<%if (login_session == null) {
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#"> <img class="nlog"
			src="<c:url value="/resources/images/logo1.jpg"/>" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav  main-nav ">
				<li class="nav-item active "><a class="nav-link" href="#">HOME</a>
				</li>
				<li class="nav-item active text-center "><a class="nav-link" href="#">******INVALID CREDENTIAL******</a>
				</li>

			<ul class="navbar-nav ml-auto mt-10">
				<li class="nav-item"><a
					class="nav-link login-button text-white" data-toggle="modal"
					data-target="#exampleModalCenter1">Register</a></li>
				<li class="nav-item"><a
					class="nav-link login-button text-white login" data-toggle="modal"
					data-target="#exampleModalCenter">Login</a></li>
				<li class="nav-item"><a class="nav-link text-white add-button"
					href="ad-listing.html"><i class="fas fa-shopping-cart"></i></a></li>
			</ul>
		</div>
	</nav>

	<!-- Button trigger modal -->


	<!-- Modal for Login-->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h5>Login Now</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container  mr-3 ">
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="text" class="form-control" name="user_name"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" name="user_pass"
									placeholder="Password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary ">Submit</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Modal for Register-->
	<div class="modal fade" id="exampleModalCenter1" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h5>Register Now</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container  mr-3 ">
						<form>
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Your Name">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Mobile No.</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"
									placeholder="Enter Your Mobile No.">

							</div>
							<div class="form-group">
								<input type="radio" name="options" id="option"
									autocomplete="off"> Radio <input type="radio"
									name="options" id="option" autocomplete="off"> Radio

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary ">Submit</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>


	<%
	} else {
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#"> <img class="nlog"
			src="<c:url value="/resources/images/logo1.jpg"/>" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav  main-nav ">
				<li class="nav-item active "><a class="nav-link" href="#">HOME</a>
				</li>
				<li class="nav-item dropdown dropdown-slide"><a
					class="nav-link dropdown-toggle text-white" data-toggle="dropdown"
					href="">MEN<span></span>
				</a> <!-- Dropdown list -->
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Dashboard</a> <a
							class="dropdown-item" href="#">Dashboard My Ads</a> <a
							class="dropdown-item" href="#">Dashboard Favourite Ads</a> <a
							class="dropdown-item" href="dashboard-archived-ads.html">Dashboard
							Archived Ads</a> <a class="dropdown-item"
							href="dashboard-pending-ads.html">Dashboard Pending Ads</a>
					</div></li>
				<li class="nav-item dropdown dropdown-slide"><a
					class="nav-link dropdown-toggle text-white" href="#"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						WOMEN </a> <!-- Dropdown list -->
					<div class="dropdown-menu">
						<a class="dropdown-item" href="about-us.html">About Us</a> <a
							class="dropdown-item" href="contact-us.html">Contact Us</a> <a
							class="dropdown-item" href="user-profile.html">User Profile</a> <a
							class="dropdown-item" href="404.html">404 Page</a> <a
							class="dropdown-item" href="package.html">Package</a> <a
							class="dropdown-item" href="single.html">Single Page</a> <a
							class="dropdown-item" href="store.html">Store Single</a> <a
							class="dropdown-item" href="single-blog.html">Single Post</a> <a
							class="dropdown-item" href="blog.html">Blog</a>

					</div></li>
				<li class="nav-item dropdown dropdown-slide"><a
					class="nav-link dropdown-toggle text-white" href=""
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						KIDS </a> <!-- Dropdown list -->
					<div class="dropdown-menu">
						<a class="dropdown-item" href="category.html">Ad-Gird View</a> <a
							class="dropdown-item" href="ad-listing-list.html">Ad-List
							View</a>
					</div></li>
				<li class="nav-item dropdown dropdown-slide"><a
					class="nav-link dropdown-toggle text-white" href=""
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						OFFERS </a> <!-- Dropdown list -->
					<div class="dropdown-menu">
						<a class="dropdown-item" href="category.html">Ad-Gird View</a> <a
							class="dropdown-item" href="ad-listing-list.html">Ad-List
							View</a>
					</div></li>
				<li class="nav-item dropdown dropdown-slide"><a
					class="nav-link dropdown-toggle text-white" href=""
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						ABOUT US </a> <!-- Dropdown list -->
					<div class="dropdown-menu">
						<a class="dropdown-item" href="category.html">Ad-Gird View</a> <a
							class="dropdown-item" href="ad-listing-list.html">Ad-List
							View</a>
					</div></li>
			</ul>

			<ul class="navbar-nav ml-auto mt-10">
				<li class="nav-item active "><a class="nav-link" href="#">${name }</a>
				</li>
				<li class="nav-item"><a
					class="nav-link login-button text-white login" href="${pageContext.request.contextPath}/logout">Logout</a></li>
				<li class="nav-item"><a class="nav-link text-white add-button"
					href="ad-listing.html"><i class="fas fa-shopping-cart"></i></a></li>
			</ul>
		</div>
	</nav>

	<!-- Button trigger modal -->



	<!-- Modal for Register-->


	<%
	}
	%>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


</body>
</html>