<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.mvdao.Mvdao"%>
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
		<form action="Compose" method="post">
	<%-- 	<%
String uid=(String)session.getAttribute("cemailid");
System.out.println("hello username=  "+uid);
%> --%>
<center>

				 <a href="Student1.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Student Details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ReqCList.jsp"  style="color: white;font-size: 20px;font-style:italic;"  ><b>Req Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Compose.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Notify.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;" ><b>Logout</b></a>
</center>
<center>
<table class="w3-table" style="width: 500px;border: 1px solid black; margin-top: 30px;">
<tr><td>From</td><td><input type="text" name="from" class="w3-input" style="width: 370px;"></td></tr>
<tr><td>To</td>
<%-- <td><select name="rcp">
						<option>----Select----</option>
						<%
					String	sql = "select companyname from company where mailid='"+session.getAttribute("cemailid")+"'";
						List<String> lt = Mvdao.getCId(sql);
						Iterator<String> itr = lt.iterator();
						while(itr.hasNext()){
							String n = itr.next();
						%>
						<option value="<%=n%>"><%=n %></option>
						<%} %>
						</select>
						</td> --%>
					<td>	<input type="text" name="to" class="w3-input" style="width: 370px;"></td></tr>
<tr><td>Body</td><td><textarea rows="10" cols="40" name="body"></textarea> </td></tr>
</table>
<input type="submit" value="Send" class="w3-button w3-blue-gray">
</center>
</form>
</body>
</html>