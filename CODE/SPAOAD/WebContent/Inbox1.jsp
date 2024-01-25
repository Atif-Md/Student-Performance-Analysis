<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.mvdao.Mvdao"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>Students’ performance analysis On Academic Datasets</title>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>

				<a href="Student1.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Student Details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ReqCList.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Req Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Compose.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Notify.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;" ><b>Logout</b></a> 
</center>
<center>
<div class="w3-container w3-black w3-center" style="width: 100%; height:100%;">
<br>
<%
session = request.getSession(false);
String from=request.getParameter("from");
 String sql = "select * from message";
ResultSet rs = Mvdao.getData(sql); 
/* String company=(String)session.getAttribute("cemailid");

String sql="select * from message where tos='"+company+"'";
List<String> lt=Mvdao.getAllMessage(sql);
Iterator<String> itr=lt.iterator(); */
%>
<%-- <% 
while(itr.hasNext())
{
//rs = Mvdao.getData1(sql, con);%> --%>
<center>
<table class="w3-table w3-bordered" style="width: 450px; margin-top: 30px;">
<tr><th>From</th><th>To</th><th>Message</th></tr> 
 <%
while (rs.next()){
%>
<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %> </td><td><%=rs.getString(3) %></td></tr>
<%} %> 

<%-- <tr>
 <td><%=itr.next() %></td>
 <td><%=itr.next() %></td>
<td><%=itr.next() %></td> --%>
<%-- <td><%=itr.next() %></td>
<td><%=itr.next() %></td> --%>
<%-- <td><%=itr.next() %></td>
<td><%=itr.next() %></td> --%>
<%-- <%
}
%> --%>
</table>
</center>
</div>
</center>
</body>
</html>