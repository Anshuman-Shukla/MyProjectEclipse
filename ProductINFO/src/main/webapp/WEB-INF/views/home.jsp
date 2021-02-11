<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false"%>
<head>
<meta charset="utf-8">
<%@ include file="./base.jsp"%>
</head>

<body>
	<div class="contaener mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="contanier text-center">Welcome to our Products..</h1>
				<div class="container">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">S.NO</th>
								<th scope="col">Product Name</th>
								<th scope="col">Product Description</th>
								<th scope="col">Price</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${product }" var="p" >
							<tr>
								<th scope="row">PROD00${p.id}</th>
								<td>${p.name}</td>
								<td>${ p.description}</td>
								<td class="font-weight-bold">&#x20B9; ${ p.price}</td>
								<td>
								<a href="delete/${p.id}"><i class="fas fa-trash text-danger" style="font-size: 30px"></i></a>
								<a href="update/${p.id }"><i class="fas fa-edit text-warning" style="font-size: 30px"></i></a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="container text-center">
					<a href="${pageContext.request.contextPath}/add" type="submit" class="btn btn-primary ">Add Product</a>
					</div>
				</div>


			</div>
		</div>
	</div>




</body>

</html>