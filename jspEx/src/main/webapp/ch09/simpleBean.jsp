<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String msg = request.getParameter("msg");
%>

<jsp:useBean id="mybean" class="ch09.SimpleBean" scope="page" />
<jsp:setProperty name="mybean" property="message" value="<%=msg%>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>간단한 빈 프로그래밍</h1>
	<br /> Message:
	<jsp:getProperty property="message" name="mybean" />

</body>
</html>