<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int id=Integer.parseInt(request.getParameter("sId"));
	String name=request.getParameter("sName");	
%>

Student s=new Student();

<jsp:useBean id="s" class="com.training.StudentClass" scope="request"></jsp:useBean>
<jsp:setProperty property="sId" name="s" value="<%=id %>"/>
<jsp:setProperty property="sName" name="s" value="<%=name %>"/>

<h2>Student Id:<jsp:getProperty name="s" property="sId"></jsp:getProperty></h2>
<h2>Student Name:<jsp:getProperty name="s" property="sName"></jsp:getProperty></h2>

</body>
</html>