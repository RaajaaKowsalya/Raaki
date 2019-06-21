<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
 
    
</head>
<body>
<form action="submit" id="EmploymentApplication100" method="post" onsubmit="return ValidateForm(this);">
<script type="text/javascript">
function ValidateForm(frm) {
if (frm.Name.value == "") { alert('First name is required.'); frm.First_Name.focus(); return false; }
if (frm.Phone.value == "") { alert('Phone is required.'); frm.Phone.focus(); return false; }
return true; }
</script>
<table border="0" cellpadding="5" cellspacing="0">
<tr> <td style="width: 50%">
<label for="name"><b>First name *</b></label><br>
<input name="name" type="text" maxlength="50" style="width: 260px" /><br><br>
<!-- <label for="id"><b>id *</b></label><br><br> -->
<!-- <input name="id" type="text" maxlength="50" style="width: 260px" /> -->
<!-- </td> <td style="width: 50%"> -->

<label for="phone"><b>Phone *</b></label><br><br>
<input name="phone" type="number" maxlength="10" style="width: 260px" /><br><br>

<label for="address"><b>Address *</b></label><br><br>
<input name="address" type="text" maxlength="50" style="width: 260px" /><br><br>
</td> </tr> <tr> <td colspan="2">

<label for="doctor"><b>The available doctors are?</b></label><br><br>
<input name="doctor" type="radio" value="Dr.prasath" checked="checked" /> Dr.prasath      
<input name="doctor" type="radio" value="dr.ravikumar" /> dr.ravikumar     
<input name="doctor" type="radio" value="Dr.subbulakshmi" /> Dr.subbulakshmi
</td> </tr> <tr> <td colspan="2">
Sympotms:<select name="symp">
  <option value="eyepain">EYEPAIN</option>
  <option value="heartattack">HEARTATTACK</option>
  <option value="lungs">LUNGS</option>
  <option value="leg pain">LEG PAIN</option>
  <option value="Hand pain">HAND PAIN</option>
</select><br><br><br>

</script>
<input name="skip_submit" type="submit" value="Send Application" />
</td> </tr>
</table>
</form>
</body>
</html>