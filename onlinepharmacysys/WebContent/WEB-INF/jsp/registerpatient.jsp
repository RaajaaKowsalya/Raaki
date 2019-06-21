<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
h1
{
color:pink;

}
h2
{
color:green;
}
</style>
</head>

<body bgcolor="blue">
<h1>Register Patient details</h1>
<br>
<h2>
<form action="insertsave" method="post">
Patient Id:<input type="text" name="patientid"><br><br>
Patient Name:<input type="text" name="patientname"><br><br>
UserName:<input type="text" name="username"><br><br>
Password:<input type="text" name="password"><br><br>
<input type="submit" value="submit">
</h2>

</body>
</html>