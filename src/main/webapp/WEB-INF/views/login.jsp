<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <style>
        if{color: crimson;}
        body{background-color: lightslategray;}
        h2{ padding: 70px 0;
            text-align: center;}
        div.form
        {
            display: block;
            text-align: center;
        }
        form
        {
            display: inline-block;
            margin-left: auto;
            margin-right: auto;
            text-align: left;
        }
        input {
            width: 375px;
            height: 25px;
        }
    </style>
</head>
<body>
<div>
<h2>LOGIN PAGE</h2>
    <div class="form">
<form action="${pageContext.request.contextPath}/app/login/enter" method="post">
<table>
    <tr>
        <td>Login:</td>
        <td><input type="text" name="login"></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><input type="text" name="password"></td>
    </tr>
    <tr>
        <td><input type="submit" value="LOGIN"></td>
    </tr>
</table>
</form>
    </div>
<if test="${not empty error}">
    ${error}
</if>
</div>
</body>
</html>
