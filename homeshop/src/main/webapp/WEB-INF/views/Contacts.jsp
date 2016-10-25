<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  
      <link rel="stylesheet" type="text/css" href="resource/css/slider.css">
<!-- <script src="resource/js/slider.js"></script>
 -->
<jsp:include page="Linking.jsp"></jsp:include>
</head>
<body>
<%@include file="Header.jsp" %>
<br>
<br>
<br>
<div class="container">
<!-- <img src="resources/image/download.jpg" class="img-thumbnail" alt="CONTACTS" width="1344" height="236"> -->
</div>
<div class="container">

  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our fans!</em></p>
  <div class="row test">
    <div class="col-md-4">
       <img src="resources/image/contactus.png" class="img-thumbnail" alt="CONTACTS" width="304" height="136">
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <div class="row">
       <div class="col-md-12 form-group">
       </div>
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div> 
      <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>NIIT ALAMBAGH LUCKNOW,INDIA</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 8175967544</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p> 
    </div>
    </div>
  </div>
</div>
<%@include file="foot.jsp" %>
</body>
</html>