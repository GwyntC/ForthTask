<%--
  Created by IntelliJ IDEA.
  User: mdroz
  Date: 12/25/2022
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Greetings ${user.login}!</h1>
<h1>Menu</h1>
<form action="${pageContext.request.contextPath}/app/menu/viewUsers" method="post">
<table>
    <tr>
        <td><input type="submit" name="submit" value="USERS LIST" /></td>
        <td><input type="submit" name="cancel" value="LOGOUT"/></td>
    </tr>
</table>
</form>
</body>
</html>
