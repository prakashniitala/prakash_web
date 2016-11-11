
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="Linking.jsp" %>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
       <a class="navbar-brand" href="#">HOME SHOPING</a>
       <!--  <img src="resources/image/download.png" class="navbar-brand" href="#" height="920" width="150"/> --> 
       
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value="/" />">HOME</a></li>
       <!--  <li class="active"><a href="checkout">ADD</a></li>
 -->          <li><a href="<c:url value="/Viewall"/>"> ALL PRODUCT</a></li>
 
 			  <sec:authorize access="hasRole('ROLE_USER')">
 			  	<%-- <li><a href="<c:url value="/customer/cart/" />">View Cart</a></li> --%>
 			  	<li><a href="<c:url value="/customer/rest/cart/StartFlow" />"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
 			  </sec:authorize>
 			  <sec:authorize access="isAnonymous()">
 			  	<li><a href="<c:url value="/login" />">View Cart</a></li>
 			  </sec:authorize>
                                
               
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronics Accessories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value="/displaycatgory/TV"/>">TV</a></li>
            <li><a href="<c:url value="/displaycatgory/Moblie"/>">Moblie</a></li>
            <li><a href="<c:url value="/displaycatgory/Computer"/>">Computer Accessories</a></li>
             <li><a href="<c:url value="/displaycatgory/>Headphones"/>">Headphones & Headsets</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Clothes<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value="/displaycatgory/Men"/>">Men</a></li>
            <li><a href="<c:url value="/displaycatgory/Women"/>">Women</a></li>
            <li><a href="<c:url value="/displaycatgory/Baby"/>">Baby & Kid</a></li>
          </ul>
        </li>
         <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Home & Furniture<span class="caret"></span></a>
          <ul class="dropdown-menu">
          	  <li><a href="<c:url value="/displaycatgory/Kitchen"/>">Kitchen</a></li>
            <li><a href="<c:url value="/displaycatgory/Tools"/>">Tools & Hardware</a></li>
            <li><a href="<c:url value="/displaycatgory/furnishing"/>">Home Furnishing</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Book & Others<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value="/displaycatgory/Books"/>">Books</a></li>
            <li><a href="<c:url value="/displaycatgory/Stationery"/>">Stationery</a></li>
            <li><a href="<c:url value="/displaycatgory/Game"/>">Game</a></li>
          </ul>
        </li>  
        <li><a href="<c:url value="/about"/>" >ABOUT</a></li>
        <li><a href="Contacts">CONTACTS</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
         
   <sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin">
  <li><a href="<c:url value="/admin/all"/>"><span class="glyphicon glyphicon-user"></span>Admin</a></li> 
   </sec:authorize>
   <sec:authorize access="hasRole('ROLE_USER')" var="isUser">
  
   </sec:authorize>
  
  <c:if test="${(isAdmin)  || (isUser)}">
 <%--  <li><a href="<c:url value="/admin/all"/>"><span class="glyphicon glyphicon-user"></span>Admin</a></li> --%>
   {customer}
   
   <li><a href="<c:url value="/logout"/>">LogOut</a></li>
  </c:if> 
  
 
  <c:choose>
    <c:when test="${(isAdmin)  || (isUser)}">
 
    </c:when>    
    <c:otherwise>

                    <li>
                      <a href="<c:url value="/signup"/>"><span class="glyphicon glyphicon-user">SIGNUP</a>
                    </li>
                 
                    <li>
                      <a href="<c:url value="/login"/>">Sign In</a>

                    </li>
                  </ul>
                </li>
               
 
   </c:otherwise>
</c:choose>
                
    </ul>
    
    
    
   
    </div>
    
  </div>
</nav>