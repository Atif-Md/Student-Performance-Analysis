<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students’ performance analysis On Academic Datasets</title>
<style type="text/css">
</style>
<link rel="stylesheet" href="w3.css">
</head>
<body style="background-image:url('DM02.jfif');background-repeat: no-repeat;background-size:cover;">
<br><br><br><br><br><br><br><br><br>
<br>
<center>
<%
String msg=request.getParameter("msg");
String to=request.getParameter("to");

%>
<br>
  <div class="w3-container w3-card-4 w3-display-middle w3-zoom" style="height:250px;width:600px;">
        
      <div class="w3-contant">
      	<a href="<%-- <%=to %> --%> companyhome.jsp" class="w3-button w3-red w3-display-topright">close</a><br><br>
        <h1 class="w3-text-white w3-center">Rejected</h1>
      </div>
  </div>
  </center>
</body>
</html>