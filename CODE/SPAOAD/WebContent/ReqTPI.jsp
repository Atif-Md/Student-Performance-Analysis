<%@page import="java.sql.ResultSet"%>
<%@page import="com.mvdao.Mvdao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
<style type="text/css">
.form{
width:650px;
padding: 50px;
font-size:150%;
margin-bottom: 100px;
}
a{
color: blue;
font-size: 20px;
font-style: italic;
}
thead,td,th{
border: 1.5px solid black;margin-left: 30px;
}
</style>
</head>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>
                    <a href="ReqTPI.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>T & P Request</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Compose1.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Inbox.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Requirement.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Requirements</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;"><b>Logout</b></a>
</center>
<br>
<center>
<div class="w3-row ">
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-yellow w3-center w3-full ">
<h2><b style="font-size: 30px; ">TPI Request</b></h2>
</div>
</div>
</center>
<%-- <table border="1" width="100%"><thead>
<tr>
<th>Name</th>
<th>Accept</th>
<th>Reject</th>
</tr>
</thead>
<%
List al=Mvdao.getAllReq();
		
for(int i=0;i<al.size();i++){
System.out.println(al.get(i)); %>


<tr>
	<td><h1>TPI</h1></td>
	<td><h1><%=al.get(i) %></h1></td>
	<td><h1><a href="approve?name=<%=al.get(i) %>">approve</a></h1></td>
	<td><h1><a href="reject.jsp?name=<%=al.get(i) %>">reject</a></h1></td>
	</tr>
<% }
%>

	</table>
	</form>
	</div> --%>

<!-- <form action="userdetails.jsp" method="post"> -->
<table width="100%" border="0"><thead>
<tr>
<th style="font-size: 22px;color: black;">To</th>
<th style="font-size: 22px;color: black;">Description</th>
<th style="font-size: 22px;color: black;">Accept</th>
<th style="font-size: 22px;color: black;">Reject</th>
</tr>
</thead>
<%
System.out.println("hello............"); 
String company= (String)session.getAttribute("cemailid");
System.out.println("---company name---");
ResultSet al=Mvdao.getTPI(company);%>
<%
while (al.next()) {%>
<tr>
	<td style="font-size: 22px;color: orange;"><%=al.getString(1) %></td>
	<td style="font-size: 22px;color: orange;"><%=al.getString(2) %></td>
	<td style="font-size: 22px;color: orange;"><a href="approve?description=<%=al.getString(2) %>">approve</a></td>
	<td style="font-size: 22px;color: orange;"><a href="reject.jsp?description=<%=al.getString(2) %>">reject</a></td>
		</tr>
<%}
%>
</body>
</html>