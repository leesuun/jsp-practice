<%@ page contentType="text/html; charset=EUC-KR"%>

<%
String id = (String) session.getAttribute("idKey");
String name = (String) session.getAttribute("name");
if (id == null) {
%>

<script>
    alert("�α��� ���� �ʾҽ��ϴ�.");
    location.href = "sessionLogin.jsp";
</script>
<%
}
%>
<html>
<head>
<title>Simple LogIn</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
td {
	padding: .3rem;
}
</style>
</head>
<body bgcolor="#996600" topmargin="100">
  <table width="50%" border="1" align="center" cellspacing="0" cellpadding="0"
    bordercolor="#660000" bgcolor="#FFFF99"
  >
    <thead>
      <tr bordercolor="#FFFF66">
        <td colspan="5">
          <div align="center">Log On Page</div>
        </td>
      </tr>
    </thead>

    <tr>
      <td>
        <div align="center">
          <strong><%=name%></strong> ���� �α��� �ϼ̽��ϴ�.
        </div>
      </td>

      <td>
        <div align="center">
          <a href="sessionUserView.jsp?type=allUser">
            <strong>��ü������ȸ</strong>
          </a>

        </div>
      </td>
      <td>
        <div align="center">
          <a href="sessionUserView.jsp?type=loginedUser">
            <strong>����������ȸ</strong>
          </a>
        </div>
      </td>
      <td>
        <div align="center">
          <a href="sessionLogout.jsp">
            <strong>LOG OUT</strong>
          </a>
        </div>
      </td>
    </tr>
  </table>

</body>
</html>