<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>"/>
	<meta charset="utf-8">
	<title>交往记录列表</title>
	<link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="static/css/public.css" media="all" />
</head>
<body class="childrenBody">
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
				<a class="layui-btn layui-btn-normal saveRecord_btn" ><i class="layui-icon layui-icon-add-circle-fine"></i>添加</a>
				<a class="layui-btn layui-btn-normal backRecord_btn" ><i class="layui-icon layui-icon-return"></i>返回</a>
			</div>
			
		</div>
			  
		</form>	
	<table id="recordList" lay-filter="recordList"></table>

	<!--操作-->
	<script type="text/html" id="recordBtnBar">
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
	</script>

	<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/customerManager/recordInfo/recordInfo.js"></script>
</body>
</html>