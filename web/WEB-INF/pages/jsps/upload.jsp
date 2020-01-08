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
    <title>upload</title>
    <link rel="stylesheet" href="/static/css/formcss.css"/>
</head>
<body>
<form method="post" action="/upload" enctype="multipart/form-data">
    <table class="tb">
        <input type="text" hidden name="id" value="${user.id}">
        <tr>
            <td>文件名:</td>
            <td><input type="text" name="fileName" value="${user.name}"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="file" name="uploadFile"></td>
        </tr>
        <tr>
            <td><input type="submit" value="上传"></td>
            <td><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
