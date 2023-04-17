<%@ page contentType="text/html;charset=EUC-KR"%>
<%
response.setHeader("Pragma", "no-cache");
if (request.getProtocol().equals("HTTP/1.1")) {
	response.setHeader("Cache-Control", "no-store");
	response.sendError(404, "강제로 404 에러를 표시하겠습니다.~");
}

%>
<h1>Response Example1</h1>
http://localhost/myapp/ch07/response1.jsp가
<p />
http://localhost/myapp/ch07/response1_1.jsp로 변경이 되었습니다.
