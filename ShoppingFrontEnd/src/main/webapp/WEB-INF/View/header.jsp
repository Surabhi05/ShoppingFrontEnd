<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      </div>
      
     
 
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value ='/' />">HOME</a></li>
        <li>
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"> CATEGORIES <span class="caret"></span></a>
          <ul class="dropdown-menu">
          
              
           			    <c:forEach items="${categoryList}" var="cat">
           			     <li><a href="<c:url value='/productbycategory/${cat.catId} '/> ">${cat.catName}</a></li>
         		        </c:forEach>
          </ul>
        </li>
        
        <security:authorize access="hasRole('ROLE_ADMIN')">
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">ADMIN<span class="caret"></span></a>
          <ul class="dropdown-menu">
            
            <li><a href="<c:url value ='/admin/category'/>"> Category</a></li>
            <li><a href="<c:url value = '/admin/product'/>"> Product</a></li>
            <li><a href="<c:url value = '/admin/supplier'/>"> Supplier</a></li>
            
          </ul>
        </li>
        
        </security:authorize>
       <li><a href="<c:url value='/product'/>">PRODUCTS</a></li>
        <li><a href="<c:url value='/about'/> ">ABOUT</a></li>
        <li><a href="<c:url value='/contact-us'/> ">CONTACT-US </a></li>
        
      </ul>
      <div class="col-sm-3 col-md-3">
      <c:url var="search" value="search" />
      <form class="navbar-form" action="${search}" method="post" role="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
      </div>
      <ul class="nav navbar-nav navbar-right">
      
      <security:authorize access="isAuthenticated()">
					<li><span class="glyphicon"></span><h4 style="color:White;">
									Welcome <%= request.getUserPrincipal().getName() %></h4>
					</li>
					<security:authorize access="hasRole('ROLE_USER')">
								<li><a style="color: white; font-family: serif; font-size: large; "  href="<c:url value='/user/cart'/>">
                                  
							   <span class="glyphicon glyphicon-shopping-cart"></span>CART</a>
							   
								</li>
								
								
								
					</security:authorize>
					<li><a style="color: white; font-family: serif; font-size: large; "  href="<c:url value='/logout' />" class="btn btn_primary">
     						 <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</security:authorize>
      
      
      <security:authorize access="isAnonymous()">
         <li><a href="<c:url value='/Sign-up' />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
      </security:authorize>  
      </ul>
    </div>
  </div>
</nav>
