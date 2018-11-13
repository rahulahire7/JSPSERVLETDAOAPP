<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head><title>Catch an Exception?</title></head>

<body>
<c:catch var="e">
	<c:set var="x" value="10" scope="page" />
	<c:set var="y" value="fives" scope="page" />
    10 divided by 0 is 
    <c:out value="${10/y}" />
	<br />
</c:catch>
<c:if test="${e!=null}">The caught exception is:
    <c:out value="${e}" />
	<br />
</c:if>
<c:if test="${e==null}">No exception was thrown
    <br />
</c:if>
</body>
</html>
