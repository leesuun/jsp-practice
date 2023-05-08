<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
  <div class="fmt_1">
    <h2>Formatting Tags1</h2>
    <fmt:setLocale value="ko_kr" />
    <fmt:requestEncoding value="EUC-KR" />
    name :
    <%=request.getParameter("name")%><br />
    <form method="post">
      name :
      <input name="name">
      <input type="submit">
    </form>
  </div>
  <br />
  <br />
  <br />


  <div class="fmt_2">
    <h2>Formatting Tags2</h2>
    <c:set var="num" value="123456789" />
    숫자 :
    <fmt:formatNumber value="${num}" type="number" />
    <br /> 퍼센트 :
    <fmt:formatNumber value="${num}" type="percent" groupingUsed="true" />
    <br /> 달러 :
    <fmt:formatNumber value="${num}" type="currency" currencySymbol="$" />
    <br /> 패턴 :
    <fmt:formatNumber value="${num}" pattern="0.0000" groupingUsed="false" />
    <p />

    <fmt:parseNumber var="i" integerOnly="true" value="123.456" />
    실수를 제외한 정수 :
    <c:out value="${i}" />
  </div>
  <br />
  <br />
  <br />
  <div class="fmt_3">
    <h2>Formatting Tags3</h2>

    <c:set var="dayTime" value="<%=new Date()%>" />
    <fmt:formatDate value="${dayTime}" type="date" dateStyle="full" />
    <br />
    <fmt:formatDate value="${dayTime}" type="time" />
    <p />

    <fmt:timeZone value="Europe/London">
Europe/London : <fmt:formatDate value="${dayTime}" type="both" dateStyle="full"
        timeStyle="full"
      />
      <br />
    </fmt:timeZone>

    <fmt:setTimeZone value="America/New_York" />
    America/New_York :
    <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full" />
    <br />
  </div>

</body>
</html>