<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<meta charset="ISO-8859-1">


<title>Home page</title>

<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">

</head>
<body>
	<!-- hero Section -->
	

	<!-- Container Start -->
	<div class="container ">


		<!-- Advance Search -->
		<div class="advance-search">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-12 col-md-12 align-content-center">
						<form>
							<div class="form-row">
								<div class="form-group col-md-4">
									<input type="text" class="form-control my-2 my-lg-1"
										id="inputtext4" placeholder="What are you looking for">
								</div>
								<div class="form-group col-md-3">
									<select class="w-100 form-control mt-lg-1 mt-md-2">
										<option>Category</option>
										<option value="1">Top rated</option>
										<option value="2">Lowest Price</option>
										<option value="4">Highest Price</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<input type="text" class="form-control my-2 my-lg-1"
										id="inputLocation4" placeholder="Location">
								</div>
								<div class="form-group col-md-2 align-self-center">
									<button type="submit" class="btn btn-primary">Search
										Now</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>


<div class="container-fluid">
<div class="row">
<div class="col-md-9">
<div class="row row-cols-1 row-cols-md-3">
		<%
		for (int i = 0; i < 10; i++) {
		%>
		<div class="card m-2 p-2" style="width: 220px;">
			<img class="card-img-top"
				src="<c:url value="/resources/images/images.jpg" />"
				alt="Card image cap">

			<div class="card-body">
				<div class="d-inline p-2  text-black">HOME</div>
				<div class="d-inline p-2  text-black">Price=$500</div>
				<p class="card-text mt-3">Available for Sell..</p>
				<a href="#" class="btn btn-primary">View More..</a>
			</div>
		</div>
		<%
		}
		%>
	</div>
</div>
<div class="col-md-3">
<h1>Details....</h1>
</div>

</div>

</div>
	<!-- Card  -->

	
</html>