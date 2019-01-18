<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/27
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改/创建联系人</title>
    <link rel="stylesheet" href="/static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="/static/css/public.css" media="all" />
</head>
<body class="childrenBody">
<form class="layui-form magl200">
    <div class="layui-form-item " >
        <div class="layui-input-inline">
            <input type="hidden" name="id"  class="layui-input id" id="id" >
        </div>
        <div class="layui-input-inline">
            <input type="hidden" name="customerId"  class="layui-input customerId" id="customerId" >
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline">
            <input type="text" name="name"  required  lay-verify="required" id="name" placeholder="请输入姓名" autocomplete="off" class="layui-input name">
        </div>

        <label class="layui-form-label">性别</label>
        <div class="layui-input-inline " id="sex">
            <input type="radio" name="sex"  value="男" title="男" >
            <input type="radio" name="sex"  value="女" title="女" >
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">职位</label>
        <div class="layui-input-inline">
            <input type="text" name="job"  required  lay-verify="required" id="job" placeholder="请输入职位" autocomplete="off" class="layui-input job">
        </div>

        <label class="layui-form-label">办公电话</label>
        <div class="layui-input-inline">
            <input type="tel" name="phone"  required  lay-verify="required" id="phone" placeholder="请输入办公电话" autocomplete="off" class="layui-input phone">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">手机</label>
        <div class="layui-input-inline">
            <input type="tel" name="tel"  required lay-verify="phone" id="tel" placeholder="请输入手机联系电话" autocomplete="off" class="layui-input tel">
        </div>

        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="remark"  id="remark" placeholder="请输入备注" autocomplete="off" class="layui-input remark">
        </div>
    </div>

    <div class="layui-form-item magl150">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="saveContact">保存</button>
            <a class="layui-btn layui-btn-normal backContact_btn" ><i class="layui-icon layui-icon-return"></i>返回</a>
        </div>
    </div>
</form>

<script type="text/javascript" src="/static/commons/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/customerManager/customer/contactList.js"></script>
</body>
</html>
