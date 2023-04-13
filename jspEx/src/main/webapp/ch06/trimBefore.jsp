<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../error/errorPage.jsp"%>
<%@page import="java.util.*"%>
<%@page session="true"%>
<%@page buffer="16kb"%>
<%@page autoFlush="true"%>
<%@page isThreadSafe="true"%>
<%
Date date = new Date();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int a = 1 / 0;
	int [] b = new int[5] ;
	int c = b[-1];
	%>
	<h1>현재의 날짜와 시간은?</h1>
	<%=date.toLocaleString()%>

</body>
</html>