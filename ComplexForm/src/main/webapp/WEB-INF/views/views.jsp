<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	<link href="<c:url value="/resources/css/style.css"/>">
	<link href="<c:url value="/resources/js/script.js"/>">

<title>Please Fill the Form..</title>
</head>
<body class="bg-primary">
	<div class="container mt-5 ">

		<div class="card" style="width: 30rem; margin: auto">

			<div class="card-body ">
				<h5 class="card-title text-center ">COMPLEX FORM</h5>
				<h1>This is Practice page...</h1>
				<form action="handleform" method="post">


					<div class="form-group">


						<label for="exampleInputEmail1">Your Name</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter your Name"
							name="name">


					</div>


					<div class="form-group">


						<label for="exampleInputPassword1">Your ID</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Enter your ID" name="id">


					</div>
					<div class="form-group">


						<label for="exampleInputPassword1">Your DOB</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="DD/MM/YYYY" name="date">


					</div>


					<div class="form-group mt-3">


						<label for="exampleFormControlSelect1">Example Courses: </label> <select
							class="form-control" id="exampleFormControlSelect1">


							<option>Select one</option>


							<option>Java</option>


							<option>Python</option>


							<option>C/C++</option>


							<option>Salesforce</option>


							<option>Django</option>


						</select>
					</div>

					<!-- <div class="form-group">


						<label for="exampleFormControlFile1">Upload Resume and
							Cover Letter</label> <input type="file" class="form-control-file"
							id="exampleFormControlFile1">


					</div> -->
					<div class="form-group-inline">
						<label class="form-check-inline"> Gender</label>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="gender">Male
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="gender">Female
							</label>
						</div>

						<div class="form=group">
							<label>Select Type</label> <select class="form-control"
								name="type">
								<option value="oldStudent">Old Student</option>
								<option value="normalstudent">Normal Student</option>
							</select>
						</div>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary mt-3">Submit</button>
					</div>
				</form>
			</div>
		</div>

	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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