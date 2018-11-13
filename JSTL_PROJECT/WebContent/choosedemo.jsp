<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<c:set var="s" value="${param.day}" />
Today is
<br>

<font size=24 color=red> 

<c:choose>
	<c:when test="${s==1}">Sunday</c:when>
	<c:when test="${s==2}">Monday</c:when>
	<c:when test="${s==3}">Tuesday</c:when>
	<c:when test="${s==4}">Wednesday</c:when>
	<c:when test="${s==5}">Thursday</c:when>

	<c:otherwise> 
    select between 1 & 5     
 </c:otherwise>
</c:choose>
</body>
</html>

