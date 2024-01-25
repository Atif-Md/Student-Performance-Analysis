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
</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<%
String rlno = request.getParameter("rlno");
String brn = request.getParameter("brn");
int year = Integer.parseInt(request.getParameter("year"));
int sem = Integer.parseInt(request.getParameter("sem"));
String sql = "select * from studentreg where RollNo='"+rlno+"';";
ResultSet rs = Mvdao.stuDet(sql);
String s="select * from attendance where RollNo='"+rlno+"';";
ResultSet rs3 = Mvdao.stuDet(s);

%>
<center> 
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentEnrollment.jsp" style="text-decoration: none;">Enrollment </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StudentDetails.jsp" style="text-decoration: none;">Student Details </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="Papers.jsp" style="text-decoration: none;">Publishing</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</center>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 30px;"><b> Student Attendace Details</b></h2>
</div>
</div>
<br>
<center>
<div class="w3-container w3-yellow w3-center" style="width: 700px; height:100%;">
<br>
<% 
while(rs.next() ){%>
<table class=w3-table>
<tr>
<td><b>Roll Number:</b></td><td><%=rs.getString(1) %></td></tr>
<tr><td><b>Name:</b></td><td><%=rs.getString(2) %>&nbsp;<%= rs.getString(3) %></td></tr>
<tr><td>
<b>Branch:</b></td><td><%=rs.getString(13) %></td></tr>
</table>
<%} %>
<br>

<%if( year == 1 && sem ==0){
while(rs3.next()) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>1</td><td>-</td><td><%= rs3.getDouble(2) %></td></tr>
</table>
<%
if(rs3.getDouble(2)<75 && rs3.getDouble(2)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(2)<65){%>
<h3>You are Detained</h3>
<% 
	
}}} 
else if( year == 2 && sem == 1){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>2</td><td>1</td><td><%= rs3.getDouble(3) %></td></tr>
</table>
<%
if(rs3.getDouble(3)<75 && rs3.getDouble(3)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(3)<65){%>
<h3>You are Detained</h3>
<% 
	
}}} 
else if( year == 2 && sem == 2){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>2</td><td>2</td><td><%= rs3.getDouble(4) %></td></tr>
</table>
<%
if(rs3.getDouble(4)<75 && rs3.getDouble(4)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(4)<65){%>
<h3>You are Detained</h3>
<% 
	
}
}} 
else if( year == 3 && sem == 1){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>3</td><td>1</td><td><%= rs3.getDouble(5) %></td></tr>
</table>
<%
if(rs3.getDouble(5)<75 && rs3.getDouble(5)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(5)<65){%>
<h3>You are Detained</h3>
<%}
}} 
else if( year == 3 && sem == 2){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>3</td><td>2</td><td><%= rs3.getDouble(6) %></td></tr>
</table>
<%
if(rs3.getDouble(6)<75 && rs3.getDouble(6)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(6)<65){%>
<h3>You are Detained</h3>
<%}}} 
else if( year == 4 && sem == 1){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>4</td><td>1</td><td><%= rs3.getDouble(7) %></td></tr>
</table>
<%
if(rs3.getDouble(7)<75 && rs3.getDouble(7)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(7)<65){%>
<h3>You are Detained</h3>
<%}}} 
else if( year == 4 && sem == 2){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Year</th><th>Sem</th><th>Attendance (%)</th></tr>
<tr><td>4</td><td>2</td><td><%= rs3.getDouble(8) %></td></tr>
</table>
<%
if(rs3.getDouble(8)<75 && rs3.getDouble(8)>65){%>
<h3>You are under Condonation</h3>
<% }else if(rs3.getDouble(8)<65){%>
<h3>You are Detained</h3>
<%}}} %>
</div>
</center>
</body>
</html>