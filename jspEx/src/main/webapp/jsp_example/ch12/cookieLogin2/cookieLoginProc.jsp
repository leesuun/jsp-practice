<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="regMgr" class="ch12.RegisterMgr2" />
<%
String id = "";
String pwd = "";
String phone = "";
if (request.getParameter("id") != null)
	id = request.getParameter("id");
if (request.getParameter("pwd") != null)
	pwd = request.getParameter("pwd");
if (request.getParameter("phone") != null)
	phone = request.getParameter("phone");

if (regMgr.loginRegister(id, pwd, phone)) {
	Cookie cookie = new Cookie("idKey", id);
	/* Cookie cookie_name = new Cookie("name",regMgr.getName(id).getName()); */
	response.addCookie(cookie);
	/* response.addCookie(cookie_name); */
	/* System.out.print(regBean1.getName());   */
	
%>
<script>
    alert("�α��� �Ǿ����ϴ�.");
    location.href = "cookieLoginOK.jsp";
</script>
<%
} else {
%>
<script>
    alert("�α��� ���� �ʾҽ��ϴ�.");
    location.href = "cookieLogin.jsp";
</script>
<%
}
%>