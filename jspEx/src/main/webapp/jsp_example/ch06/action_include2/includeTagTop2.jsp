<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String siteName = request.getParameter("siteName");
%>
<div>
	include ActionTag의 Top입니다. <br />
	<%=siteName%>
	<hr />
</div>