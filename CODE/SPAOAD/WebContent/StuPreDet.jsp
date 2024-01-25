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
Double cgpa = Double.parseDouble(request.getParameter("cgpa"));
String sql = "select * from studentreg where RollNo='"+rlno+"';";
ResultSet rs = Mvdao.stuDet(sql);
String s="select * from job where RollNo='"+rlno+"';";
ResultSet rs3 = Mvdao.stuDet(s);
%>
<center> 
</center>
<br>
<div class="w3-row " >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-half">
<h2 style="font-size: 30px;"><b> Student Job Details</b></h2>
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
<%-- <tr><td><b>Name:</b></td><td><%=rs.getString(2) %>&nbsp;<%= rs.getString(3) %></td></tr>--%>
<tr><td> 
<b>Branch:</b></td><td><%=rs.getString(13) %></td></tr>
</table>
<%} %>
<br>

<%if( cgpa >=45 && cgpa <=55){
while(rs3.next()) {%>
<table class="w3-table">
<tr><th>Roll No</th><th>CGPA(%)</th></tr>
<tr><td><%=rlno %></td><td><%= rs3.getDouble(2) %></td></tr>
<%}} %>
<% %>
</table>
<%
if(cgpa>=55 && cgpa<=65){%>
<h3>You need to work hard</h3>
<% }else if(cgpa<65){%>
<h3>You are Not Selected</h3>
<% 
}
if(cgpa>=55 && cgpa<=65){%>
<h3>You need to work hard</h3>
<% }else if(cgpa<65){%>
<h3>You are Not Selected</h3>
<% 
}
else if( cgpa<75 && cgpa>65){
while(rs3.next() ) {%>
<table class="w3-table">
<tr><th>Roll No</th><th>CGPA (%)</th></tr>
<tr><td><%=rlno %></td><td><%=rs3.getDouble(2) %></td></tr>
<% }}%>
</table>
</div>
</center>
</body>
</html>