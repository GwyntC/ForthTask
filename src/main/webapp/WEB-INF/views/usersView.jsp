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
    <style>
        #users{
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #users td, #users th{
            border: 1px solid #ddd;
            padding: 8px;
        }
       #users tr:nth-child(even){background-color: #f2f2f2;}
       #users tr:hover {background-color: #ddd;}
       #users th {
           padding-top: 12px;
           padding-bottom: 12px;
           text-align: left;
           background-color: #04AA6D;
           color: white;
       }
    </style>
</head>
<body>
<table id="users">
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
