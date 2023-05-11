<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	display: flex;
	justify-content: center;
	background-color: black;
	color: white;
	font-size: 1.5rem;
}
</style>
</head>
<body>
  <div class="wrapper">
    <h2>Core Tags2</h2>
    <c:set var="str1" value="JAVA의 JSTL" scope="page" />
    <c:set var="str2" value="${null}" scope="session" />
    <c:set var="str3" value="JSPStudy" scope="page" />
    <c:set var="str4" value="JSTL" scope="session" />
    -
    <c:out value="${str1}" default="기본출력값" />
    <br /> -
    <c:out value="${sessionScope.str2}" default="기본출력값" />
    <br /> -
    <c:out value="${str3}" default="기본출력값" />
    <br />

    <c:remove var="str4" />
    - ${str3 }의 ${str4 } ... <br /> <br /> -<font color="red"> <b>${str3 }</b>
    </font> <br /> -<font color="blue"> <b><c:out value="${str3}"></c:out> </b>
    </font> <br />
  </div>
</body>
</html>