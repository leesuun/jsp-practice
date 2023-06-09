<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
<style>
body {
	display: flex;
  flex-direction:column;
	justify-content: center;
	background-color: black;
	color: white;
	font-size: 1.5rem;
}
</style>
</head>
<body>
  <h2>Formatting Tags4</h2>
  <fmt:setBundle var="note" basename="ch18.note" />
  <fmt:message bundle="${note}" key="country" />
  &nbsp;
  <fmt:message bundle="${note}" key="siteName" />
  &nbsp;
  <fmt:message bundle="${note}" key="message">
    <fmt:param value="${param.msg}" />
  </fmt:message>
</body>
</html>