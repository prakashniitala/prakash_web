<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/Header.jsp" %>
<!-- My -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="<c:url value="/resources/js/product.js?v3"/>"></script>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected products in your shopping cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="myApp">

            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
             
                <div>
                    <button class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</button>
              
            <!--  <a href="http://localhost:8099/homeshop/checkout?execution=e16s1" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>  -->
        <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a> 
          
                  </div>

                <br/><br/><br/>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>


<td>

            </div>
        </section>
    
                  --%>
                  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/Header.jsp"%>
<!-- My -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="<c:url value="/resources/js/product.js?v3"/>"></script>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<div class="container-wrapper">
	<div class="container">

		<section class="container" ng-app="myApp">

			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">

					<div class="row">
					<div class="col-sm-12 col-md-10 col-md-offset-1">
					
                    <form:form class="form-signin" modelAttribute="billingAddress">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>Product</th>
									<th>Quantity</th>
									<th class="text-center">Price</th>
									<th class="text-center">Total</th>
									<th> </th>
								</tr>
							</thead>
							<tbody>

																<c:forEach items="${cart.cartItems}" var="item">
									<c:set var="sum"
										value="${sum+ product.p.pprice* product.quantity}"></c:set>
									<tr>

										<td class="col-sm-8 col-md-6">
											<div class="media">
												<a class="thumbnail pull-left" href="#"> <img
													class="media-object"
													src="${cp}/${pimg}/${item.product.productId}.jpg"
													style="width: 72px; height: 72px;">
												</a>
												<div class="media-body">
													<h4 class="media-heading">
														<a href="#">${item.product.productName}</a>
													</h4>
													<h5 class="media-heading">
														by <a href="#">${item.product.productBrand}</a>
													</h5>
													<span>Status: </span><span class="text-success"><strong>In
															Stock</strong></span>
												</div>
											</div>
										</td>
										<td class="col-sm-1 col-md-1" style="text-align: center">
											<input type="text" class="form-control"
											id="exampleInputEmail1" value="${item.quantity}">
										</td>
										<td class="col-sm-1 col-md-1 text-center"><strong>${item.product.productPrice}</strong></td>
										<td class="col-sm-1 col-md-1 text-center"><strong>${item.totalPrice}</strong></td>
										<td class="col-sm-1 col-md-1"><a href="#"
											class="label label-danger"
											ng-click="removeFromCart(item.product.productId)"><span
												class="glyphicon glyphicon-remove"></span>remove</a></td>
									</tr>
								</c:forEach>


			
								<tr>
									<th></th>
									<th></th>
									<th>Grand Total</th>
									<th></th>
									<th>{{calGrandTotal()}}</th>
									<th></th>

								</tr>
								<tr>
									<td> </td>
									<td> </td>
									<td> </td>
									<td><a href="${cp}/all" class="btn btn-default"> <span
											class="glyphicon glyphicon-shopping-cart"></span> Continue
											Shopping
									</a></td>
									<td><input name="_eventId_submit" type="submit" value="Checkout" /> </td>
								</tr>
						</table>
</form:form>

					</div>
		</section>