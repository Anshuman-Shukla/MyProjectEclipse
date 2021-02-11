<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %>
<meta charset="ISO-8859-1">


<title>Home page</title>

<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">

</head>
<body>
<!-- hero Section -->

	
	<!-- Container Start -->
	<div class="container " >
	<div class="container" >
		<div class="row">
			<div class="col-md-12">
				<!-- Header Contetnt -->
				<div class="content-block">
					<h1 class="text-center text-white">Buy & Sell Near You </h1>
					<p class="text-center text-white">Join the millions who buy and sell from each other <br> everyday in local communities around the world</p>
					<div class="short-popular-category-list text-center">
						<h2 class="text-white">Popular Category</h2>
						<ul class="list-inline ">
							<li class="list-inline-item ">
								<a href="category.html" class="text-white"><i class="fa fa-bed "></i> Hotel</a></li>
							<li class="list-inline-item">
								<a href="category.html" class="text-white"><i class="fa fa-grav"></i> Fitness</a>
							</li>
							<li class="list-inline-item">
								<a href="category.html" class="text-white"><i class="fa fa-car"></i> Cars</a>
							</li>
							<li class="list-inline-item">
								<a href="category.html" class="text-white"><i class="fa fa-cutlery"></i> Restaurants</a>
							</li>
							<li class="list-inline-item">
								<a href="category.html" class="text-white"><i class="fa fa-coffee"></i> Cafe</a>
							</li>
						</ul>
					</div>
					
				</div>
				<!-- Advance Search -->
				<div class="advance-search">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-12 col-md-12 align-content-center">
										<form>
											<div class="form-row">
												<div class="form-group col-md-4">
													<input type="text" class="form-control my-2 my-lg-1" id="inputtext4" placeholder="What are you looking for">
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
													<input type="text" class="form-control my-2 my-lg-1" id="inputLocation4" placeholder="Location">
												</div>
												<div class="form-group col-md-2 align-self-center">
													<button type="submit" class="btn btn-primary">Search Now</button>
												</div>
											</div>
										</form>
									</div>
								</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<!-- Container End -->
	



</body>
</html>