<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>客户服务分析</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../static/css/public.css" media="all" />
</head>
<body>
<form class="layui-form" action="" id="">
    <body class="childrenBody" >
    <blockquote class="layui-elem-quote">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">年份</label>
                <div class="layui-input-inline">
                    <select name="statuss" lay-filter="statuss" id="statuss" >
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>
        </div>
    </blockquote>
    </body>
    <table id="coutService" lay-filter="coutService"></table>

</form>
<script type="text/javascript" src="../../static/commons/layui/layui.js"></script>
<script type="text/javascript" src="../../static/js/cout/coutService.js"></script>
</body>
</html>
