<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD OPERATIONS</title>
<style type="text/css">
.errmsg{
color:red;
}
</style>
</head>
<body>
<jsp:include page="header.jsp" />
<div>
${msg}
</div>

<c:if test="${isEditing}" >
<c:url var="formaction"  value="/admin/category/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/category/save"/>
</c:if>
<center>
<form:form cssClass="form-inline" method = "POST" modelAttribute="category" action = "${formaction}">
<td><form:hidden path = "catId" /></td>
         <table>
         
<tr>
               <td><form:label path = "catName">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "catName" /> <br/><br/></td>
               <td><form:errors cssClass="errmsg" path="catName" />   </td>
           
            </tr>
<tr>
               <td><form:label path = "description">Description</form:label></td>
                <td><form:input  cssClass="form-control" path ="description" /> </br> </br> </td>
               <td><form:errors cssClass="errmsg" path="description" />   </td>
            </tr>
<tr>
               <td colspan = "2">
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
                      <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   SAVE</button>
                  
                  </c:if>
                 </center>
               </td>
            </tr>
</table>
</form:form>
       
     <table class="table table-bordered">
      <thread>
<tr>
      <th>Name</th>
      <th>Description</th>
      </tr>
<c:forEach var="cat" items="${categorylist}" >
<tr>
     
      <td>${cat.catName}</td>
     
      <td>${cat.description}</td>
      <td><a href="<c:url value = '/admin/category/update/${cat.catId}'/> " class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> Edit</a></td>
      
      
      <td><a href="<c:url value = '/admin/category/delete/${cat.catId}'/> " class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete</a></td>
      </tr>
</c:forEach>
      
      </thread>
      </table>
      <jsp:include page="footer.jsp" />
</body>
</html>
