<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login Page</title>
    <style>
        body{
            background-color: aliceblue;
        }
        if{
            font-size: 2vh;
            font-family: "Times New Roman",serif;
            color: crimson;
        }
        h2{
            font-size: 10vh;
            font-family: "Times New Roman",serif;
        }
        .login-wrapper{
            position: absolute;
            width: 20%;
            height: 40vh;
            top: 50%;
            left: 50%;
            margin: -50px 0 0 -50px;
        }
        .login-form{
          box-shadow: 10px 5px 20px lightslategray;
        }
        td{
            font-size: 150%;
        }
        .login{
            height: 3vh;
            font-size: 2vh;
        }
        .password{
            height: 3vh;
            font-size: 2vh;
        }
        .button{
            height: 3vh;
            font-size: 2vh;
            background-color: hotpink;
        }
        div{display: block;}
    </style>
</head>
<body>
<h2>LOGIN PAGE</h2>
    <div class="login-wrapper">
        <div class="login-form">
<form action="${pageContext.request.contextPath}/app/login/enter" method="post">
<table>
    <tr>
        <td>Login:</td>
        <td><input type="text" name="login" class="login"></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><input type="password" name="password" class="password"></td>
    </tr>
    <tr>
        <td><input type="submit" value="LOGIN" class="button"></td>
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
