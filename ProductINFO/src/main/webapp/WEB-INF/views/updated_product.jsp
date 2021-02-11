<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./base.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">

<div class="col-md-6 offset-md-3">
<h1 class="text-center ">Update your Product details.</h1>
<form action="${pageContext.request.contextPath }/handleProduct" method="post">

<input type="text" value="${product.id }" name="id">
  <div class="form-group">
    <label for="exampleFormControlInput1">PRODUCT NAME</label>
    <input type="text"  name="name" class="form-control" id="exampleFormControlInput1" value="${product.name }">
    
  </div>
  
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">PRODUCT DESCRIPTION</label>
    <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3" >${product.description }</textarea>
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlInput1">PRODUCT PRICE</label>
    <input type="number" class="form-control" name="price" id="exampleFormControlInput1" value="${product.price }">
  </div>
  <div class="container text-center">
  <a type="submit" href="${pageContext.request.contextPath}/" class="btn btn-warning">Back</a>
  <button type="submit" class="btn btn-primary">Update</button>
  </div>
</form>
</div>
</div>

</body>
</html>