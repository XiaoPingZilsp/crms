<%--User: admin--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta charset="utf-8">
    <title>客户关系管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="../static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../static/css/index.css" media="all" />
</head>
<body class="childrenBody">
<blockquote class="layui-elem-quote">
    <form class="layui-form">
        <div class="layui-input-item" align="right">
            <a class="layui-btn" lay-event="help_btn">帮助</a>
            <a class="layui-btn back_btn">返回</a>
            <a class="layui-btn" lay-submit lay-filter="save_btn">保存</a>
        </div>
        <div class="layui-input-inline" style="width:80%">
            <div class="layui-row">
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">机会来源</label>
                        <div class="layui-input-inline">
                            <input type="text" name="opportunitySource" required  lay-verify="required" autocomplete="off" class="layui-input opportunitySource">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">客户名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="name" required  lay-verify="required" autocomplete="off" class="layui-input name">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">成功几率</label>
                        <div class="layui-input-inline">
                            <input type="number" name="successProbability" min="0" max="100" required  lay-verify="successProbability" autocomplete="off" class="layui-input successProbability">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12">
                    <div class="layui-form-item">
                        <label class="layui-form-label">概要</label>
                        <div class="layui-input-block">
                            <input type="text" name="outline" required  lay-verify="required" autocomplete="off" class="layui-input outline" style="width:1047px">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系人</label>
                        <div class="layui-input-inline">
                            <input type="text" name="contacts" required  lay-verify="required" autocomplete="off" class="layui-input contacts">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系人电话</label>
                        <div class="layui-input-inline">
                            <input type="text" name="contactsTel" required  lay-verify="phone" autocomplete="off" class="layui-input contactsTel">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">机会描述</label>
                        <div class="layui-input-block">
                            <textarea name="opportunityDesc" required  lay-verify="required" autocomplete="off" class="layui-textarea opportunityDesc" style="width:1047px"></textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">创建人</label>
                        <div class="layui-input-inline">
                            <input type="text" name="foundName" value="${Name}" required readonly lay-verify="required" autocomplete="off" class="layui-input foundName">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</blockquote>
<script type="text/javascript" src="../../static/commons/layui/layui.js"></script>
<script type="text/javascript" src="../../static/js/salesManagement/sales.js"></script>
</body>
</html>
