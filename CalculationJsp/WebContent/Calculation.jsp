
<%@page import="com.model.Calculation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="CalculationServlet">
		First Number <input type="text" name="no1"><br> Second
		Number <input type="text" name="no2"><br> <input
			type="submit" value="+">
	</form>
	<%!
	int ans;
	Calculation i;%>

	<%
		if (!session.isNew()) {
			Object o = session.getAttribute("ans");
			i = (Calculation) o;
			//out.print("ADDITION IS:"+i);
			//session.invalidate();
	%>

	<h1>
		ADDITION IS<%=i.getSum()%>
	</h1>
	<%
		}session.invalidate();
	%>
</body>
</html>