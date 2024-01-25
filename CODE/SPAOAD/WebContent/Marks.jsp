<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
<link rel="stylesheet" href="w3.css">
<style type="text/css">
</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 30px;"><b> Student Marks</b></h2>
</div>
</div>
<br>
<form action="Marks" method="post">
<center>
<div class="w3-container w3-yellow w3-center" style="width: 400px; height:450px;">
<br><br>
<table>
<tr><td><h3><b>Roll Number</b></h3></td><td>
<input type="text" class="w3-text w3-hover-green" name="rlno"></td></tr>
<tr><td><h3><b>Branch</b></h3></td><td>
<input type="text" class="w3-text w3-hover-green" name="brn"></td></tr>
</table>
<input type="submit" class="w3-button w3-blue w3-hover-white" value="Submit">
<input type="reset" class="w3-button w3-blue w3-hover-white" value="Reset">
</div>
</center>
</form>
</body>
</html>