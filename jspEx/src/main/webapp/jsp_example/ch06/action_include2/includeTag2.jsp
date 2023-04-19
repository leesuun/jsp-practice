<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String siteName = request.getParameter("siteName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>Include Tag Example2</h1>
	<jsp:include page="includeTagTop2.jsp">
		<jsp:param value="JSPStudy.co.kr" name="siteName" />
	</jsp:include>
	include ActionTag의 Body입니다.
	<br />
	<b><%=siteName%></b>
	<hr />
</body>
</html>