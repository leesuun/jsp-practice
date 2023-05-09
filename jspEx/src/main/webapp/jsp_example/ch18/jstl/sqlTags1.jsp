<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource url="jdbc:mysql://127.0.0.1:3306/board?userUnicode=true&characterEncoding=UTF-8"
driver="com.mysql.cj.jdbc.Driver" user="root" password="qkfkadml@12" var="db"
scope="application"
 />

<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<h2>SQL Tags1</h2>
	   <sql:query var="lists" dataSource="${db}">
        select id, name from tblMember
       </sql:query>

    <c:forEach var="member" items="${lists.rows}">
        ${member}<br/>
    </c:forEach>
</body>
</html>