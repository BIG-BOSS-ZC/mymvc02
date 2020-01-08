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
    <title>更新</title>
    <link rel="stylesheet" href="/static/css/formcss.css"/>
</head>
<body>
<form method="post" action="">
    <table class="tb">
        <input type="text" hidden name="id" value="${user.id}">
        <tr>
            <td>name:</td>
            <td><input type="text" name="name" value="${user.name}"></td>
        </tr>
        <tr>
            <td>password:</td>
            <td><input type="password" name="password" value="${user.password}"></td>
        </tr>
        <tr>
            <td>sex:</td>
            <td>男<input type="radio" name="sex" value="男">
                女<input type="radio" name="sex" value="女"></td>
        </tr>
        <tr>
            <td>phone number:</td>
            <td><input type="text" name="phoneNumber" value="${user.phoneNumber}"></td>
        </tr>
        <tr>
            <td>email:</td>
            <td><input type="text" name="email" value="${user.email}"></td>
        </tr>
        <tr>
            <td>hobbit:</td>
            <td><input type="text" name="hobbit" value="${user.hobbit}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="保存"></td>
            <td><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
