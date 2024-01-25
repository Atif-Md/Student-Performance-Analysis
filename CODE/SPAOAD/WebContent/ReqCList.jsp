<%@page import="java.sql.SQLException"%>
<%@page import="com.mvdao.Mvdao"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
<link rel="stylesheet" href="w3.css">
<style type="text/css">

</style>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<center>

				<a href="Student1.jsp" style="color: white;font-size: 20px;font-style:italic;"  ><b>Student Details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ReqCList.jsp"  style="color: white;font-size: 20px;font-style:italic;" ><b>Req Company</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Compose.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Compose</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="Inbox1.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Inbox</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	         	<a href="JobPre.jsp" style="color: white;font-size: 20px;font-style:italic;" ><b>Job Prediction</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="index.html" style="color: white;font-size: 20px;font-style:italic;" ><b>Logout</b></a>
</center>
<br><br>
<center>
<h2 style="color: orange ;background-color:rgb(0, 0,0)">Registered Companies</h2>
</center>
<div class="w3-container w3-black w3-center" style="width: 100%; height:100%;">
<br>
<table class=w3-table>
<tr >
<th><b>Company Name</b></th>
<th><b>Company Mail</b></th>
<th><b>Contact No</b></th>
<th><b>Address</b></th>
<th><b>Send Request</b></th>
</tr>
<%
try{
	session = request.getSession(false) ;
ResultSet
rs=Mvdao.getAss();
while(rs.next())
{
		%>
		<tr >
	<%-- 	<td><% String s1=(String)session.getAttribute("emailid"); %></td> --%>
	<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><form action="SendServlet" method="get">
				<%
				String companyname=rs.getString(1);
					System.out.println(companyname);
					String desc=request.getParameter("description"); 
				
				%>
			
				 <input type="hidden" name="cemailid" value=<%=rs.getString(2)%> > 
				
				 <input type="text"   name="description">
		<%--	<input type="text" name="<%=companyname %>" />   --%>
				<input type="submit" value="SEND REQUEST">
				</form>
		</td></tr>
		<%
}
}catch(SQLException e)
{
	e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>