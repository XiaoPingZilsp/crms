<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/28
  Time: 11:29
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
    <title>服务处理</title>
    <link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
</head>
<body>
    <table id="serviceDeal" lay-filter="serviceDeal"></table>
    <!--操作-->
    <script type="text/html" id="dealBar">
        <a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>处理</a>
    </script>


    <script type="text/javascript" src="static/commons/layui/layui.js"></script>
    <script type="text/javascript" src="static/js/ServiceManagement/serviceDeal.js"></script>

</body>
</html>
