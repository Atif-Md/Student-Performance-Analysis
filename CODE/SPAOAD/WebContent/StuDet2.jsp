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
String s=" ",s1 =" ";
if(year == 1 && sem == 0)
{
	s = "select * from firstin where RollNo='"+rlno+"';";
	s1 = "select * from firstex where RollNo='"+rlno+"';";
}else if( year == 4 && sem == 2){
	s = "select * from thirdin where RollNo='"+rlno+"';";
	s1 = "select * from thirdex where RollNo='"+rlno+"';";
}else{
	s = "select * from secondin where RollNo='"+rlno+"' and year="+year+" and sem="+sem+";";
	s1 = "select * from secondex where RollNo='"+rlno+"' and year="+year+" and sem="+sem+";";
}
System.out.println(s);
ResultSet rs3 = Mvdao.stuDet(s);
ResultSet rs4 = Mvdao.stuDet(s1);
ResultSetMetaData dm = rs3.getMetaData();
%>
<center> 
<div class="w3-bar w3-black">
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Home </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StudEnroll.jsp" style="text-decoration: none;">Student Profile </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" >
<a href="StuAttendance.jsp" style="text-decoration: none;">Attendance </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
<% 
while(rs.next() ){%>
<table class=w3-table><tr>
<td><b>Roll Number:</b></td><td><%=rs.getString(1) %></td></tr>
<tr><td><b>Name:</b></td><td><%=rs.getString(2) %>&nbsp;<%= rs.getString(3) %></td></tr>
<tr><td><b>Branch:</b></td><td><%=rs.getString(13) %> </td></tr>
</table>
<%} %>
<br>
<div class="w3-bar w3-teal" style="width: 500px;height: 40px;"> <b style="font-size: 25px; ">Exam Details</b> </div>
<br><br>
<%if( year == 1 && sem ==0){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>
<tr><td><%=dm.getColumnName(13) %></td><td><%=rs3.getInt(13) %></td><td><%=rs4.getInt(13) %></td><td><%=dm.getColumnName(14) %></td><td><%=rs3.getInt(14) %></td><td><%=rs4.getInt(14) %></td></tr>
<tr><td><%=dm.getColumnName(15) %></td><td><%=rs3.getInt(15) %></td><td><%=rs4.getInt(15) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(13)+rs4.getInt(13)+rs3.getInt(14)+rs4.getInt(14)+rs3.getInt(15)+rs4.getInt(15)+rs3.getInt(5)+rs4.getInt(5)+rs3.getInt(6)+rs4.getInt(6)+rs3.getInt(7)+rs4.getInt(7)+rs3.getInt(8)+rs4.getInt(8)+rs3.getInt(9)+rs4.getInt(9)+rs3.getInt(10)+rs4.getInt(10)+rs3.getInt(11)+rs4.getInt(11)+rs3.getInt(12)+rs4.getInt(12))%></td></tr>
</table>
<%}} 
else if(  year == 4 && sem == 2){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td><%=year %> Year</td><td><%=sem %> Sem</td></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(5)+rs3.getInt(6)+rs3.getInt(7)+rs3.getInt(8)+rs3.getInt(10)+rs3.getInt(9)+rs4.getInt(5)+rs4.getInt(6)+rs4.getInt(7)+rs4.getInt(8)+rs4.getInt(9)+rs4.getInt(10)) %>
</table>
<%}} 
else {
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td><%=year %>Year</td><td><%=sem %> Sem</td></tr>
 <tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(5)+rs3.getInt(6)+rs3.getInt(7)+rs3.getInt(8)+rs3.getInt(10)+rs3.getInt(9)+rs4.getInt(5)+rs4.getInt(6)+rs4.getInt(7)+rs4.getInt(8)+rs4.getInt(9)+rs4.getInt(10)+rs3.getInt(11)+rs4.getInt(11)+rs3.getInt(12)+rs4.getInt(12)) %>
</table>
<br><br>
<%}} %>
 <%--   <%}} 
