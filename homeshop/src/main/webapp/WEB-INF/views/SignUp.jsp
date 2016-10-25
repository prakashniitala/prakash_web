<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@include file="Header.jsp" %>
<br>
<div class="container"> <!-- container start -->
<div class="row"><!-- row Start -->

<div class="col-lg-3">
<!-- empty column for space from right -->
</div>

<div class="col-lg-6"><!-- col Start -->
    <br>
<br>
    <article role="login">
    
                <h3 class="text-center"><i></i>SIGN UP & GET SHOPPING VOUCHERS WORTH 2500

ALREADY REGISTERED? SIGN IN</h3>
                <form:form action="${cp}/insertuser"  modelAttribute="user"  method="post">
                
                  <div class="form-group">
                    <form:input type="text" path="name" class="form-control" placeholder="UserName" pattern="[a-zA-Z0-9]+" required="required"/>
                  </div> 
                  <div class="form-group">
                    <form:input type="email" path="email" class="form-control" placeholder="Email Address" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/>
                  </div>
                  <div class="form-group">
                    <form:input type="password" path="password" class="form-control" placeholder="Passoword" required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                  </div>
                  <div class="form-group" Style="display:none">
                    <form:input type="text"  path ="enabled" value="true" class="form-control" placeholder="Password" required="required"/>
                  </div>
                  <div class="form-group" Style="display:none">
                    <form:input type="text"  path ="role" value="ROLE_USER" class="form-control" placeholder="Password" required="required"/>                 </div>
                  <div class="form-group">
                   <!--  <div class="checkbox">
                      <label>
                        <input type="checkbox"> Please accept the terms and conditions to proceed with your request.
                      </label>
                    </div> -->
                  </div>
                  <div class="form-group">
                    <input type="submit" class="btn btn-success btn-block">
                  </div>
                
                </form:form>

                <footer role="signup" class="text-center">
                  <ul>
                    <li>
                      <a href="#">Terms of Use</a>
                    </li>
                    <li>
                      <a href="#">Privacy Statement</a>
                        
                    </li>
                     <a href="<c:url value="/login"/>">Sign In</a>
                  </ul>
                </footer>

              </article>
    </div> <!-- col over -->
    
    <div class="col-lg-3">
<!-- empty column for space from left -->
</div>
    
    </div> <!-- Row over -->
    
    </div><!-- Contain over -->
<%@ include file="foot.jsp" %>