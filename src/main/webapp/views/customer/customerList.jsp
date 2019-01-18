<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<meta charset="utf-8">
	<title>客户信息管理-->客户信息</title>
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
<table id="customerList" lay-filter="customer"></table>
<script type="text/html" id="barDemo">
	<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
	<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	<a class="layui-btn layui-btn-xs" lay-event="see">查看联系人</a>
	<a class="layui-btn layui-btn-xs" lay-event="record">交往记录</a>
	<a class="layui-btn layui-btn-xs" lay-event="orderHistory">历史记录</a>
</script>
 
<script type="text/javascript" src="/static/commons/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/customerManager/customer/customerList.js"></script>

</body>
</html>