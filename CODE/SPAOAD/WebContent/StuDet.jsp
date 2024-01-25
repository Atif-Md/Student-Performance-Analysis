<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet" import="java.sql.ResultSetMetaData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.mvdao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>Students’ performance analysis On Academic Datasets</title>
<style type="text/css">
</style>
</head>
<div class="w3-container w3-teal w3-center" style="width: 100%; height: 150px;" >
<h1 style="font-size: 45px; font-style: italic;"><b>
Students’ performance analysis On Academic Datasets
</b>
</h1>
</div>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">

<%
String rlno = request.getParameter("rlno");
String brn = request.getParameter("brn");
String sql = "select * from studentreg where RollNo='"+rlno+"';";
ResultSet rs = Mvdao.stuDet(sql);
String sql1 = "select * from education where RollNo='"+rlno+"';";
ResultSet rs1 = Mvdao.stuDet(sql1);
String sql2 = "select * from attendance where RollNo='"+rlno+"';";
ResultSet rs2 = Mvdao.stuDet(sql2);
String s=" ",s1 =" ";
%>
<center> 
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentEnrollment.jsp" style="text-decoration: none;">Enrollment </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentDetails.jsp" style="text-decoration: none;">Student Details </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white">
<a href="Attendance.jsp" style="text-decoration: none;">Attendance </a> </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="Papers.jsp" style="text-decoration: none;">Publishing</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</center>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 30px;"><b> Student Details</b></h2>
</div></div>	
<br>
<center>
<div class="w3-container w3-yellow w3-center" style="width: 900px; height:2600px;">
<br>
<% while(rs.next() && rs1.next() && rs2.next()){%>
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
<br>
<div > <b style="font-size: 25px; ">Attendance Details</b> </div>
<br>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance</th></tr>
<tr><td>1</td><td>-</td><td><%=rs2.getDouble(2) %></td></tr>
<tr><td>2</td><td>1</td><td><%=rs2.getDouble(3) %></td></tr>
<tr><td>2</td><td>2</td><td><%=rs2.getDouble(4) %></td></tr>
<tr><td>3</td><td>1</td><td><%=rs2.getDouble(5) %></td></tr>
<tr><td>3</td><td>2</td><td><%=rs2.getDouble(6) %></td></tr>
<tr><td>4</td><td>1</td><td><%=rs2.getDouble(7) %></td></tr>
<tr><td>4</td><td>2</td><td><%=rs2.getDouble(8) %></td></tr>
</table>
<%} %>

<br>
<div> <b style="font-size: 25px; ">Exam Details</b> </div>
<br>
<table class="w3-table">

<% 
int tot = 0;
	s = "select * from firstin where RollNo='"+rlno+"' and year=1 and sem=0;";
	s1 = "select * from firstex where RollNo='"+rlno+"' and year=1 and sem=0";
	ResultSet rs3 = Mvdao.stuDet(s);
	ResultSet rs4 = Mvdao.stuDet(s1);
    ResultSetMetaData dm = rs3.getMetaData();
while(rs3.next() && rs4.next()) {%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>
<tr><td><%=dm.getColumnName(13) %></td><td><%=rs3.getInt(13) %></td><td><%=rs4.getInt(13) %></td><td><%=dm.getColumnName(14) %></td><td><%=rs3.getInt(14) %></td><td><%=rs4.getInt(14) %></td></tr>
<tr><td><%=dm.getColumnName(15) %></td><td><%=rs3.getInt(15) %></td><td><%=rs4.getInt(15) %></td></tr>
<%
tot += MarksCal.getTotal(rlno, brn, 1);
} 
	
	s = "select * from secondin where RollNo='"+rlno+"' and year=2 and sem=1;";
	s1 = "select * from secondex where RollNo='"+rlno+"' and year=2 and sem=1;";
	rs3 = Mvdao.stuDet(s);
	rs4 = Mvdao.stuDet(s1);
	dm = rs3.getMetaData();
	while(rs3.next() && rs4.next()) {
		
%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>

<%

	} 
s = "select * from secondin where RollNo='"+rlno+"' and year=2 and sem=2;";
	s1 = "select * from secondex where RollNo='"+rlno+"' and year=2 and sem=2;";
	rs3 = Mvdao.stuDet(s);
	rs4 = Mvdao.stuDet(s1);
	dm = rs3.getMetaData();
	while(rs3.next() && rs4.next()) {
		
%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>

<%
	tot += MarksCal.getTotal2(rlno, brn, 2);
	} s = "select * from secondin where RollNo='"+rlno+"' and year=3 and sem=1;";
	s1 = "select * from secondex where RollNo='"+rlno+"' and year=3 and sem=1;";
	rs3 = Mvdao.stuDet(s);
	rs4 = Mvdao.stuDet(s1);
	dm = rs3.getMetaData();
	while(rs3.next() && rs4.next()) {
		
%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>

<%} s = "select * from secondin where RollNo='"+rlno+"' and year=3 and sem=2;";
	s1 = "select * from secondex where RollNo='"+rlno+"' and year=3 and sem=2;";
	rs3 = Mvdao.stuDet(s);
	rs4 = Mvdao.stuDet(s1);
	dm = rs3.getMetaData();
	while(rs3.next() && rs4.next()) {
		
%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>

<%
tot += MarksCal.getTotal2(rlno, brn, 3);
	} s = "select * from secondin where RollNo='"+rlno+"' and year=4 and sem=1;";
	s1 = "select * from secondex where RollNo='"+rlno+"' and year=4 and sem=1;";
	rs3 = Mvdao.stuDet(s);
	rs4 = Mvdao.stuDet(s1);
	dm = rs3.getMetaData();
	while(rs3.next() && rs4.next()) {
		
%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>

<%
tot += MarksCal.getTotal2(rlno, brn, 4);
	} s = "select * from thirdin where RollNo='"+rlno+"' and year=4 and sem=2;";
	s1 = "select * from thirdex where RollNo='"+rlno+"' and year=4 and sem=2;";
	rs3 = Mvdao.stuDet(s);
	rs4 = Mvdao.stuDet(s1);
	dm = rs3.getMetaData();
	while(rs3.next() && rs4.next()) {
%>
<tr><th>Subject</th><th>Internal</th><th>External</th><th>Subject</th><th>Internal</th><th>External</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<%} 
tot  += MarksCal.getFTotal(rlno, brn);
%>
<tr><td>Grand Total</td><td><%=tot %></td><td>Percentage</td><td><%=new DecimalFormat("##.#").format(((float)tot / 5250) * 100) %>%</td></tr>
</table>
</div>
</center>
</body>
</html>