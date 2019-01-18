<%--User: admin--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>指派销售机会</title>
    <link rel="stylesheet" href="../static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../static/css/index.css" media="all" />
</head>
<body class="childrenBody">
<blockquote class="layui-elem-quote">
    <form class="layui-form">
        <div class="layui-input-item" align="right">
            <a class="layui-btn" lay-submit lay-filter="update_btn">保存</a>
        </div>
        <div class="layui-input-inline" style="width:80%">
            <div class="layui-row">
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">编号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="id" required  lay-verify="required" autocomplete="off" readonly class="layui-input id">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">机会来源</label>
                        <div class="layui-input-inline">
                            <input type="text" name="opportunitySource" required  lay-verify="required" autocomplete="off" readonly class="layui-input opportunitySource">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">客户名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="name" required  lay-verify="required" autocomplete="off" readonly class="layui-input name">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">成功几率</label>
                        <div class="layui-input-inline">
                            <input type="text" name="successProbability" required  lay-verify="required" autocomplete="off" readonly class="layui-input successProbability">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12">
                    <div class="layui-form-item">
                        <label class="layui-form-label">概要</label>
                        <div class="layui-input-block">
                            <input type="text" name="outline" required  lay-verify="required" autocomplete="off" readonly class="layui-input outline" style="width:1047px">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系人</label>
                        <div class="layui-input-inline">
                            <input type="text" name="contacts" required  lay-verify="required" autocomplete="off" readonly class="layui-input contacts">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系人电话</label>
                        <div class="layui-input-inline">
                            <input type="text" name="contactsTel" required  lay-verify="required" autocomplete="off" readonly class="layui-input contactsTel">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">机会描述</label>
                        <div class="layui-input-block">
                            <textarea name="opportunityDesc" required  lay-verify="required" autocomplete="off" readonly class="layui-textarea opportunityDesc" style="width:1047px"></textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm12">
                    <div class="layui-form-item">
                        <label class="layui-form-label">创建人</label>
                        <div class="layui-input-inline">
                            <input type="text" name="foundName" required  lay-verify="required" autocomplete="off" readonly class="layui-input foundName">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">指派给</label>
                        <div class="layui-input-block">
                            <select name="assignName" lay-verify="required"id="assignName" lay-filter="assignName" class="assignName">
                                <option value="-1">请选择</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">指派时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="assignTime" id="assignTime" required  lay-verify="required" autocomplete="off" class="layui-input assignTime">
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
