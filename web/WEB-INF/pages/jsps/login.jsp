<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/6
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="/static/css/formcss.css"/>
</head>
<body>
<form method="post" action="">
    <table class="tb">
        <tr>
            <td>没有账号？</td>
            <td><a href="/user/register">注册</a></td>
        </tr>
        <tr>
            <td>name:</td>
            <td><input type="text" name="name" value=""></td>
        </tr>
        <tr>
            <td>password:</td>
            <td><input type="password" name="password" value=""></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
            <td><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
