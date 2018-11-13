<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<body>

<sql:setDataSource 
var="db" 
driver="oracle.jdbc.OracleDriver" 
url="jdbc:oracle:thin:@localhost:1521:orcl" 
user="scott" 
password="tiger"/>

<br>
<sql:query var="query1" dataSource="${db}" >select * from book
</sql:query>
<table border="1">
	<c:forEach var="row" items="${query1.rows}">
		<tr>
			<td><c:out value="${row.bookid}" /></td>
			<td><c:out value="${row.bookname}" /></td>
			<td><c:out value="${row.category}" /></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>

