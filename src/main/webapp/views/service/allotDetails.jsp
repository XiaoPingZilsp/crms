<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/28
  Time: 11:31
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
    <title>服务处理</title>
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
            <div class="layui-input-inline" style="display: none">
                <input type="text" name="serviceId" class="layui-input id" type="hidden">
                <input type="text" name="creationId" class="layui-input creationId" type="hidden">
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
            <div class="layui-inline">
                <label class="layui-form-label">分配给</label>
                <div class="layui-input-inline">
                    <select name="handleId" lay-filter="handleName" id="handleName" lay-verify="required">
                        <option value="">选择分配对象</option>
                    </select>
                </div>
                <a class="layui-btn" lay-submit lay-filter="allot">分配</a>
            </div>
        </div>


    </form>
</blockquote>
</body>

<script type="text/javascript" src="static/commons/layui/layui.js"></script>
<script type="text/javascript" src="static/js/ServiceManagement/serviceAllot.js"></script>
<script type="text/javascript">
    layui.use(['laydate','layer','table','jquery','form'], function(){
        var laydate = layui.laydate,
            layer = layui.layer,
            table = layui.table,
            $ = layui.jquery,
            form = layui.form
        $.ajax({
            type:'post',
            url:'service-user-allot/serviceHandle',
            dataType:'json',
            success:function (data1) {
                for(let i=0;i<data1.length;i++){
                    $("#handleName").append("<option value="+data1[i].id+">"+data1[i].name+"</option>");
                    layui.form.render('select');
                    console.log(data1[i].name);
                }
                layui.form.render('select');

            }
        });
    });
</script>
</body>
</html>
