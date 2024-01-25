<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>Students’ performance analysis On Academic Datasets</title>
<style type="text/css">
#b {
background: aqua;
}
a{
color: blue;
font-size: 20px;
font-style: italic;
}
</style>
<!-- <script type="text/javascript">
function fun(val)
{
	if (form.fn.value == "")
	{
		alert('Name is required.');
		form.name.focus();
		return false;
		}
	if (form.email.value == "")
	{
		alert('Email is required.');
		form.email.focus();
		return false;
		}
	if (form.mob.value == "")
	{
		alert('Phone number is required.');
		form.mobile.focus();
		return false;
		}
	if (form.mob.value.length<10 || form.mob.value.length>10)
	{
		alert('Phone number must be 10 digits.');
		return false;
		}
	return true;
	}
</script> -->
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>

				<a href="Home.html" style="color: white;" ><b>Admin</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Exam.html"  style="color: white;" ><b>Examination cell</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Student.jsp" style="color: white;" ><b>Student</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="tpi.jsp" style="color: white;"><b>TPI</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="companyreg.jsp" style="color: white;"><b>Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;"><b>Logout</b></a>
</center>
<br>
<center>
<form action="CompanyReg" method="post">
<h2 class="w3-bar w3-teal" style="width: 500px;height: 40px;"> <b style="font-size: 25px; ">Company Registration</b> </h2>
<table style="margin-top: -80px;">
<tr><td><b>Company Name</b></td><td><input type="text" name="companyname" ></td></tr></br>
<tr><td><b>Mail ID</b></td><td><input type="text" name="cemailid" ></td></tr><br>
<tr><td><b>Password:</b></td><td><input type="password" name="password" ></td></tr><br>
<tr><td><b>Mobile No:</b></td><td><input type="text" name="number" ></td></tr><br>
<tr><td><b>Address:</b></td><td><input type="text" name="address" ></td><br>
</table>
<input type="submit" class="w3-button w3-blue w3-hover-white" value="Register" style="width: 170px">
<input type="reset" class="w3-button w3-blue w3-hover-white" value="Reset" style="width: 170px">
<h4><a href="companylogin.jsp" class="w3-button w3-blue w3-hover-white" style="width: 340px"><b>Company Login</b></a></h4>
</form>
</center>
</body>
</html>