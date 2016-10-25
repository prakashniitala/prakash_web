<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	
	<%@include file="Header.jsp" %>
	<br>
	<br>
<br>
<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 ">
			<div class="table-responsive">
				<table class="table table-hover table-condensed cf table2">
					<thead class="cf">
						<tr>
							<th></th>
						<!-- 	<th>ProductID</th> -->
							<th>Product Name</th>
							<th>Product Brand</th>
							<th>Product Category</th>
								<th>Product Price</th>
							<!-- <th>Edit Product</th>
							<th>Delete Product</th> -->
						</tr>
					</thead>
					<tbody>
					<!-- loop to print data from object (productData) which is coming thorough  Controller -->
						<c:forEach items="${productData}" var="data">

							<tr>
							<!-- we are getting image from server local storage and rest data from H2 DataBase -->
								<br>
								<br>
								
								<td><img alt=""
									src="${cp}/resources/image/productimages/${data.productId}.jpg"
									height="100ppx" width="100px" /></td>
								<%-- <td class="active">${data.productId}</td> --%>
								<td align="left">${data.productName}</td>
								<td>${data.productBrand}</td>
								<td>${data.productQuantity}</td>
								<td>Rs.  ${data.productPrice} &#x20B9</td>
								<td><a href="<c:url value="/singledata/${data.productId}"/>"  class="btn btn-primary btn-lg">VIEW</a>
								</td>
							
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<%@include file="foot.jsp" %>
	</body>
	</html>