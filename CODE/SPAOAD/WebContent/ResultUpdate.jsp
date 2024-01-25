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

<form action="StuResult" method="get">
<%
String rlno = request.getParameter("rlno");
String brn = request.getParameter("brn");
String year = request.getParameter("year");
int sem = Integer.parseInt(request.getParameter("sem"));
String sql = "select * from studentreg where RollNo='"+rlno+"';";
ResultSet rs = Mvdao.stuDet(sql);
String s=" ",s1 =" ";
if(Integer.parseInt(year)  == 1 && sem == 0 )
{
	/* s = "select * from firstin where RollNo='"+rlno+"';"; */
	s = "select * from firstin;";
	s1 = "select * from firstex;";
	
}else if( Integer.parseInt(year) == 4 && sem == 2){
	/* s = "select * from secondin where RollNo='"+rlno+"';"; */
	s = "select * from thirdin ;";
	s1 = "select * from thirdex ;";
	
}else{
	/* s = "select * from thirdin where RollNo='"+rlno+"';"; */
	s = "select * from secondin ;";
	s1 = "select * from secondex;";
}
System.out.println(s);
ResultSet rs3 = Mvdao.stuDet(s);
System.out.print(rs3);
ResultSetMetaData dm = rs3.getMetaData();
%>
<center> 
<div class="w3-bar w3-black ">
<div class="w3-tale w3-button w3-text-white" >
<a href="ExamResult.jsp" style="text-decoration: none;">Exam Result </a></div>
<div class="w3-tale w3-button w3-text-white" ><a href="index.html" style="text-decoration: none;">Logout </a></div>
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
<input type="radio" name="ex" value="inter" class="w3-radio">Internal
<input type="radio" name="ex" value="exter" class="w3-radio">External
<% 
while(rs.next() ){%>
<table class=w3-table>
<tr>
<td><b>Roll Number:</b></td><td><%=rs.getString(1) %></td></tr>
<tr><td><b>Name:</b></td><td><%=rs.getString(2) %>&nbsp;<%= rs.getString(3) %></td></tr>
<tr><td><b>Branch:</b></td><td><%=rs.getString(13) %> </td></tr>
<tr><td><input type="hidden" name="rlno" value="<%= rs.getString(1)%>"></td><td><input type="hidden" name="brn" value="<%= rs.getString(13)%>"></td><td><input type="hidden" name="year" value="<%=year%>"></td><td><input type="hidden" name="sem" value="<%= sem%>"></td></tr>
</table>
<%} %>
<br>
<div class="w3-bar w3-teal" style="width: 500px;height: 40px;"> <b style="font-size: 25px; ">Exam Details</b> </div>
<br>
<%if( Integer.parseInt(year) == 1 && sem ==0){

System.out.println("Hello");
%>
<table class="w3-table">
<tr><th>Subject</th><th>Marks</th><th>Subject</th><th>Marks</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><input type="text" name="s1" class="w3-text"></td><td><%=dm.getColumnName(6) %></td><td><input type="text" name="s2" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><input type="text" name="s3" class="w3-text"></td><td><%=dm.getColumnName(8) %></td><td><input type="text" name="s4" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><input type="text" name="s5" class="w3-text"></td><td><%=dm.getColumnName(10) %></td><td><input type="text" name="s6" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><input type="text" name="s7" class="w3-text"></td><td><%=dm.getColumnName(12) %></td><td><input type="text" name="s8" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(13) %></td><td><input type="text" name="s9" class="w3-text"></td><td><%=dm.getColumnName(14) %></td><td><input type="text" name="s10" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(15) %></td><td><input type="text" name="s11" class="w3-text"></td></tr>
</table>
<%} 
else if( Integer.parseInt(year) == 4 && sem ==2){
%>
<table class="w3-table">
<tr><th>Subject</th><th>Marks</th><th>Subject</th><th>Marks</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><input type="text" name="s1" class="w3-text"></td><td><%=dm.getColumnName(6) %></td><td><input type="text" name="s2" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><input type="text" name="s3" class="w3-text"></td><td><%=dm.getColumnName(8) %></td><td><input type="text" name="s4" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><input type="text" name="s5" class="w3-text"></td><td><%=dm.getColumnName(10) %></td><td><input type="text" name="s6" class="w3-text"></td></tr>

<%}
else{
%>
<table class="w3-table">
<tr><th>Subject</th><th>Marks</th><th>Subject</th><th>Marks</th></tr>
<tr><td><%=dm.getColumnName(5) %></td><td><input type="text" name="s1" class="w3-text"></td><td><%=dm.getColumnName(6) %></td><td><input type="text" name="s2" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(7) %></td><td><input type="text" name="s3" class="w3-text"></td><td><%=dm.getColumnName(8) %></td><td><input type="text" name="s4" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(9) %></td><td><input type="text" name="s5" class="w3-text"></td><td><%=dm.getColumnName(10) %></td><td><input type="text" name="s6" class="w3-text"></td></tr>
<tr><td><%=dm.getColumnName(11) %></td><td><input type="text" name="s7" class="w3-text"></td><td><%=dm.getColumnName(12) %></td><td><input type="text" name="s8" class="w3-text"></td></tr>
</table>
<%} %>
<input type="submit" class="w3-button w3-teal w3-hover-white" value="Submit">
<input type="reset" class="w3-button w3-teal w3-hover-white" value="Reset">
</div>
</center>
</form>
</body>
</html>