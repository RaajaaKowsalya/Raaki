<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Patient List</title>
</head>
<center>
	<h1>View Patient List</h1>
</center>
<style>
#students {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 70%;
	margin-left: 210px;
}

#students td, #students th {
	border: 1px solid #ddd;
	padding: 8px;
}

#students tr:nth-child(even) {
	background-color: #f2f2f2;
}

#students tr:hover {
	background-color: #ddd;
}

#students th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
<style>
h1 {
	background-color: red;
	font-style: oblique;
}
</style>
<body>
<table border="2" width="50%" cellpadding="2" id="students">
	<tr>
		<th> Id</th>
		<th>Name</th>
		<th>Phone</th>
		<th>Address</th>
		<th>Doctor</th>
		<th>symp</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<j:forEach var="kk" items="${patient}">
		<tr>
			<td>${kk.id}</td>
			<td>${kk.name}</td>
			<td>${kk.phone}</td>
			<td>${kk.address}</td>
			<td>${kk.doctor}</td>
			<td>${kk.symp}</td>
			<td><form action="update" method="post">
					<button name="id" value="<j:out value="${kk.id}"/>">Edit 
					</button>
				</form></td>
			<td><a href="deletedetails/${kk.id}">Delete</a></td>
		</tr>
	</j:forEach>
</table>
<h1>
	<a href="patientAdminback">Back</a>
</h1>
</body>
</html>