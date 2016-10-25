
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<title>
HOME
</title>
<link rel="stylesheet" type="text/css" href="stlye.css">
<script>
jQuery(document).ready(function($) {
	 
    $('#myCarousel').carousel({
            interval: 5000
    });

    $('#carousel-text').html($('#slide-content-0').html());

    //Handles the carousel thumbnails
    $('[id^=carousel-selector-]').click( function(){
            var id_selector = $(this).attr("id");
            var id = id_selector.substr(id_selector.length -1);
            var id = parseInt(id);
            $('#myCarousel').carousel(id);
    });


    // When the carousel slides, auto update the text
    $('#myCarousel').on('slid', function (e) {
            var id = $('.item.active').data('slide-number');
            $('#carousel-text').html($('#slide-content-'+id).html());
    });
});
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	
	<%@include file="Header.jsp" %>
	<br>
	<br>
	 <div class="container-fluid">
<div class ="row">
<div class="col-lg-12">


				<div class="carousel slide" id="carousel-729274" data-interval="500"><!-- <c:catch></c:catch>'> -->
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0" data-ride="carousel" data-target="#carousel-729274">
						</li>
						<li data-slide-to="1" data-target="#carousel-729274">
						</li>
						<li data-slide-to="2" data-target="#carousel-729274">
						</li>
						<li data-slide-to="3" data-target="#carousel-729274">
						</li>
						<li data-slide-to="4" data-target="#carousel-729274">
						</li>
						<li data-slide-to="5" data-target="#carousel-729274">
						</li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img style="height:550px;" alt="Carousel Bootstrap First" src="resources/image/banner4.jpg" />
							<div class="carousel-caption">

							</div>
						</div>
						<div class="item">
							<img style="height:550px;"  alt="Carousel Bootstrap Second" src="resources/image/banner1.jpg" />
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img style="height:550px;" alt="Carousel Bootstrap Third" src="resources/image/banner3.jpg" />
							<div class="carousel-caption">

							</div>
							</div>
							<div class="item">
							<img style="height:550px;" alt="Carousel Bootstrap Third" src="resources/image/banner.jpg" />
							<div class="carousel-caption">

							</div>
						
						</div>
						<div class="item">
							<img style="height:550px;" alt="Carousel Bootstrap Third" src="resources/image/banner6.jpg" />
							<div class="carousel-caption">

							</div>
						
						</div>
						<div class="item">
							<img style="height:550px;" alt="Carousel Bootstrap Third" src="resources/image/banner5.jpg" />
							<div class="carousel-caption">

							</div>
						
						</div>
									
						
						</div>
						
						
					</div>
            <a class="left carousel-control" data-target="#carousel-729274"  data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
         <a class="right carousel-control" data-target="#carousel-729274"  data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>

</div>
</div>
<br>
<br>

<div class="container-fluid">
<div class="row">
<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/image/tv.jpeg" height="240" width="240">
  <div class="card-block">
    <h4 class="card-title">TV</h4>
    <p class="card-text">TV  & More</p>
    <a href="<c:url value="displaycatgory/TV"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>

<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/image/shirt.jpeg" height="240" width="240">
  <div class="card-block">
    <h4 class="card-title">CLOTHS</h4>
    <p class="card-text">MEN,WOMEN,BABY,KID</p>
    <a href="<c:url value="displaycatgory/CLOTHS"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>


<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/image/tv1.jpeg" height="240" width="240">
  <div class="card-block">
    <h4 class="card-title">Book & Other </h4>
    <p class="card-text">Vitamins & Supplements</p>
    <a href="<c:url value="displaycatgory/Books"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>	

<div class="col-sm-3">
<div class="card">
  <img class="card-img-top" src="resources/image/offer.gif" height="240" width="240" ">
  <div class="card-block">
    <h4 class="card-title">At Home & OFFER</h4>
    <p class="card-text">All Home  Products are Available </p>
    <a href="<c:url value="displaycatgory/Home Furnishing"/>" class="btn btn-primary">View All Products</a>
  </div>
</div>
</div>
</div>

</div>
<br>
<br>


<%@include file="foot.jsp" %>
</body>
</html>
