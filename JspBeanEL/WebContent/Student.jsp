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
int sno=Integer.parseInt(request.getParameter("sId"));
String name=request.getParameter("sName"); 
%>
 <table>
 	<tr>
 		<td>Reg No:</td>
 		<td><%=sno %></td>
 	</tr>
 	<tr>
 		<td>Name:</td>
 		<td><%=name %></td>
 	</tr>
</table>
</body>
</html>