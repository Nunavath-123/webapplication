<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response page</title>
</head>
<body style="text-align:center;">
<h1>It is Success Page</h1>

<c:forEach var ="i" items="${data }">
<br>
  <h4>FirstName:${i.firstname }</h4>
   <h4>LastName:${i.lastname }</h4>
    <h4>Email:${i.email }</h4>
   
   
  </c:forEach>




</body>
</html>