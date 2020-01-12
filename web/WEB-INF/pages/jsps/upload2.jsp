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
    <script src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<form id="up_form" enctype="multipart/form-data">
    <table class="tb">
        <tr>
            <td>文件名:</td>
            <td><input type="text" name="fileName" value=""></td>
        </tr>
        <tr>
            <td colspan="2"><input type="file" name="uploadFile"></td>
        </tr>
        <tr>
<%--            <td colspan="2"><button onclick="upload()">上传</button></td>--%>
            <td colspan="2"><input type="button" onclick="upload()" value="上传"></td>
        </tr>
    </table>
</form>
<script>
    function upload() {
        let data=new FormData(document.getElementById("up_form"));
        $.ajax({
            url: "/upload",
            type: "post",
            data: data,
            cache: false,
            contentType: false,
            processData : false, // 使数据不做处理
            success: (data)=>{
                alert(data)
            }
        })
    }
</script>
</body>
</html>
