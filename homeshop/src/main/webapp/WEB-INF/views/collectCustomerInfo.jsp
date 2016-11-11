
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/Header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>

<form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="cart.user.name" id="name" class="form-Control" />
        </div>

</form:form>
            <p class="lead">Billing Details:</p>
        </div>
  <form  class="form-horizontal">

        <h3>Customer Address:</h3>
<form>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <input type="text" class="form-Control" />
        </div>
        
      <div class="form-group">
            <label>Apartment Number</label>
            <input type="text" class="form-Control" />
        </div>

        <div class="form-group">
            <label >City</label>
            <input type="type" class="form-Control" />
        </div>
   <div class="form-group">
            <label >State</label>
            <input  class="form-Control" />
        </div>
</form>
        <form:form  class="form-horizontal">

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_submit" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
