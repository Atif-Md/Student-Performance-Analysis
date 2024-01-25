<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mvdao.Mvdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
<link rel="StyleSheet" href="w3.css" >
<style type="text/css">
a{
font-size: 20px;
color: orange;
}
th{
color: white;
}
td{
color: black;
}
td,thead,th{
border: 1.5px solid black;
font-family: verdana;
font-size: 20px;
}
</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>

				<a href="Student1.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Student Details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ReqCList.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Req Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Compose.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="JobPre.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;" ><b>Logout</b></a>
</center>
<br><br>
<center>
<table width="100%"><thead>
<tr >
<th>Company Mail</th>
<th>Domain</th>
<th>Skills</th>
<th>Criteria</th>
<th>Qualification</th>
<th>SortStudents</th>
</tr>
<%
try{
ResultSet r=Mvdao.getUp();
while(r.next())
{

		%>
		<tr >
		<td style="color: black;font-size: 20px;font-style:italic;"><%=r.getString(2) %></td>
		<td style="color: black;font-size: 20px;font-style:italic;"><%=r.getString(3) %></td>
		<td style="color: black;font-size: 20px;font-style:italic;"><%=r.getString(4) %></td>
		<td style="color: black;font-size: 20px;font-style:italic;"><%=r.getString(5) %></td>
		<td style="color: black;font-size: 20px;font-style:italic;"><%=r.getString(6) %></td>
		<td style="color: black;font-size: 20px;font-style:italic;"><a href="sort.jsp?id=<%=r.getInt(1)%>&&ag=<%=r.getString(5)%>&&quf=<%=r.getString(6)%>" class="w3-button w3-orange">Sort</a>
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
