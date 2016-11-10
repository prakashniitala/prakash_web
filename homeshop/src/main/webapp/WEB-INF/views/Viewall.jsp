<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="Header.jsp"%>
</head>
<body>

	<br>
	<br>
	<br>
	<div class="container">

		<div ng-app="myApp" ng-controller="productCtrl" ng-init="test='${hj}'">
			<p>

				<input type="text" class="form-control" id="usr" ng-model="test">
			</p>
			<table class="table table-hover">
				<thead>
					<tr>
					<!-- 	<th>ID</th>
 -->						<th ng-click="orderByMe('name')">Name</th>
						<th ng-click="orderByMe('Quantity')">Quantity</th>
						<th ng-click="orderByMe('band')">brand</th>
						<th ng-click="orderByMe('price')">price</th>
						<th ng-click="orderByMe('country')">Category</th>
					</tr>
					<tr ng-repeat="x in myData | orderBy:myOrderBy | filter:test">
						
						<!-- <td><img alt="" ng-src="/resources/image/productimages/{{x.productId}.jpg"
									height="100ppx" width="100px" /></td>
	 -->					<!-- <td>{{x.productId}}</td> -->
						<td>{{x.productName}}</td>
						<td>{{x.productQuantity}}</td>
						<td>{{x.productBrand}}</td>
						<td> {{x.productPrice}} &#x20B9</td>
						<td>{{x.productCategory}}</td>
						<td>{{x.file}}</td>
						<td ng-controller="cartCtrl">
					  <sec:authorize access="hasRole('ROLE_USER')">
						<button type="button" class="btn btn-warning btn-large" ng-click="addToCart(x.productId)"><span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</button>						
						  </sec:authorize>
						   <sec:authorize access="isAnonymous()">
 			   <li>
                      <a href="<c:url value="/login"/>" class="btn btn-warning btn-large">ADD TO CART</a>

                   
 			  </sec:authorize>
						</td>
						<td ><a href="<c:url value="/singledata/{{x.productId}}"/>"
							class="btn btn-primary">VIEW</a>
							</p></td>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<script src="resources/js/product.js?v3"></script>
<%@include file="foot.jsp"%>
</body>
</html>