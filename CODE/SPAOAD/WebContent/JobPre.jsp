<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mvdao.Mvdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>Students’ performance analysis On Academic Datasets</title>
<style type="text/css">
a{
color: blue;
font-size: 20px;
font-style: italic;
}
</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>

				<a href="Student1.jsp" style="color: white;" ><b>Student Details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ReqCList.jsp"  style="color: white;" ><b>Req Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="CList.jsp" style="color: white;" ><b>Company List</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Compose.jsp" style="color: white;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;"><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="JobPre.jsp" style="color: white;"><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;"><b>Logout</b></a>
</center>
<br><br>
<form action="StuPreDet.jsp">
<center>
<div class="w3-container w3-yellow w3-center" style="width: 600px; height:400px;">
<br><br>
<table><tr><td>
<%
String error=request.getParameter("error");
System.out.println(error);
if(error!=null){%>
	<p>roll not found to update</p>
<% }
%>
<h2><b>Roll Number</b></h2></td><td>
<input type="text" class="w3-text w3-hover-green" name="rlno"></td></tr>
<tr><td>
<h2><b>Branch</b></h2></td><td>
<input type="text" class="w3-text w3-hover-green" name="brn"></td></tr>
<tr><td>
<tr><td>
<h3><b>CGPA</b></h3></td>
<td><input type="text" class="w3-text w3-hover-green" name="cgpa"></td></tr>
</table>
<input type="submit" class="w3-button w3-blue w3-hover-white" value="Submit">
<input type="reset" class="w3-button w3-blue w3-hover-white" value="Reset">
</div>
</center>
</form>
</body>
</html>