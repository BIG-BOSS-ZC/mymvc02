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
    <title>注册</title>
    <link rel="stylesheet" href="/static/layui/css/layui.css"/>
    <script src="/static/layui/layui.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="layui-row" style="margin-top: 150px">
    <%--  <div class="layui-col-md4">
          4/12
      </div>--%>
    <div class="layui-col-md4 layui-col-md-offset4">
        <form class="layui-form" action="" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">name</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">密码长度6-18</div>
            </div>
            <%--<div class="layui-form-item">
                <label class="layui-form-label">选择框</label>
                <div class="layui-input-block">
                    <select name="city" lay-verify="required">
                        <option value=""></option>
                        <option value="0">北京</option>
                        <option value="1">上海</option>
                        <option value="2">广州</option>
                        <option value="3">深圳</option>
                        <option value="4">杭州</option>
                    </select>
                </div>
            </div>--%>
            <%--<div class="layui-form-item">
                <label class="layui-form-label">复选框</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="like[write]" title="写作">
                    <input type="checkbox" name="like[read]" title="阅读" checked>
                    <input type="checkbox" name="like[dai]" title="发呆">
                </div>
            </div>--%>
            <%--<div class="layui-form-item">
                <label class="layui-form-label">开关</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="switch" lay-skin="switch">
                </div>
            </div>--%>
            <div class="layui-form-item">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-inline">
                    <input type="radio" name="sex" value="男" title="男">
                    <input type="radio" name="sex" value="女" title="女" checked>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">birthday</label>
                <div class="layui-input-inline">
                    <input id="birthday" type="text" name="birthday" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">phoneNumber</label>
                <div class="layui-input-inline">
                    <input type="text" name="phoneNumber" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">email</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">hobbit</label>
                <div class="layui-input-inline">
                    <input type="text" name="hobbit" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>

            <%--<div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>--%>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>


<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return true;
        });
    });
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            type: 'datetime',
            elem: '#birthday' //指定元素
        });
    });
</script>
<%--<form method="post" action="">
    <table class="tb">
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
            <td>男<input type="radio" name="sex" value="0">
                女<input type="radio" name="sex" value="1"></td>
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
</form>--%>
</body>
</html>
