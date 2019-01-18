<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/11/22
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>文章列表--layui后台管理模板 2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../css/public.css" media="all" />
</head>
<body class="childrenBody">
<form class="layui-form layui-row layui-col-space12">
    <div class="layui-col-md9 layui-col-xs12">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md9 layui-col-xs7">
                <div class="layui-form-item magt3">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block">
                        <input type="text" class="layui-input newsName" lay-verify="newsName" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="layui-form-item magt3">
                    <label class="layui-form-label">角色类型</label>
                    <div class="layui-input-block">
                        <input type="text" class="layui-input newsName" lay-verify="newsName" placeholder="请输入角色类型">
                    </div>
                </div>
                <div class="layui-form-item magt3">
                    <label class="layui-form-label">角色状态</label>
                    <div class="layui-input-block">
                        <input type="text" class="layui-input newsName" lay-verify="newsName" placeholder="请输入角色状态">
                    </div>
                </div>
                <div class="layui-form-item magt3">
                    <div class="layui-input-block">
                        <a class="layui-btn layui-btn-sm" lay-filter="addNews" lay-submit><i class="layui-icon">&#xe609;</i>添加</a>
                        <a class="layui-btn layui-btn-sm" lay-filter="addNews" lay-submit><i class="layui-icon">&#xe609;</i>重置</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript" src="../../commons/layui/layui.js"></script>
<script type="text/javascript" src="newsAdd.js"></script>
</body>
</html>
