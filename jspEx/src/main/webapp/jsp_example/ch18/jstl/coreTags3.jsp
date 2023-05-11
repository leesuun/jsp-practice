<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
<title>JSTL</title>
</head>
<body>
  <h2>Core Tags3</h2>
  <c:set var="arr" value="${fn:split('simba,rorod,tina,poli',',')}" />
  <c:forEach var="i" items="${arr}" begin="0" step="1" end="4">
	${i}<br />
  </c:forEach>
  <hr align="left" width="220" />
  <c:set var="s" value="JAVA, JSP; Spring, Android" />
  <c:forTokens var="st" items="${s}" delims=", ;">
    <b>${st}&nbsp;</b>
  </c:forTokens>
</body>
</html>