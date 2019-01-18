<%--User: admin--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <title>销售机会列表</title>
    <link rel="stylesheet" href="../../static/commons/layui/css/layui.css" media="all" />
</head>
<body class="childrenBody">
    <form class="layui-form" id="searchList">
        <blockquote class="layui-elem-quote">
            <div class="layui-form-item">
                <div class="layui-row">
                    <label class="layui-form-label">客户名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="name" class="layui-input">
                    </div>
                    <label class="layui-form-label">概要</label>
                    <div class="layui-input-inline">
                        <input type="text" name="outline" class="layui-input">
                    </div>
                    <label class="layui-form-label">联系人</label>
                    <div class="layui-input-inline">
                        <input type="text" name="contacts" class="layui-input">
                    </div>
                    <a class="layui-btn search_btn" data-type="reload" lay-submit lay-filter="search">查询</a>
                    <a class="layui-btn layui-btn-normal add_btn">新建</a>
                </div>
            </div>
</blockquote>
    </form>
<table id="salesList" lay-filter="salesList"></table>

<script type="text/html" id="oppTool">
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="assign">指派</a>

</script>


<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/salesManagement/sales.js"></script>
</body>
</html>
