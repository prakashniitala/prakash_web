 <sf:form class="form-signin" modelAttribute="billingAddress">
 
                           <h2 class="form-signin-heading btn-info" style="width: 100%">Billing
                                 Address</h2>
                           <table class="table">
                                 <tr>
                                        <td><form:label path="cname">
                                                     <spring:message text="Customer Name" />
                                               </form:label></td>
                                        <td><form:input path="cname" style="width:150px;"
                                                     class="form-control" /></td>
                                                     <form:input type="hidden" path="cname"></form:input>
                                        <td><form:errors path="cname" /></td>
                                 </tr>
 
                                 <tr>
                                        <td><form:label path="caddress">
                                                     <spring:message text="Address" />
                                               </form:label></td>
                                        <td><form:input path="caddress" style="width:150px;"
                                                     class="form-control" /><form:input type="hidden" path="caddress"></form:input></td>
                                        <td><form:errors path="caddress" /></td>
                                 </tr>
 
                                 <tr>
                                        <td><form:label path="phone">
                                                     <spring:message text="phone" />
                                               </form:label></td>
                                        <td><form:input path="phone" style="width:150px;"
                                                     class="form-control" /><form:input type="hidden" path="cname"></form:input></td>
                                        <td><form:errors path="phone" /></td>
                                 </tr>
 
                                 <tr>
                                        <td><form:label path="zipCode">
                                                     <spring:message text="Zipcode" />
                                               </form:label></td>
                                        <td><form:input path="zipCode" style="width:150px;"
                                                     class="form-control" /></td>
                                        <td><form:errors path="zipCode" /></td>
                                 </tr>
 
 
                           </table>
 
                           <div class="row">
                                 <div class="col-md-2">
                                        <input class="btn btn-info" name="_eventId_edit" type="submit"
                                               value="Prev" />
                                 </div>
                                 <div class="col-md-8"></div>
                                 <div class="col-md-2">
                                        <input class="btn btn-info" name="_eventId_submit" type="submit"
                                               value="Next" />
                                 </div>
                           </div>
                    </sf:form>
 
 
 
             </div>
 
       </div>
 
</div>
 
 
 
 
 
 
 
 
 
 
 
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
 
 
 
 
 
 
 
