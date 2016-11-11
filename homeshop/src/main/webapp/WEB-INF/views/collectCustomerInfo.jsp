
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/Header.jsp" %>


<%-- <div class="container-wrapper">
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
 --%>
 <div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="cart.user.name" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.user.email" id="email" class="form-Control" />
        </div>

       <%--  <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control" />
        </div> --%>

        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.user.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="cart.user.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="cart.user.billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="cart.user.billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="cart.user.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.user.billingAddress.zipCode" id="billingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>

 