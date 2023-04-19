<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
String country = request.getParameter("country");
String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%
	if (country.equals("한국어")) {
	%>
	<jsp:include page="includeKorean.jsp" />
	<%
	} else {
	%>
	<jsp:include page="includeEnglish.jsp" />
	<%
	}
	%>
</body>
</html>