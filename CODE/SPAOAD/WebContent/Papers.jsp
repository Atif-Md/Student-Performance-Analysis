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
background-image: url(col3.jpg);
background-repeat: no-repeat;
background-size: 1200px 700px;
}
</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center> 
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentEnrollment.jsp" style="text-decoration: none;">Enrollment </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentDetails.jsp" style="text-decoration: none;">Student Details</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="Attendance.jsp" style="text-decoration: none;">Attendance </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</center>
<center>
<div class="w3-container w3-yellow w3-center" style="width: 700px; height:1070px;">
<br>
<form action="PaperUpdate" method="get">
<center>
<div  style="width: 400px; height:500px;">
<br><br>
<table><tr><td>
<h5><b>Roll Number</b></h5></td><td>
<input type="text" class="w3-text w3-hover-green" name="rlno"></td></tr>
<tr><td>
<h5><b>Branch</b></h5></td><td>
<input type="text" class="w3-text w3-hover-green" name="brn"></td></tr>
<tr><td>
<h5><b>First Name</b></h5></td><td>
<input type="text" name="title" class="w3-text"> </td></tr><tr>
<td><h5><b>Last Name</b></h5></td><td>
<input type="text" name="obj" class="w3-text">
</td></tr>
<tr><td><h5><b>Father Name</b></h5></td><td><input type="text" name="alg" class="w3-text"></td></tr>
<tr><td><h5><b>Mother Name</b></h5></td><td><input type="text" name="ds" class="w3-text"></td></tr>
<tr><td><h5><b>Address</b></h5></td><td><input type="text" name="gp" class="w3-text">
</table>
<input type="submit" class="w3-button w3-teal w3-hover-white" value="Submit">
<input type="reset" class="w3-button w3-teal w3-hover-white" value="Reset">
</div>
</center>
</form>
</div>
</body>
</html>