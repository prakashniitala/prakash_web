
<c:set var="cp" value="${pageContext.request.contextPath}" />
<jsp:include page="Linking.jsp" />

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">HOME SHOPING</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronics Accessories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">TV</a></li>
            <li><a href="#">Moblie</a></li>
            <li><a href="#">Computer Accessories</a></li>
             <li><a href="#">Headphones & Headsets</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Clothes<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Men</a></li>
            <li><a href="#">Women</a></li>
            <li><a href="#">Baby & Kid</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Home & Furniture<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Kitchen</a></li>
            <li><a href="#">Tools & Hardware</a></li>
            <li><a href="#">Home Furnishing</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Book & Others<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Books</a></li>
            <li><a href="#">Stationery</a></li>
            <li><a href="#">Game</a></li>
          </ul>
        </li>
        <li><a href="<c:url value="/about"/>" >ABOUT</a></li>
        <li><a href="#">CONTACTS</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value="/admin/all"/>"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  