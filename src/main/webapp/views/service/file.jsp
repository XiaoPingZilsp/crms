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
    <title>服务归档</title>
    <link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
</head>
<body>
<body class="childrenBody">
<blockquote class="layui-elem-quote">
    <form class="layui-form">
        <div class="layui-form-item">
            <div class="layui-row ">
                <label class="layui-form-label">客户</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="customer">
                </div>
                <label class="layui-form-label">概要</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="outline">
                </div>
                <label class="layui-form-label">服务类型</label>
                <div class="layui-input-inline">
                    <select name="serviceType" id="serviceType">
                        <option value=""></option>
                    </select>
                </div>
                <div class="layui-col-md4">
                    <a class="layui-btn search_btn" data-type="reload" lay-submit lay-filter="search"><i class="layui-icon layui-icon-search"></i>查询</a>
                </div>
            </div>
        </div>
    </form>
</blockquote>
</body>
<form>
    <table id="serviceFile" lay-filter="serviceFile"></table>
    <!--操作-->
    <script type="text/html" id="fileBar">
        <a class="layui-btn layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>查看详情</a>
        <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>
    </script>

</form>
<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/ServiceManagement/serviceFile.js"></script>
<script type="text/javascript" src="static/js/ServiceManagement/addService.js"></script>
</body>
</html>

