<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>For Each Demo</title>
</head>
<body>
<c:forEach var="n" begin="${param.num1}" end="${param.num2}">
	<c:out value="${n}"/>
	<br>
</c:forEach>
</body>
</html>