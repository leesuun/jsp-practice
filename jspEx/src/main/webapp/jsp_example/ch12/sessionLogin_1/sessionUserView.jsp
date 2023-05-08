<%@page import="ch11.RegisterBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="ragMgr" class="ch12.RegisterMgr3" />
<%
/* 전체 정보 */
Vector<RegisterBean> nameList = (Vector<RegisterBean>) session.getAttribute("allUser");
/* 특정 정보 */
RegisterBean loggedInUserInfo = null;

String type = request.getParameter("type");
String loggedInUser = (String) session.getAttribute("idKey");

for (int i = 0; i < nameList.size(); i++) {
	if (nameList.get(i).getId().equals(loggedInUser)) {
		loggedInUserInfo =  nameList.get(i);
        break;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#996600" topmargin="100">

  <h1 style="text-align: center"><%=type.equals("allUser") ? "전체 유저 리스트" : "로그인된 유저"%></h1>
  <hr />
  <table width="50%" border="1" align="center" cellspacing="0" cellpadding="0"
    bordercolor="#660000" bgcolor="#FFFF99"
  >
    <colgroup>
      <col style="width: 80px">
      <col style="width: 80px">
      <col style="width: 80px">
    </colgroup>
    <thead>
      <tr bordercolor="#FFFF66">
        <th scope="col">아이디</th>
        <th scope="col">비밀번호</th>
        <th scope="col">이름</th>
      </tr>
    </thead>
    <tbody>

      <%
      if (type.equals("allUser")) {
      	for (int i = 0; i < nameList.size(); i++) {
      %>
      <tr>
        <td style="padding: 5px"><%=nameList.get(i).getId()%></td>
        <td style="padding: 5px"><%=nameList.get(i).getPassword()%></td>
        <td style="padding: 5px"><%=nameList.get(i).getName()%></td>
      </tr>
      <%
      }
      } else {
      %>
      <tr>
        <td style="padding: 5px"><%=loggedInUserInfo.getId()%></td>
        <td style="padding: 5px"><%=loggedInUserInfo.getPassword()%></td>
        <td style="padding: 5px"><%=loggedInUserInfo.getName()%></td>
      </tr>
      <%
      }
      %>
    </tbody>
  </table>


</body>
</html>