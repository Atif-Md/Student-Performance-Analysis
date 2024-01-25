<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>Students’ performance analysis On Academic Datasets</title>
<style type="text/css">

</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center> 
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" >
<a href="ExamResult.jsp" style="text-decoration: none;">Exam Results</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout</a></div>
</div>
</center>
<br>
<form action="ResultUpdate.jsp">
<center>
<div class="w3-container w3-yellow w3-center" style="width: 450px; height:350px;">
<div style="width: 500px; height:330px;">
<br><br>
<table><tr><td>
<h2><b>Roll Number</b></h2></td><td>
<input type="text" class="w3-text w3-hover-white" name="rlno"></td></tr>
<tr><td>
<h2><b>Branch</b></h2></td><td>
<input type="text" class="w3-text w3-hover-white" name="brn"></td></tr>
<tr><td>
<h5><b>Year</b></h5></td><td>
<select class="w3-select" name="year">
<option value="0">Select Year</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select></td></tr><tr>
<td><h5><b>Sem</b></h5></td><td>
<select class="w3-select" name="sem">
<option value="0">Select Sem</option>
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
</select>
</td></tr>
</table>
<input type="submit" class="w3-button w3-teal w3-hover-white" value="Submit">
<input type="reset" class="w3-button w3-teal w3-hover-white" value="Reset">
</div>
</div>
</center>
</form></body>
</html>