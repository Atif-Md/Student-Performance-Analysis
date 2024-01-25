<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.StringTokenizer"%>
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
                <a href="ReqTPI.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>T &amp; P Request</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Compose.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Inbox.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Notify.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;"><b>Logout</b></a>
</center>
<br><br>
<center>
<table width="100%">
<tr >
<th>Roll Number</th>
<th>Branch</th>
<th>Name</th>
<th>Email</th>
<th>Mobile</th>
</tr>
<%
int id = Integer.parseInt(request.getParameter("id"));
String ag = request.getParameter("ag");
String quf = request.getParameter("quf");
StringTokenizer st = new StringTokenizer(ag, "-");
int sp = 0;
int ep = 0;
while(st.hasMoreTokens()){
	sp = Integer.parseInt(st.nextToken());
	ep = Integer.parseInt(st.nextToken());
}
if(quf.equalsIgnoreCase("B.E") || quf.equalsIgnoreCase("B.Tech")){
	String sql = "select * from marks where cgpa between "+sp+" and "+ep;
	List<String> lt = Mvdao.getSortList(sql);
	Iterator<String> itr = lt.iterator();
	while(itr.hasNext()){
		String rlno = itr.next();
		String brn = itr.next();
		sql = "select name, emailid, mobile from studentreg where rollno='"+rlno+"'";
		List<String> lt1 = Mvdao.getSortStu(sql);
		Iterator<String> itr1 = lt1.iterator();
		while(itr1.hasNext()){
%>
<tr><td><%=rlno %></td><td><%=brn %></td>
<td><%=itr1.next() %></td><td><%=itr1.next() %></td>
<td><%=itr1.next() %></td></tr>
<%} }}
else{
	String sql = "select * from marks where cgpa between "+sp+" and "+ep;
	List<String> lt = Mvdao.getSortList(sql);
	Iterator<String> itr = lt.iterator();
	while(itr.hasNext()){
		String rlno = itr.next();
		String brn = itr.next();
		if(brn.equalsIgnoreCase(quf)){
		sql = "select name, emailid, mobile from studentreg where rollno='"+rlno+"'";
		List<String> lt1 = Mvdao.getSortStu(sql);
		Iterator<String> itr1 = lt1.iterator();
		while(itr1.hasNext()){
%>
<tr><td><%=rlno %></td><td><%=brn %></td>
<td><%=itr1.next() %></td><td><%=itr1.next() %></td>
<td><%=itr1.next() %></td></tr>
<%}} }}%>
</table>
</center>
<br><br>
<div class="w3-row wr-black" >
<div class="w3-col w3-container w3-quarter w3-white"></div>
<div class="w3-col w3-black w3-center w3-half ">
<marquee behavior="scroll" dir="ltr" scrollamount="10"><h2 style="font-size: 40px;"><b>Shortlisted Students list...</b></h2></marquee>
</div>
</div>
</div>
</body>
</html>
