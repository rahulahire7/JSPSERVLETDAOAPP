<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<jsp:useBean id="s1" class="com.example.model.Student" />
<jsp:setProperty name="s1" property="id" />
<jsp:setProperty name="s1" property="name" />
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
%>

<b>Value From request.getParameter()</b>
<c:out value="<%=id%>"></c:out>
<br />
<b>Value From param tag</b>
<c:out value="${param.id}"></c:out>
<br />
<b>Value From object.methodname()</b>
<c:out value="<%=s1.getId() %>"></c:out>
<br />
<b>Value From object.id </b>
<c:out value="${s1.id}"></c:out>
<br />
<hr />
<br />
<b>Value From request.getParameter()</b>
<c:out value="<%=name %>"></c:out>
<br />
<b>Value From param tag</b>
<c:out value="${param.name}"></c:out>
<br />
<b>Value From object.methodname()</b>
<c:out value="<%=s1.getName() %>"></c:out>
<br />
<b>Value From object.id </b>
<c:out value="${s1.name}"></c:out>
<br />
<hr />

</body>
</html>

