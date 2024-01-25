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
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<%
String rlno = request.getParameter("rlno");

String sql = "select * from studentreg where RollNo='"+rlno+"';";
ResultSet rs = Mvdao.stuDet(sql);
String sql1 = "select * from education where RollNo='"+rlno+"';";
ResultSet rs1 = Mvdao.stuDet(sql1);
String sql2 = "select * from attendance where RollNo='"+rlno+"';";
%>
<center> 
<div class="w3-bar w3-black ">
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Home </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StuAttendance.jsp" style="text-decoration: none;">Attendance </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StuResult.jsp" style="text-decoration: none;">Results </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="Paper.jsp" style="text-decoration: none;">Published Papers</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</center>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 30px;"><b> Student Details</b></h2>
</div>
</div>
<br>
<center>
<div class="w3-container w3-yellow w3-center" style="width: 700px; height:100%;">
<br>
<% while(rs.next() && rs1.next()){%>
<table class=w3-table>
<tr>
<td><b>Roll Number:</b></td><td><%=rs.getString(1) %></td>
<td>
<b>Branch:</b></td><td><%=rs.getString(13) %></td></tr>
<tr><td><b>Name:</b></td><td><%=rs.getString(2) %></td>
<td><b>Surname:</b></td><td><%= rs.getString(3) %></td></tr>
<tr><td><b>Father Name:</b></td><td><%= rs.getString(4) %></td>
<td><b>Mother Name:</b></td><td><%= rs.getString(5) %></td></tr>
<tr><td><b>Address:</b></td><td><%= rs.getString(14) %></td>
<td><b>Phone No:</b></td><td><%= rs.getString(19)%></td></tr>
<tr><td><b>DOB:</b></td><td><%= rs.getString(6) %></td>
<td><b>Email:</b></td><td><%= rs.getString(7) %></td></tr>
<tr><td><b>Mobile:</b></td><td><%= rs.getString(8) %></td>
<td><b>Nationality:</b></td><td><%= rs.getString(9) %></td></tr>
<tr><td><b>Religion:</b></td><td><%= rs.getString(10) %></td>
<td><b>Gender:</b></td><td><%= rs.getString(11) %></td></tr>
<tr><td><b>Blood Group:</b></td><td><%= rs.getString(12) %></td>
<td><b>EAMCET Rank:</b></td><td> <%= rs1.getInt(2) %> </td></tr>
<tr><td><b>Intermediate college:</b></td><td><%=rs1.getString(3) %></td>
<td><b>Area:</b></td><td><%= rs1.getString(6) %></td></tr>
<tr><td><b>Total Marks:</b></td><td><%= rs1.getInt(4) %></td>
<td><b>Percentage:</b></td><td><%= rs1.getDouble(5) %></td></tr>
<tr><td><b>School Name:</b></td><td><%= rs1.getString(7) %></td>
<td><b>Area:</b></td><td><%= rs1.getString(10) %></td></tr>
<tr><td><b>Total Marks:</b></td><td><%= rs1.getInt(8) %></td>
<td><b>Percentage:</b></td><td><%= rs1.getDouble(9) %></td></tr>
<tr><td><b>Father Occupation:</b></td><td><%= rs.getString(15) %></td>
<td><b>Father Income:</b></td><td><%=rs.getInt(17) %></td></tr>
<tr><td><b>Mother Occupation:</b></td><td><%=rs.getString(16) %></td>
<td><b>Mother Income:</b></td><td><%=rs.getInt(18) %></td></tr>
</table>
<%} %>
</div>
</center>
</body>
</html>