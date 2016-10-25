<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.easyzoom {
    float: left;
}
.easyzoom img {
    display: block;
}


/* Shrink wrap strategy 2 */
.easyzoom {
    display: inline-block;
}
.easyzoom img {
    vertical-align: bottom;
}</style>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
//Instantiate EasyZoom instances
var $easyzoom = $('.easyzoom').easyZoom();

// Get an instance API
var api = $easyzoom.data('easyZoom');
</script>
</head>
<body>
	
	<%@include file="Header.jsp" %>

	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    
						<center>
						<div class="easyzoom">
    <a href="images/zoom.jpg">
							<img id="item-display" src="${cp}/resources/image/productimages/${product.productId}.jpg" alt="" hight="400"></img>
							</a>
							</div>
						</center>
					</div>
					
					
				</div>
				
			  <div class="col-sm-6 col-md-4 col-md-offset-4">
			<!-- 	<div class="col-md-12"> -->
					<div class="product-title">${product.productName}</div>
					<div class="product-desc">${product.productBrand}</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">$ ${product.productPrice}</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">
						<button type="button" class="btn btn-success">
							Add to cart 
						</button>
					</div>
					
						<button type="button" class="btn btn-danger">
							Add to wishlist 
						</button>
						<br>
						<br>
                <button type="button" href="<spring:url value="/Viewall" />" class="btn btn-default">Continue Shopping</button>
					
				
				</div>
			</div> 
		</div>
			<!-- <div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
					
							</section>
										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
								
						</section>
						
					</div>
					<div class="tab-pane fade" id="service-three">
												
					</div>
				</div>
				<hr> -->
			</div>
		</div>
	</div>
</div>
	
		</body>
	</html>