<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/23
  Time: 8:58
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
<form class="layui-form" action="/service-management/addService" method="post" id="service_add">
    <body class="childrenBody">
    <blockquote class="layui-elem-quote">
        <div class="layui-input-inline">
            <a class="layui-btn" >帮助</a>
            <a class="layui-btn" lay-submit lay-filter="edit">保存</a>
        </div>
    </blockquote>
    </body>
    <body class="childrenBody">
    <blockquote class="layui-elem-quote">
        <div class="layui-form-item">
            <label class="layui-form-label">编号</label>
            <div class="layui-input-inline">
                <input type="hidden" name="id" placeholder="请输入编号" autocomplete="off" class="layui-input id">
                <input type="text" name="serviceNo" placeholder="请输入编号" autocomplete="off" class="layui-input serviceNo">
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">服务类型</label>
                <div class="layui-input-inline">
                    <select name="serviceType" id="serviceType" class="serviceType">
                        <option >请选择</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">概要</label>
            <div class="layui-input-inline">
                <input type="text" name="outline" placeholder="请输入概要内容" autocomplete="off" class="layui-input outline" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">客户</label>
            <div class="layui-input-inline">
                <select name="customerName" lay-filter="customerName" id="customerName" class="customerName">
                    <option >请选择</option>
                </select>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">状态</label>
                <div class="layui-input-inline">
                    <input type="text" name="statuss" value="新创建" autocomplete="off" class="layui-input statuss" readonly>
                </div>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">服务请求</label>
            <div class="layui-input-block">
                <textarea name="serviceReq" placeholder="请输入请求内容" class="layui-textarea serviceReq"></textarea>
            </div>
        </div>

    </blockquote>
    </body>

</form>

<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/ServiceManagement/addService.js"></script>
<script type="text/javascript" src="static/js/ServiceManagement/serviceAllot.js"></script>
</body>
</html>

