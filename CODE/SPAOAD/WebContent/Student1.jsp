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
				<!-- <a href="CList.jsp" style="color: white;" ><b>Company List</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
	         	<a href="Compose.jsp" style="color: white;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;"><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="sort.jsp" style="color: white;"><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;"><b>Logout</b></a>
</center>
<br><br>
<center>
<h2 style="color: orange ;background-color:rgb(0, 0,0)">Registered Students</h2>
<table width="100%" border="0"><thead style="color:white;">
<tr class="w3-blue">
<th>Roll No</th>
<th>Name</th>
<th>DOB</th>
<th>Email ID</th>
<th>Mobile</th>
<th>Gender</th>
<th>Branch</th>
<th>Address</th>
</tr>
<%
try{
ResultSet r=Mvdao.getStudentInfo();
while(r.next())
{
		%>
		<tr class="w3-card-2 w3-hover-blue-grey w3-text-white">
		<td style="color: white;"><%=r.getString(1) %></td>
		<td><%=r.getString(2) %></td>
		<td><%=r.getString(6) %></td>
		<td><%=r.getString(7) %></td>
		<td><%=r.getString(8) %></td>
		<td><%=r.getString(11) %></td>
		<td><%=r.getString(13) %></td>
		<td><%=r.getString(14) %></td>
		</tr>
		<%
}
}catch(SQLException e)
{
	e.printStackTrace();
}
%></thead>
</table>
</center>
</body>
</html>