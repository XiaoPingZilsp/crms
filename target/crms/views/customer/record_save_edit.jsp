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
	<form class="layui-form magl200">

		<div class="layui-form-item " >
			<div class="layui-input-inline">
				<input type="hidden" name="Id"  autocomplete="off" class="layui-input Id">
			</div>
			<div class="layui-input-inline">
				<input type="hidden" name="customerId"  class="layui-input customerId" id="customerId" >
			</div>
		</div>


		<div class="layui-form-item">
			<label class="layui-form-label">概要</label >
			<div class="layui-input-inline">
				<input type="text" name="outline"  class="layui-input outline" id="outline" autocomplete="off">
			</div>

		    <label class="layui-form-label">地址</label>
		    <div class="layui-input-inline">
		      <input type="text" name="place"  class="layui-input place" id="place" autocomplete="off">
		    </div>
		</div>
		
		<div class="layui-form-item">

		    
		    <label class="layui-form-label">备注</label>
		    <div class="layui-input-inline">
		      <input type="text" name="remarks"  class="layui-input remarks" id="remarks" autocomplete="off">
		    </div>
		</div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">详细信息</label>
   <div class="layui-input-inline" >
      <textarea  cols="65" placeholder="请填写描述" class="layui-textarea detailedInfo" name="detailedInfo" id="detailedInfo" autocomplete="off"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="saveRecord">保存</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
   </div>
  </div>

</form>

	<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/customerManager/recordInfo/recordInfo.js"></script>
</body>
</html>