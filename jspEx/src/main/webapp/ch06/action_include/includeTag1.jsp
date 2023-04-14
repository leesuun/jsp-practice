<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
String name = "Korea Football";
%>
<div>
	<h1>Include Tag Example1</h1>
	<jsp:include page="includeTagTop1.jsp" />
	<hr />
	include ActionTag의 Body입니다.
</div>
