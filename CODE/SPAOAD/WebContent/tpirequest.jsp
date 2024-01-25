<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-green w3-center w3-half ">
<center>
<div style="font-size: 40px;">Here <span>Requesting </span>
</div>
		
		<form action="SendServlet" method="get">
		<div class="login">
				<input type="text" placeholder="school name" name="schoolname"><br>
				<input type="text" placeholder="description" name="desc"><br>
				<%
				String s=(String)session.getAttribute("schoolname"); 
				%>
				<input type="submit" value="SEND REQUEST">
		</div>
		</form>
		</center>
</div>
</div>
</body>
</html>