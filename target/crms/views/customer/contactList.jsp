<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>客户信息管理--》客户信息-》联系人</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="/static/css/public.css" media="all" />
</head>
<body>
<form class="layui-form" >


    <div class="layui-form-item">

        <label class="layui-form-label">客户编号</label>
        <div class="layui-input-inline">
            <input type="text" name="customerId" class="layui-input customerId" >
        </div>

        <label class="layui-form-label">客户名称</label>
        <div class="layui-input-inline">
            <input type="text" name="customerName" class="layui-input customerName">
        </div>

        <div class="layui-input-block">
            <a class="layui-btn layui-btn-normal saveContact_btn" ><i class="layui-icon layui-icon-add-circle-fine"></i>添加</a>
            <a class="layui-btn layui-btn-normal backContact_btn" ><i class="layui-icon layui-icon-return"></i>返回</a>
        </div>

    </div>

</form>
<table id="constactList" lay-filter="constact">
    <input  id="customerId" type="hidden" class="layui-input customerId" lay-verify="customerId" >
</table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/javascript" src="/static/commons/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/customerManager/customer/contactList.js"></script>
</body>
</html>
