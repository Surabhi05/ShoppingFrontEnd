<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
				<title>sign up here</title>

		<style type="text/css">
.errmsg{
color:blue;
}
</style>
		
</head>
<body>
<body style="background-color:pink">
<jsp:include page="header.jsp" />
<div class="container">

<div class="col-md-3"></div>
<div class="col-md-6">
 <div class="row myborder">
<h4 style="color: black; margin: initial; margin-bottom: 10px;">Sign Up Now</h4><hr></br>
<c:url var="formaction"  value="/signup"/>
<div class="input-group margin-bottom-20">
 <center>
 
 <form:form cssClass="form-inline" method = "POST" modelAttribute="customer" action = "${formaction}">
 <form:label   path = "cusName">Name</form:label>
 <form:input cssClass="form-control" path = "cusName" />
  <form:errors cssClass="errmsg" path="cusName" />
 
  </div>
  <br/> <br/>
  
  
   <div class="input-group margin-bottom-20">
    <form:label   path = "address">Address</form:label>
     <form:input cssClass="form-control" path = "address" />
     <form:errors cssClass="errmsg" path="address" />
     
     </div>
     </br></br>
     
     
   <div class="input-group margin-bottom-20">
       <form:label   path = "email">Email Address</form:label>
    <form:input  cssclass="form-control" path="email" />
   <form:errors cssClass="errmsg" path="email" />
    
         </div>
         </br></br> 
         <div class="input-group margin-bottom-20">
       <form:label   path = "password">Password</form:label>
      <form:input  cssclass="form-control" path="password" />
  <form:errors cssClass="errmsg" path="password" />
  </div>
  </br></br>
  
         
   
  <div class="input-group margin-bottom-20">
   <form:label   path = "confirmPassword">Confirm Password</form:label>
  <form:input cssclass="form-control" path="confirmPassword" />
  <form:errors cssClass="errmsg" path="confirmPassword" />
  
  </div>
  </br></br>
  
    
  <div class="input-group margin-bottom-20">
  <form:label   path = "phone">Phone Number</form:label>
  <form:input  cssclass="form-control" path="phone" />
    <form:errors cssClass="errmsg" path="phone" />
   
   
    </center>
     </div>
     
     </br></br>
     
       <div class="row">
         <div class="col-md-12">
         <div class="innter-form">
            <form class="sa-innate-form" method="post">
         <button class="btn-u pull-left" type="submit">Register</button>
         
         <a href="">Forgot Password?</a>
           </form:form>
            </div>
            <div class="social-login">
            </br>
            <p>- - - - - - - - - - - - - Sign In With - - - - - - - - - - - - - </p>
    		<ul>
            <li><a href=""><i class="fa fa-facebook"></i> Facebook</a></li>
            <li><a href=""><i class="fa fa-google-plus"></i> Google+</a></li>
           
            </ul>
            </div>
             </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
      </div>
         

<jsp:include page="footer.jsp"/>

</body>
</html>