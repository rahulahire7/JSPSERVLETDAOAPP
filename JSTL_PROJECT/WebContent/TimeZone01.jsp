 <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c-rt" %>
 <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt-rt" %>
<html>
  <head>
    <title>Timezones</title>
  </head>

  <body>
    <c-rt:set var="now" value="<%=new java.util.Date()%>" />

    <table border="1" cellpadding="0" cellspacing="0"
    style="border-collapse: collapse" bordercolor="#111111"
    width="63%" id="AutoNumber2">
      <tr>
        <td width="100%" colspan="2" bgcolor="#0000FF">
          <p align="center">
            <b>
              <font color="#FFFFFF" size="4">Formatting: 
              <fmt-rt:formatDate value="${now}" type="both"
              timeStyle="long" dateStyle="long" />
              </font>
            </b>
          </p>
        </td>
      </tr>

      <c-rt:forEach var="zone"
      items="<%=java.util.TimeZone.getAvailableIDs()%>">
        <tr>
          <td width="51%">
            <c-rt:out value="${zone}" />
          </td>

          <td width="49%">
            <fmt-rt:timeZone value="${zone}">
              <fmt-rt:formatDate value="${now}" timeZone="${zn}"
              type="both" />
            </fmt-rt:timeZone>
          </td>
        </tr>
      </c-rt:forEach>
    </table>
  </body>
</html>
