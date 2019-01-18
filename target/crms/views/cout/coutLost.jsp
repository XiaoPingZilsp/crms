<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>客户流失分析</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../static/css/public.css" media="all" />
</head>
    <body class="childrenBody"align="right">
    <form class="layui-form" action="" id="searchLost">
        <blockquote class="layui-elem-quote">
            <div class="layui-form-item">
                <div class="layui-row">
                        <label class="layui-form-label">客户名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="customerName" class="layui-input customerName">
                        </div>
                        <label class="layui-form-label">客户经理</label>
                        <div class="layui-input-inline">
                            <input type="text" name="customerMgr" class="layui-input customerMgr">
                        </div>
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" lay-submit lay-filter="search"><i class="layui-icon layui-icon-search"></i>搜索</a>
                        </div>
                    </div>
            </div>
        </blockquote>

    <table id="coutLost" lay-filter="coutLost"></table>
    </form>

<script type="text/javascript" src="../../static/commons/layui/layui.js"></script>
<script type="text/javascript" src="../../static/js/cout/coutLost.js"></script>
</body>
</html>