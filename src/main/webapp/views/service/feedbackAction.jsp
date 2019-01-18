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
	</head>
	<body>
		<body class="childrenBody">
		<blockquote class="layui-elem-quote">
			<form class="layui-form">
				<div class="layui-form-item">
					<label class="layui-form-label">编号</label>
					<div class="layui-input-inline">
						<input type="text" name="serviceNo" class="layui-input serviceNo" readonly>
						<input type="text" name="serviceId" class="layui-input id" style="display: none">
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">服务类型</label>
						<div class="layui-input-inline">
							<input type="text" name="serviceType" class="layui-input serviceType" readonly>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">概要</label>
					<div class="layui-input-inline">
						<input type="text" name="outline" class="layui-input outline" readonly>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">客户</label>
					<div class="layui-input-inline">
						<input type="text" name="customerName" class="layui-input customerName" readonly>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">状态</label>
						<div class="layui-input-inline">
							<input type="text" name="statuss" class="layui-input statuss" readonly>
						</div>
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">服务请求</label>
					<div class="layui-input-block">
						<input name="serviceReq"  class="layui-textarea serviceReq" readonly></input>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">创建人</label>
					<div class="layui-input-inline">
						<input type="text" name="creationName" class="layui-input creationName" readonly>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">创建时间</label>
						<div class="layui-input-inline">
							<input type="text" name="creationTime" class="layui-input creationTime" readonly>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">分配给</label>
					<div class="layui-input-inline">
						<input type="text" name="name" class="layui-input name" readonly>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">分配时间</label>
						<div class="layui-input-inline">
							<input type="text" name="cllotTime" class="layui-input cllotTime" readonly>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">服务处理</label>
					<div class="layui-input-block">
						<textarea name="serviceHandle"  class="layui-textarea serviceHandle"readonly></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-form-item">
						<label class="layui-form-label">处理结果</label>
						<div class="layui-input-inline">
							<input type="text" name="handleResult" class="layui-input handleResult" autocomplete="off" lay-verify="required">
						</div>
						<label class="layui-form-label">满意度</label>
						<div class="layui-inline">
							<select name="satisfaction" id="satisfaction" class="satisfaction" lay-verify="required">
								<option value="">请选择...</option>
							</select>
						</div>
				</div>
					<div class="layui-form-item layui-form-text">
						<div class="layui-input-block">
							<a class="layui-btn" lay-submit lay-filter="addResult"><i class="layui-icon layui-icon-upload"></i>提交</a>
						</div>
					</div>
				</div>
			</form>
		</blockquote>
		</body>
		<script type="text/javascript" src="static/commons/layui/layui.js"></script>
        <script type="text/javascript" src="static/js/ServiceManagement/feedbackService.js"></script>
	    <script type="text/javascript">
            layui.use(['laydate','layer','table','jquery','form'], function(){
                var laydate = layui.laydate,
                    layer = layui.layer,
                    table = layui.table,
                    $ = layui.jquery,
                    form = layui.form
                $.ajax({
                    type:'post',
                    url:'service-user-allot/satisfaction',
                    dataType:'json',
                    success:function (data1) {
                        for(let i=0;i<data1.length;i++) {
                            $("#satisfaction").append("<option value=" + data1[i].name + ">" + data1[i].name + "</option>");
                            layui.form.render('select');
                            console.log(data1[i].name);
                        }
                    }
                });
            });
		</script>
</body>
</html>
