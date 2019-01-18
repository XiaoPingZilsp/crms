<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>"/>
		<meta charset="UTF-8">
		<title>客户流失管理</title>
		<link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="static/css/public.css" media="all" />
	</head>
<body class="childrenBody">

	<blockquote class="layui-elem-quote">
		<form class="layui-form">
			<div class="layui-form-item">

				<label class="layui-form-label">客户名称</label>
				<div class="layui-input-inline">
					<input type="text" name="customerName" class="layui-input">
				</div>

				<label class="layui-form-label">客户经理</label>
				<div class="layui-input-inline">
					<input type="text" name="customerMgr" class="layui-input">
				</div>


				<label class="layui-form-label">状态</label>
				<div class="layui-input-inline">
					<select name="statuss">
						<option value="">全部</option>
						<option value="0">暂缓流失</option>
						<option value="1">确认流失</option>
					</select>
				</div>

				<div class="layui-inline">
					<a class="layui-btn search_btn" data-type="reload" lay-submit lay-filter="search"><i class="layui-icon layui-icon-search"></i>查询</a>
				</div>

			</div>
		</form>
	</blockquote>	

		<table class="layui-table" id="liushiTable" lay-filter="liushiTable"></table>


	<!--操作-->
	<script type="text/html" id="lossBar">
		<a class="layui-btn layui-btn-xs" lay-event="zanhuan">暂缓流失</a>
		<a class="layui-btn layui-btn-xs" lay-event="sure">确认流失</a>
	</script>

		<script type="text/javascript" src="static/commons/layui/layui.js"></script>
		<script type="text/javascript" src="static/js/customerManager/loss/coutLost.js"></script>
	</body>
</html>
