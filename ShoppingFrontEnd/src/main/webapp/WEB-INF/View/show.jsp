<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
<div>
<center>
<img src="<c:url value='/resources/images/${prd.imagePath}'/>" width="400" height="300" />
</center>

</br></br>
</div>
<table class="table">

      <tr>
        <th>Name</th>
        <td>${prd.proName}</td>
        </tr>
        <tr>
        <th>Price</th>
        <td>${prd.price}</td>
        </tr>
        <tr>
        <th>Description</th>
        <td>${prd.description}</td>
        </tr>
        <tr>
        <th>Quantity</th>
        <td>${prd.qty}</td>
        </tr>
  </table>



<security:authorize access="hasRole('ROLE_USER')"> 
      <a href="<c:url value='/user/addToCart/${prd.proId}'/>" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> ADD TO CART
        </a>
        </security:authorize>
     <security:authorize access="isAnonymous()">
    
        <a class="btn btn-info btn-sm" href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login To Add to Cart</a>
        </security:authorize>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>