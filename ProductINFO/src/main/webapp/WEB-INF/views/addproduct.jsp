<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp" %>

</head>
<body>
<div class="container mt-5">

<div class="col-md-6 offset-md-3">
<h1 class="text-center ">Please fill the Product details.</h1>
<form action="handleProduct" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">PRODUCT NAME</label>
    <input type="text"  name="name" class="form-control" id="exampleFormControlInput1" placeholder="Enter your Product Name">
    
  </div>
  
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">PRODUCT DESCRIPTION</label>
    <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3" placeholder="Product Details....."></textarea>
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlInput1">PRODUCT PRICE</label>
    <input type="number" class="form-control" name="price" id="exampleFormControlInput1" placeholder="In Rupees.">
  </div>
  <div class="container text-center">
  <a type="submit" href="${pageContext.request.contextPath}/" class="btn btn-warning">Back</a>
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
</div>
</div>

</body>
</html>