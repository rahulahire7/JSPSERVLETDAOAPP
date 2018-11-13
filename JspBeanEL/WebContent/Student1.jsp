<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.training.StudentClass"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	int id=Integer.parseInt(request.getParameter("SId"));
	String name=request.getParameter("name");

	StudentClass s=new StudentClass();
	s.setsId(100);
	s.setsName("Rahul");
%>
<h2>Student Is<%=s.getsId() %></h2>
<h2>Student Name<%=s.getsName()%></h2>



</body>
</html>