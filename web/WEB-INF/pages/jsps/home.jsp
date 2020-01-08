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
</head>
<body>
<h1>欢迎您${user.name}</h1>
<p><a href="/user/update">修改</a></p>
<p><a href="/user/logout">退出</a></p>
<p>id:${user.id}</p>
<p>name:${user.name}</p>
</body>
</html>
