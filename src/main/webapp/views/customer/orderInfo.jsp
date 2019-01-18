<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>"/>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="static/css/public.css" media="all" />
	</head>
	<body>
		<blockquote class="layui-elem-quote">
			<form class="layui-form">
				<div class="layui-form-item">
					<label class="layui-form-label">订单编号</label>
					<div class="layui-input-inline">
						<input type="text" name="orderId"  class="layui-input orderId" readonly>
					</div>
					
					<label class="layui-form-label">日期</label>
					<div class="layui-input-inline">
						<input type="text" name="orderTime"  class="layui-input orderTime" readonly>
					</div>
				 </div>
				 
				 <div class="layui-form-item">
					<label class="layui-form-label">送货日期</label>
					<div class="layui-input-inline">
						<input type="text" name="deliverGoods" class="layui-input deliverGoods" readonly>
					</div>

					 <label class="layui-form-label">状态</label>
					 <div class="layui-input-inline">
						 <input type="text" name="status"  class="layui-input status" readonly>
					 </div>

				 </div>


			</form>

		</blockquote>



		<table id="orderInfo" lay-filter="orderInfo"></table>


		<script type="text/javascript" src="static/commons/layui/layui.js"></script>
		<script type="text/javascript" src="static/js/customerManager/order/order.js"></script>
	</body>
</html>
