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
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentDetails.jsp" style="text-decoration: none;">Student Details </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="Attendance.jsp" style="text-decoration: none;">Attendance </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="Papers.jsp" style="text-decoration: none;">Publishing</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</center>
<form action="StudentReg" method="get">
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 30px;"><b> Student Registration</b></h2>
</div>
</div>
<br>
<center>
<div class="w3-container w3-yellow w3-center" style="width: 700px; height:1070px;">
<br><br>
<div class="w3-bar w3-blue" style="width: 500px;height: 40px;"> <b style="font-size: 25px; ">Student Details</b> </div>
<br>
<table class=w3-table>
<tr><td><b>Name:</b></td><td><input type="text" name="fn" class="w3-input "></td>
<td><b>Surname:</b></td><td><input type="text" name="ln" class="w3-input"></td></tr>
<tr><td><b>DOB:</b></td><td><input type="text" name="dob" class="w3-input"></td>
<td><b>Email:</b></td><td><input type="text" name="email" class="w3-input"></td></tr>
<tr><td><b>Mobile:</b></td><td><input type="text" name="mob" class="w3-input"></td>
<td><b>Nationality:</b></td><td><input type="text" name="na" class="w3-input"></td></tr>
<tr><td><b>Religion:</b></td><td><input type="text" name="rel" class="w3-input"></td>
<td><b>Gender:</b></td><td><input type="radio" name="gen" class="w3-radio" value="Male">Male<input type="radio" name="gen" class="w3-radio" value="Female">Female</td></tr>
<tr><td><b>Blood Group:</b></td><td><input type="text" name="bg" class="w3-input"></td>
<td><b>Branch:</b></td><td><input type="text" name="bnc" class="w3-input"></td></tr></table>
<br>
<div class="w3-bar w3-blue" style="width: 500px;height: 40px;"> <b style="font-size: 25px; ">Parents Details</b> </div>
<br>
<table class="w3-table">
<tr><td><b>Father Name:</b></td><td><input type="text" name="fan" class="w3-input"></td>
<td><b>Mother Name:</b></td><td><input type="text" name="mon" class="w3-input"></td></tr>
<tr><td><b>Address:</b></td><td><input type="text" name="ad" class="w3-input"></td>
<td><b>Phone No:</b></td><td><input type="text" name="phn" class="w3-input"></td></tr>
<tr><td><b>Father Occupation:</b></td><td><input type="text" name="fo" class="w3-input"></td>
<td><b>Father Income:</b></td><td><input type="text" name="fin" class="w3-input"></td></tr>
<tr><td><b>Mother Occupation:</b></td><td><input type="text" name="mo" class="w3-input"></td>
<td><b>Mother Income:</b></td><td><input type="text" name="min" class="w3-input"></td></tr>
</table>
<div class="w3-bar w3-blue" style="width: 500px;height: 40px;"> <b style="font-size: 25px; ">Educational Details</b> </div>
<br>
<table class="w3-table">
<tr><td><b>EAMCET Rank:</b></td><td><input type="text" name="emr" class="w3-input"></td>
<td><b>Roll Number:</b></td><td><input type="text" name="rlno" class="w3-input"></td></tr>
<tr><td><b>Intermediate college:</b></td><td><input type="text" name="inc" class="w3-input"></td>
<td><b>Total Marks:</b></td><td><input type="text" name="itot" class="w3-input"></td></tr>
<tr><td><b>Percentage:</b></td><td><input type="text" name="iper" class="w3-input"></td>
<td><b>Area:</b></td><td><input type="text" name="iarea" class="w3-input"></td></tr>
<tr><td><b>School Name:</b></td><td><input type="text" name="scn" class="w3-input"></td>
<td><b>Total Marks:</b></td><td><input type="text" name="stot" class="w3-input"></td></tr>
<tr><td><b>Percentage:</b></td><td><input type="text" name="sper" class="w3-input"></td>
<td><b>Area:</b></td><td><input type="text" name="sarea" class="w3-input"></td></tr>
</table>
<input type="submit" class="w3-button w3-blue w3-hover-white" value="Register">
<input type="reset" class="w3-button w3-blue w3-hover-white" value="Reset">
</div>

</center>
</form>
</body>
</html>