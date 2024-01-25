<%@page import="com.mvdao.Mvdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"    %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br>
<%

String s=request.getParameter("description");
System.out.println("value from html"+s);
try {
	boolean f=Mvdao.updateUser1(s);
	System.out.println("boolean in sevlet"+f);
	if(!f) {
		System.out.println("deleted");
	//	response.sendRedirect("reject.jsp");
		response.sendRedirect("succ2.jsp");
	}else {
		System.out.println("failed");
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>