<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body bgcolor=blue>

<c:set var="s" value="${param.colour}" />
<b><font color="white"> <c:out value="${s}" /> </font></b>
<br />
<hr />
<br>

<c:if test="${s    eq     'blue'  }">
	<B> <FONT color="red"> <c:out
		value="THE COLOUR OF SKY . . . . !" /> </FONT></B>

</c:if>

<c:if test="${s=='white'}">
	<B> <FONT color="red"> <c:out
		value="WHITE FOR PEACE  . . . ." /> </FONT></B>
</c:if>
</body>
</html>

