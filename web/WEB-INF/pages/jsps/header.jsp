<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/8
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/static/css/formcss.css"/>
    <link rel="stylesheet" href="/static/layui/css/layui.css"/>
</head>
<body>

<%--<c:choose>
    <c:when test="${!empty sessionScope.user}">
        <li class="layui-nav-item">
            <a href="/user/logout">退出</a>
        </li>
        <li class="layui-nav-item">
            <a href="/user/update">修改</a>
        </li>
    </c:when>
    <c:otherwise>
        <li class="layui-nav-item">
            <a href="/user/login">登录</a>
        </li>
        <li class="layui-nav-item">
            <a href="/user/register">注册</a>
        </li>
    </c:otherwise>
</c:choose>--%>
<ul class="layui-nav layui-bg-red">
    <%--<li class="layui-nav-item">
        <a href="">控制台<span class="layui-badge">9</span></a>
    </li>--%>
    <li class="layui-nav-item">
        <a href="">个人中心<span class="layui-badge-dot"></span></a>
    </li>
    <li class="layui-nav-item">
        <a id="register" href="/user/register">注册</a>
    </li>
    <li class="layui-nav-item">
        <a id="update" href="/user/update">修改</a>
    </li>
    <li class="layui-nav-item">
        <a id="logout" href="/user/logout">退出</a>
    </li>
    <li class="layui-nav-item">
        <a id="user" href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:;">修改信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退了</a></dd>
        </dl>
    </li>
</ul>

<script>
    var url = window.location.pathname;
    console.log(url)
    if(url.match("/login")){
            document.getElementById("update").style.display="none";
            document.getElementById("logout").style.display="none";
            document.getElementById("user").style.display="none";
            document.getElementById("register").style.display="inline";
        }else if(url.match("/home")){
            document.getElementById("update").style.display="inline";
            document.getElementById("logout").style.display="inline";
            document.getElementById("user").style.display="inline";
            document.getElementById("register").style.display="none";
        }else if(url.match("/update")){
            document.getElementById("update").style.display="none";
            document.getElementById("logout").style.display="inline";
            document.getElementById("user").style.display="inline";
            document.getElementById("register").style.display="none";
        }
</script>
</body>
</html>
