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
                <textarea name="serviceHandle "  class="layui-textarea serviceHandle"readonly></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-form-item">
                <label class="layui-form-label">处理结果</label>
                <div class="layui-input-inline">
                    <input type="text" name="handleResult" class="layui-input handleResult handleResult" autocomplete="off" readonly>
                </div>
                <label class="layui-form-label">满意度</label>
                <div class="layui-inline">
                    <input type="text" name="satisfaction" class="layui-input satisfaction" autocomplete="off" readonly>
                </div>
            </div>
        </div>
    </form>
</blockquote>
</body>
<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/ServiceManagement/serviceFile.js"></script>
</body>
</html>
