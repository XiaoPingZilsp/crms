<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/23
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <title>服务分配</title>
    <link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
</head>
<body>
<form>
    <table id="service" lay-filter="service"></table>

    <!--操作-->
    <script type="text/html" id="serviceBar">
        <a class="layui-btn layui-btn-xs" lay-event="allot"><i class="layui-icon layui-icon-upload-drag"></i>分配</a>
        <a class="layui-btn layui-btn-xs layui-btn-warm" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>修改</a>
        <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>
    </script>

</form>
    <script type="text/javascript" src="static/commons/layui/layui.js"></script>
    <script type="text/javascript" src="static/js/ServiceManagement/serviceAllot.js"></script>
</body>
</html>

