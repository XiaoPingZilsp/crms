<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8">
    <base href="<%=basePath%>"/>
    <title>客户关系管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="static/css/public.css" media="all" />
</head>
<body class="loginBody">
<form class="layui-form" id="login">
    <div class="login_face"><img src="static/images/face4.jpg" class="userAvatar"></div>
    <div class="layui-form-item input-item">
        <label for="logName">用户名</label>
        <input type="text" placeholder="请输入用户名" autocomplete="off" id="logName" name="logName" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="logPwd">密码</label>
        <input type="password" placeholder="请输入密码" autocomplete="off" id="logPwd" name="logPwd" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item" id="imgCode">
        <label for="code">验证码</label>
        <input type="text" placeholder="请输入验证码" autocomplete="off" id="code" name="code" lay-verify="required" class="layui-input">
        <img id="captchaImage" src="system-user/captcha">
    </div>
    <div class="layui-form-item">
        <button type="button" class="layui-btn layui-block" lay-filter="login" lay-submit>登录</button>
    </div>
</form>
<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/login.js"></script>
</body>
</html>
