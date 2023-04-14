<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
%>

<div>
	include ActionTag의 Top입니다. <br /> <b><%=name%> Fighting!!!</b>
</div>
