<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
   <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />

<c:url var="formaction"  value="/user/Shipping/save"/>

<center>
<form:form cssClass="form-inline" method = "POST" modelAttribute="shipping" action = "${formaction}">

        
         
      <table class="table table-bordered">
				
           <tr>
               <td><form:label   path = "addressline1">AddressLine1</form:label></td>
               <td><form:input cssClass="form-control" path = "addressline1" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="addressline1" /></td>
            </tr>
           
         <tr>
               <td><form:label   path = "addressline2">AddressLine2</form:label></td>
               <td><form:input cssClass="form-control" path = "addressline2" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="addressline2" /></td>
            </tr>
           
         <tr>
               <td><form:label   path = "landmark">Landmark</form:label></td>
               <td><form:input cssClass="form-control" path = "landmark" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="landmark" /></td>
            </tr>
 
         <tr>
               <td><form:label   path = "pincode">PinCode</form:label></td>
               <td><form:input cssClass="form-control" path = "pincode" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="pincode" /></td>
            </tr>
           
           </table>
           
           <tr>
           <c:if test="${not isEditing}" >
               
                   <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   Submit</button>
              
                  </c:if>
                  
           </tr>
             

</form:form>
</center>
<jsp:include page="footer.jsp"/>
</body>
</html>