<%@page import="java.sql.ResultSet"%>
<%@page import="com.mvdao.Mvdao"%>
<%@page import="java.sql.SQLException"%>
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
<br><br><br><br><br><br>
<center>

				<a href="Student1.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Student Details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ReqCList.jsp"  style="color: white;font-size: 20px;font-style:italic;"  ><b>Req Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="CList.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Company List</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Compose.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="JobPre.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;" ><b>Logout</b></a>
</center>
<br><br>
<center>
<h2 style="color: orange ;background-color:rgb(0, 0,0)">Registered Companies</h2>
<table width="100%" border="1" style="padding-left: 10px;"><thead style="color:white;">
<tr class="w3-blue">
<th>Company Name</th>
<th>Mail ID</th>
<th>Contact Number</th>
<th>Address</th>
</tr>
<%
try{
ResultSet r=Mvdao.getUserInfo();
while(r.next())
{
		%>
		<tr class="w3-card-2 w3-hover-blue-grey w3-text-white">
		<td><%=r.getString(1) %></td>
		<td><%=r.getString(2) %></td>
		<td><%=r.getString(4) %></td>
		<td><%=r.getString(5) %></td>
		</tr>
		<%
}
}catch(SQLException e)
{
	e.printStackTrace();
}
%>
</thead>
</table>
</center>
</body>
</html>