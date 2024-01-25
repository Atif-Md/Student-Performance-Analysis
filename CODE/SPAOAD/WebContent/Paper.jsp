<%@page import="java.sql.ResultSet" import="java.sql.ResultSetMetaData" import="com.mvdao.*"%>
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
</head>
<body id="b" >
<%

String sql = "select * from paper;";
ResultSet rs = Mvdao.stuDet(sql);

ResultSetMetaData dm = rs.getMetaData();
%>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center> 
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" >
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Home </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StudEnroll.jsp" style="text-decoration: none;">Student Profile </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StuAttendance.jsp" style="text-decoration: none;">Attendance </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StuResult.jsp" style="text-decoration: none;">Results</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</div>
</center>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<center>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 40px;"><b> Papers</b></h2>
</div></div>
</center>
</div>
<br>
<center>
<div class="w3-container w3-black w3-center" style="width: 100%; height:100%;">
<br>
<table class=w3-table>
<tr><th>RollNo</th><th>Branch</th><th>First Name</th><th>Last Name</th><th>Father Name</th><th>Mother Name</th><th>Address</th></tr>
<% 
while(rs.next() ){%>
<tr><td><%= rs.getString(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td></tr>
<% }%>
</table>
</div>
</center>
</body>
</html>