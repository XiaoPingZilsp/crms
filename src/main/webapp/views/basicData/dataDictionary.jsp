<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>"/>
	<meta charset="utf-8">
	<title>数据字典管理</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="static/css/public.css" media="all" />
</head>
<body class="childrenBody">
<form class="layui-form">
	<blockquote class="layui-elem-quote quoteBox">
		<form class="layui-form">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" name="search"  autocomplete="off" class="layui-input searchVal" placeholder="请输入搜索的内容" />
				</div>
				<a class="layui-btn search_btn" data-type="reload" lay-submit lay-filter="search"><i class="layui-icon layui-icon-search"></i>搜索</a>
			</div>
			<div class="layui-inline">
				<a class="layui-btn layui-btn-normal addData_btn" ><i class="layui-icon layui-icon-add-circle-fine"></i>添加</a>
			</div>
		</form>
	</blockquote>
	<table id="dataDictionary" lay-filter="dataDictionary"></table>

	<!--操作-->
	<script type="text/html" id="dataDictionaryBar">
		<a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
		<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>
	</script>
</form>
<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/basicData/dataDictionary.js"></script>
</body>
</html>