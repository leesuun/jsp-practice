<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>JSTL</title>
<style>
body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	background-color: black;
	color: white;
	font-size: 1.5rem;
	justify-content: center;
}
</style>
</head>
<body>
  <div class="fmt_1">
    <h2>Formatting Tags1</h2>
    <fmt:setLocale value="ko_kr" />
    <fmt:requestEncoding value="UTF-8" />
    name :
    <%=request.getParameter("name")%><br />
    <form method="post">
      name :
      <input name="name">
      <input type="submit">
    </form>
  </div>
  <br />




  <div class="fmt_2">
    <h2>Formatting Tags2</h2>
    <fmt:setLocale value="ko_kr" />
    <c:set var="num" value="123456789" />
    숫자 :
    <fmt:formatNumber value="${num}" type="number" />
    <br /> 퍼센트 :
    <fmt:formatNumber value="${num}" type="percent" groupingUsed="true" />
    <br /> 달러 :
    <fmt:formatNumber value="${num}" type="currency" currencySymbol="$" />
    <br /> 원화 :
    <fmt:formatNumber value="${num}" type="currency" />
    <br /> 패턴 :
    <fmt:formatNumber value="${num}" pattern="0.0000" groupingUsed="false" />
    <p />

    <fmt:parseNumber var="i" integerOnly="true" value="123.456" />

    파싱 후 jstl로 출력 :
    <c:out value="${i}" />
    <br /> 파싱 후 el로 출력 : ${i} <br /> <br />


    <c:set var="num2" value="940101-123457" />
    파싱 전 데이터: ${num2} <br /> 파싱 처리 중 ...

  </div>
  <br />


  <div class="fmt_3">
    <h2>Formatting Tags3</h2>

    <c:set var="dayTime" value="<%=new Date()%>" />
    아시아/한국 <br />
    <fmt:formatDate value="${dayTime}" type="date" dateStyle="full" />
    <fmt:formatDate value="${dayTime}" type="time" />
    <p />

    <fmt:timeZone value="Europe/London">
      <fmt:setLocale value="eu_eu" />
유럽/런던 <br />
      <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full" />
      <br />
    </fmt:timeZone>
    <br />

    <fmt:setTimeZone value="America/New_York" />
    <fmt:setLocale value="en_us" />
    미국/뉴욕 <br />
    <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full" />
    <br /> <br />

    <fmt:setTimeZone value="Asia/Shanghai" />
    <fmt:setLocale value="zh_cn" />
    아시아/중국 <br />
    <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full" />
    <br /> <br />

    <fmt:setTimeZone value="Asia/Japan" />
    <fmt:setLocale value="ja_JP" />
    아시아/일본 <br />
    <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full" />
    <br /> <br />

    <fmt:setTimeZone value="Ukraine" />
    <fmt:setLocale value="uk_UA" />
    우크라이나 <br />
    <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full" />
    <br />

  </div>



</body>
</html>