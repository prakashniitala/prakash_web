<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="resource/js/jquery.min.js"></script>
    <script src="resource/js/bootstrap.js"></script>
    <script src="resource/bootstrap.min.js"></script>
 <link rel="stylesheet" type="text/css" href="resource/css/Style.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
</head>
<body>
<%@include file="Header.jsp" %>

<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
    <div class="row">
    <div class="col-sm-3">
    
    <video src="resources/image/v.mp4" autoplay="autoplay" controls="controls"/>
    </div>
         <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue to Shopings</h1>
            <div class="account-wall">
            
                <img class="profile-img" src="resources/image/user.jpg"
                    alt="">
                <form class="form-signin" action="login" method='POST'>
                <input type="text" class="form-control" placeholder="Email" name="email" required autofocus>
                <input type="password" class="form-control" placeholder="Password" name="password"    required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="<c:url value="/signup"/>" class="text-center new-account">Create an account </a>
           
        </div>
    </div>
</div> <%-- 
<div class="wrapper">
		<form class="form-signin" action="login" method='POST'>
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<h2 class="form-signin-heading">Please login</h2>
			<input type="text" class="form-control" name="email"
				placeholder="User Name" required="Please enter username"
				autofocus="" /> <input type="password" class="form-control"
				name="password" placeholder="Password"
				required="Please enter password" />
		
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>
	</div> --%>
 <jsp:include page="foot.jsp"></jsp:include>\
</body>
</html>