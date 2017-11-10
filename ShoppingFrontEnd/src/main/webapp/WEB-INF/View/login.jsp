<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
</head>
<body>
<body style="background-color:pink">
<jsp:include page="header.jsp" />
<div class="container">
 <h2>Vertical (basic) form</h2>
 <form action="login" method="post">
  <div class="form-group">
   <label for="Username">Username:</label>
   <input type="Username" class="form_control" placeholder="Username" name="username">
  </div>
  <div class="form-group">
   <label for="pwd">Password:</label>
   <input type="password" class="form_control" id="pwd" placeholder="Enter password" name="password">
  </div>
  <div class="checkbox">
   <label><input type="checkbox" name="remember">Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
  
 </form>
  
</div>
<jsp:include page="footer.jsp" />
</body>
</html>