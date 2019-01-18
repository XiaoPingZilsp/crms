<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
	<head>
        <base href="<%=basePath%>"/>
		<meta charset="UTF-8">
		<title>服务反馈</title>
        <link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
	</head>
		<body>
			<table id="feedBack" lay-filter="feedBack"></table>
			<script type="text/html" id="feedBar">
				<a class="layui-btn layui-btn-xs" lay-event="feed_edit"><i class="layui-icon layui-icon-edit"></i>反馈</a>
			</script>
            <script type="text/javascript" src="static/commons/layui/layui.js"></script>
            <script type="text/javascript" src="static/js/ServiceManagement/feedbackService.js"></script>

	</body>
</html>
