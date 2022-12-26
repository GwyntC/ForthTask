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
    <style>
        h1{
            font-size: 5vh;
            font-family: "Times New Roman",serif;
        }
        body{
            background-color: lightslategray;
        }
        .wrapper{
            position: absolute;
            left: 50%;
        }
        .viewlist{
            height: 5vh;
            font-size: 4vh;
            background-color: darkgreen;
        }
        .logout{
            height: 5vh;
            font-size: 4vh;
            background-color: crimson;
        }
        #choose{
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #choose td, #choose th{
            border: 1px solid #ddd;
            padding: 8px;
        }
        #choose tr{background-color: #f2f2f2;}
        #choose th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
<h1>Greetings ${user.login}!</h1>
<div class="wrapper">
<h1>Menu</h1>
<form action="${pageContext.request.contextPath}/app/menu/viewUsers" method="post">
<table id="choose">
    <tr>
        <td><input type="submit" name="viewUsers" value="USERS LIST" class="viewlist" /></td>
    </tr>
    <tr>
        <td><input type="submit" name="logOut" value="LOGOUT" class="logout"/></td>
    </tr>
</table>
</form>
</div>
</body>
</html>
