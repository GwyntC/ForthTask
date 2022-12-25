<%--
  Created by IntelliJ IDEA.
  User: mdroz
  Date: 12/25/2022
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<table>
    <tr>
        <th>LOGIN</th>
        <th>NAME</th>
    </tr>
    <c:forEach items="${userList}" var="item">
        <tr>
            <td><c:out value="${item.login}" /></td>
            <td><c:out value="${item.name}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
