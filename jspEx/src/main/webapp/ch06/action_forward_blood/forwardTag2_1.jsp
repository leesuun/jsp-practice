<%@page contentType="text/html;charset=utf-8"%>
<%
String name = request.getParameter("name");
String bloodType = request.getParameter("bloodType");

%>
<h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>

	<jsp:param name="name" value="<%=name%>" />
</jsp:forward>