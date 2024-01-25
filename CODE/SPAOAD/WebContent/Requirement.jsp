<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
<link rel="stylesheet" href="w3.css">
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>
                    <a href="ReqTPI.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>T & P Request</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Compose1.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Inbox.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Requirement.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Requirements</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;"><b>Logout</b></a>
</center>
<form action="Requirement" method="post">
<center>
<br><br>
<div class="w3-container w3-yellow w3-center" style="width: 400px; height:400px;">

<table>
<%
		session = request.getSession(false);
		String uid = (String) session.getAttribute("cemailid");
		%>
		<tr><td><h3><b>Company Email</b></h3></td><td><%=uid %></td></tr>
<tr><td><h3><b>Job Type</b></h3></td><td>
<input type="text" class="w3-text w3-hover-green" name="domain"></td></tr>
<tr><td><h3><b>Skills</b></h3></td><td>
<input type="text" class="w3-text w3-hover-green" name="skills"></td></tr>
<tr><td><h3><b>Criteria</b></h3></td><td>
<input type="text" class="w3-text w3-hover-green" name="Criteria"></td></tr>
<tr><td><h3><b>Qualification</b></h3></td><td>
<input type="text" class="w3-text w3-hover-green" name="Qualification"></td></tr>
</table>
<input type="submit" class="w3-button w3-blue w3-hover-white" value="SEND">
<input type="reset" class="w3-button w3-blue w3-hover-white" value="Reset">
</div>
</center>
</form>
</body>
</html>