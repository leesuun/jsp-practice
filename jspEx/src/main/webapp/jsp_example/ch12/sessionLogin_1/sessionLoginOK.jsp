<%@ page contentType="text/html; charset=EUC-KR"%>

<%
String id = (String) session.getAttribute("idKey");
String name = (String) session.getAttribute("name");
if (id == null) {
%>

<script>
    alert("로그인 되지 않았습니다.");
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
          <strong><%=name%></strong> 님이 로그인 하셨습니다.
        </div>
      </td>

      <td>
        <div align="center">
          <a href="sessionUserView.jsp?type=allUser">
            <strong>전체정보조회</strong>
          </a>

        </div>
      </td>
      <td>
        <div align="center">
          <a href="sessionUserView.jsp?type=loginedUser">
            <strong>본인정보조회</strong>
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