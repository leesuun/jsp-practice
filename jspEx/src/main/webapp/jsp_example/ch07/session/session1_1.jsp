
<%@ page contentType="text/html;charset=EUC-KR"%>
<%
request.setCharacterEncoding("EUC-KR");

String season = request.getParameter("season");
String fruit = request.getParameter("fruit");
String id = (String) session.getAttribute("idKey");
String sessionId = session.getId();
int intervalTime = session.getMaxInactiveInterval();

if (id != null) {
	System.out.println("id=" + id);
%>
<h1>Session Example1</h1>
<b><%=id%></b>
���� �����Ͻô� ������ ������
<p />
<b><%=season%></b>
��
<b><%=fruit%></b>
�Դϴ�.
<p />
���� ID :
<%=sessionId%><p>
	���� ���� �ð� :
	<%=intervalTime%>��
<p />
<%
/* session.invalidate(); */
} else {
response.sendRedirect("session1.html");
System.out.println("id=null");
out.println("������ �ð��� ����� �Ͽ��ų� �ٸ� ������ ������ �� ���� �����ϴ�.");
}
%>