else if( year == 3 && sem == 1){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td>III Year</td><td>I Sem</td></tr>
<tr><td><%=dm.getColumnName(29) %></td><td><%=rs3.getInt(29) %></td><td><%=rs4.getInt(29) %></td><td><%=dm.getColumnName(30) %></td><td><%=rs3.getInt(30) %></td><td><%=rs4.getInt(30) %></td></tr>
<tr><td><%=dm.getColumnName(31) %></td><td><%=rs3.getInt(31) %></td><td><%=rs4.getInt(31) %></td><td><%=dm.getColumnName(32) %></td><td><%=rs3.getInt(32) %></td><td><%=rs4.getInt(32) %></td></tr>
<tr><td><%=dm.getColumnName(33) %></td><td><%=rs3.getInt(33) %></td><td><%=rs4.getInt(33) %></td><td><%=dm.getColumnName(34) %></td><td><%=rs3.getInt(34) %></td><td><%=rs4.getInt(34) %></td></tr>
<tr><td><%=dm.getColumnName(35) %></td><td><%=rs3.getInt(35) %></td><td><%=rs4.getInt(35) %></td><td><%=dm.getColumnName(36) %></td><td><%=rs3.getInt(36) %></td><td><%=rs4.getInt(36) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(30)+rs3.getInt(31)+rs3.getInt(32)+rs3.getInt(33)+rs3.getInt(34)+rs3.getInt(35)+rs3.getInt(36)+rs3.getInt(29)+rs4.getInt(29)+rs4.getInt(30)+rs4.getInt(31)+rs4.getInt(32)+rs4.getInt(33)+rs4.getInt(34)+rs4.getInt(35)+rs4.getInt(36)) %>
</table>
<%}} 
else if( year == 3 && sem == 2){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td>III Year</td><td>II Sem</td></tr>
<tr><td><%=dm.getColumnName(37) %></td><td><%=rs3.getInt(37) %></td><td><%=rs4.getInt(37) %></td><td><%=dm.getColumnName(38) %></td><td><%=rs3.getInt(38) %></td><td><%=rs4.getInt(38) %></td></tr>
<tr><td><%=dm.getColumnName(39) %></td><td><%=rs3.getInt(39) %></td><td><%=rs4.getInt(39) %></td><td><%=dm.getColumnName(40) %></td><td><%=rs3.getInt(40) %></td><td><%=rs4.getInt(40) %></td></tr>
<tr><td><%=dm.getColumnName(41) %></td><td><%=rs3.getInt(41) %></td><td><%=rs4.getInt(41) %></td><td><%=dm.getColumnName(42) %></td><td><%=rs3.getInt(42) %></td><td><%=rs4.getInt(42) %></td></tr>
<tr><td><%=dm.getColumnName(43) %></td><td><%=rs3.getInt(43) %></td><td><%=rs4.getInt(43) %></td><td><%=dm.getColumnName(44) %></td><td><%=rs3.getInt(44) %></td><td><%=rs4.getInt(44) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(37)+rs3.getInt(38)+rs3.getInt(39)+rs3.getInt(40)+rs3.getInt(41)+rs3.getInt(42)+rs3.getInt(43)+rs3.getInt(44)+rs4.getInt(37)+rs4.getInt(38)+rs4.getInt(39)+rs4.getInt(40)+rs4.getInt(41)+rs4.getInt(42)+rs4.getInt(43)+rs4.getInt(44)) %>
</table>
<%}} 
else if( year == 4 && sem == 1){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td>IV Year</td><td>I Sem</td></tr>
<tr><td><%=dm.getColumnName(45) %></td><td><%=rs3.getInt(45) %></td><td><%=rs4.getInt(45) %></td><td><%=dm.getColumnName(46) %></td><td><%=rs3.getInt(46) %></td><td><%=rs4.getInt(46) %></td></tr>
<tr><td><%=dm.getColumnName(47) %></td><td><%=rs3.getInt(47) %></td><td><%=rs4.getInt(47) %></td><td><%=dm.getColumnName(48) %></td><td><%=rs3.getInt(48) %></td><td><%=rs4.getInt(48) %></td></tr>
<tr><td><%=dm.getColumnName(49) %></td><td><%=rs3.getInt(49) %></td><td><%=rs4.getInt(49) %></td><td><%=dm.getColumnName(50) %></td><td><%=rs3.getInt(50) %></td><td><%=rs4.getInt(50) %></td></tr>
<tr><td><%=dm.getColumnName(51) %></td><td><%=rs3.getInt(51) %></td><td><%=rs4.getInt(51) %></td><td><%=dm.getColumnName(52) %></td><td><%=rs3.getInt(52) %></td><td><%=rs4.getInt(52) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(51)+rs3.getInt(50)+rs3.getInt(45)+rs3.getInt(46)+rs3.getInt(47)+rs3.getInt(48)+rs3.getInt(49)+rs3.getInt(52)+rs4.getInt(51)+rs4.getInt(50)+rs4.getInt(45)+rs4.getInt(46)+rs4.getInt(47)+rs4.getInt(48)+rs4.getInt(49)+rs4.getInt(52)) %>
</table>
<%}} 
else if( year == 4 && sem == 2){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td>IV Year</td><td>II Sem</td></tr>
<tr><td><%=dm.getColumnName(53) %></td><td><%=rs3.getInt(53) %></td><td><%=rs4.getInt(53) %></td><td><%=dm.getColumnName(54) %></td><td><%=rs3.getInt(54) %></td><td><%=rs4.getInt(54) %></td></tr>
<tr><td><%=dm.getColumnName(55) %></td><td><%=rs3.getInt(55) %></td><td><%=rs4.getInt(55) %></td><td><%=dm.getColumnName(56) %></td><td><%=rs3.getInt(56) %></td><td><%=rs4.getInt(56) %></td></tr>
<tr><td><%=dm.getColumnName(57) %></td><td><%=rs3.getInt(57) %></td><td><%=rs4.getInt(57) %></td><td><%=dm.getColumnName(58) %></td><td><%=rs3.getInt(58) %></td><td><%=rs4.getInt(58) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(53)+rs3.getInt(54)+rs3.getInt(55)+rs3.getInt(56)+rs3.getInt(57)+rs3.getInt(58)+rs4.getInt(53)+rs4.getInt(54)+rs4.getInt(55)+rs4.getInt(56)+rs4.getInt(57)+rs4.getInt(58)) %>
</table>
<%}} %> --%>
</div>
</center>
</body>
</html>