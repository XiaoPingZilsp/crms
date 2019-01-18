<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/11/22
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <title>默认页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../static/css/public.css" media="all" />
</head>
<body class="childrenBody">
<blockquote class="layui-elem-quote layui-bg-green">
    欢迎您！${Name}<span id="nowTime"></span>
</blockquote>
<blockquote class="layui-elem-quote title">最新 <i class="layui-icon layui-red">&#xe756;</i></blockquote>
<table class="layui-table mag0" lay-skin="line">
    <colgroup>
        <col align="left">
    </colgroup>
    <tbody>
    <tr>
        <td>有<b>${fn:length(planlist)}</b>个开发计划待开发</td>
    </tr>
    <tr>
        <td>有<b>${fn:length(losslist)}</b>个流失顾客待处理</td>
    </tr>
    <tr>
        <td>有<b>${fn:length(dealListlist)}</b>个服务待处理</td>
    </tr>
    <tr>
        <td>有<b>${fn:length(feedBacklist)}</b>个服务待反馈</td>
    </tr>

    </tbody>
</table>
<script type="text/javascript" src="../static/commons/layui/layui.js"></script>
<script type="text/javascript" src="../static/js/main.js"></script>
</body>
</html>