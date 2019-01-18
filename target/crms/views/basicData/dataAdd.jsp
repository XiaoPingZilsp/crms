<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>"/>
	<meta charset="utf-8">
	<title>添加数据字典</title>
	<link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="static/css/public.css" media="all" />
</head>
<body>
<div class="layui-container">	
		
		<fieldset class="layui-elem-field">
			 <legend>数据字典</legend>
			 <form class="layui-form magl200 " >

				 <div class="layui-form-item " >

					 <div class="layui-input-inline">
						 <input type="hidden" name="id"  autocomplete="off" class="layui-input id">
					 </div>

				 </div>



				<div class="layui-form-item " >
					
					<label class="layui-form-label">类别：</label>
					<div class="layui-input-inline">
					  <input type="text" name="parentName" required lay-verify="required" placeholder="请输入类别" autocomplete="off" class="layui-input parentName">
					</div>
					
					<label class="layui-form-label">类别值：</label>
					<div class="layui-input-inline">
					  <input type="text" name="parentValue" required lay-verify="required" placeholder="请输入类别值" autocomplete="off" class="layui-input parentValue">
					</div>
					
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">条目：</label>
					<div class="layui-input-inline">
					  <input type="text" name="name" required lay-verify="required" placeholder="请输入条目" autocomplete="off" class="layui-input name">
					</div>
					
					<label class="layui-form-label">条目值：</label>
					<div class="layui-input-inline">
					  <input type="text" name="nameValue" required lay-verify="required" placeholder="请输入值" autocomplete="off" class="layui-input nameValue">
					</div>			
				</div>
				
				<div class="layui-form-item magl150" >
				    <div class="layui-input-block">
				      <button class="layui-btn" lay-submit lay-filter="insert_edit"><i class="layui-icon layui-icon-upload"></i>提交</button>
				      <button type="reset" class="layui-btn layui-btn-primary"><i class="layui-icon layui-icon-refresh"></i>重置</button>
				    </div>
				</div>	
			</form>
		</fieldset>
		
</div>
<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/basicData/dataDictionary.js"></script>
</body>
</html>