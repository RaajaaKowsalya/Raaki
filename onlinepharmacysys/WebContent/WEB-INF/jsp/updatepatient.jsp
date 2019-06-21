<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
</head>
<body>
<center>
<br><br>
<h1>Update Page</h1>
<br/>
<c:forEach  items="${update}" var="i" > 
<form action="updatecontroller" method="post">
	<table>
	<tr> <input type="hidden" name="id" value="<c:out value="${i.id}"/>"><td></tr>
	
	<tr><th>Name</th><td><input type ="text" value="<c:out value="${i.name}"/>" name="name"><td></tr>
	<tr><th>Phone no</th><td><input type ="text" value="<c:out value="${i.phone}"/>" name="phone"><td></tr>
	<tr><th>Address</th><td><input type ="text" value="<c:out value="${i.address}"/>" name="address"><td></tr>
	<tr><th>Doctor</th><td><input type ="text" value="<c:out value="${i.doctor}"/>" name="doctor"><td></tr>
	<tr><th>Sympotms</th><td><input type ="text" value="<c:out value="${i.symp}"/>" name="symp"><td></tr>
	<br>
	<tr><th><input type ="submit" value="Update"></th><td></td></tr>
	</table>
</form>
</c:forEach>
</center>
</body>
</html>