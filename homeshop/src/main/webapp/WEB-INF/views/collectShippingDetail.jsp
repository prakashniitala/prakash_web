<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/Header.jsp" %>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form  class="form-horizontal">

        <h3>Shipping Address:</h3>

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

   <%--   
        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control" />
        </div> --%>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>
        </form>
        <form:form>
   <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
