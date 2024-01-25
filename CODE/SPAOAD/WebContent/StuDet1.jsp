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
String brn = request.getParameter("brn");
int year = Integer.parseInt(request.getParameter("year"));
int sem = Integer.parseInt(request.getParameter("sem"));
String sql = "select * from studentreg where RollNo='"+rlno+"' and branch='"+brn+"'";
System.out.println(sql);
ResultSet rs = Mvdao.stuDet(sql);
String s=" ",s1 =" ";
if( year == 1 && sem == 0)
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
ResultSet rs3 = Mvdao.stuDet(s);
ResultSet rs4 = Mvdao.stuDet(s1);
ResultSetMetaData dm = rs3.getMetaData();
%>
<center> 
<div class="w3-bar w3-black ">
<div class="w3-tale w3-button w3-text-white" >
<a href="ExamResult.jsp" style="text-decoration: none;">Exam Result </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout </a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
<br>
<%if( year == 1 && sem ==0){
while(rs3.next() && rs4.next()) {%>
<table class="w3-table">
<tr><td><%=year %> Year</td><td><%=sem %> Sem</td></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>
<tr><td><%=dm.getColumnName(13) %></td><td><%=rs3.getInt(13) %></td><td><%=rs4.getInt(13) %></td><td><%=dm.getColumnName(14) %></td><td><%=rs3.getInt(14) %></td><td><%=rs4.getInt(14) %></td></tr>
<tr><td><%=dm.getColumnName(15) %></td><td><%=rs3.getInt(15) %></td><td><%=rs4.getInt(15) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(13)+rs4.getInt(13)+rs3.getInt(15)+rs4.getInt(15)+rs3.getInt(14)+rs4.getInt(14)+rs3.getInt(5)+rs4.getInt(5)+rs3.getInt(6)+rs4.getInt(6)+rs3.getInt(7)+rs4.getInt(7)+rs3.getInt(8)+rs4.getInt(8)+rs3.getInt(9)+rs4.getInt(9)+rs3.getInt(10)+rs4.getInt(10)+rs3.getInt(11)+rs4.getInt(11)+rs3.getInt(12)+rs4.getInt(12))%></td></tr>
</table>
<%}} 
else if( year == 4 && sem == 2){
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
<tr><td><%=year %> Year</td><td><%=sem %> Sem</td></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><%=rs3.getInt(5) %></td><td><%=rs4.getInt(5) %></td><td><%=dm.getColumnName(6) %></td><td><%=rs3.getInt(6) %></td><td><%=rs4.getInt(6) %></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><%=rs3.getInt(7) %></td><td><%=rs4.getInt(7) %></td><td><%=dm.getColumnName(8) %></td><td><%=rs3.getInt(8) %></td><td><%=rs4.getInt(8) %></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><%=rs3.getInt(9) %></td><td><%=rs4.getInt(9) %></td><td><%=dm.getColumnName(10) %></td><td><%=rs3.getInt(10) %></td><td><%=rs4.getInt(10) %></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><%=rs3.getInt(11) %></td><td><%=rs4.getInt(11) %></td><td><%=dm.getColumnName(12) %></td><td><%=rs3.getInt(12) %></td><td><%=rs4.getInt(12) %></td></tr>
<tr><td>Total</td><td><%=(rs3.getInt(5)+rs3.getInt(6)+rs3.getInt(7)+rs3.getInt(8)+rs3.getInt(10)+rs3.getInt(9)+rs4.getInt(5)+rs4.getInt(6)+rs4.getInt(7)+rs4.getInt(8)+rs4.getInt(9)+rs4.getInt(10)+rs3.getInt(11)+rs4.getInt(11)+rs3.getInt(12)+rs4.getInt(12)) %>
</table>
<%}} %>
</div>
</center>
</body>
</html>