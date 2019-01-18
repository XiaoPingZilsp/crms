<%--User: admin--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>制定计划</title>
    <link rel="stylesheet" href="../static/commons/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../static/css/index.css" media="all" />
</head>
<body>
<blockquote class="layui-elem-quote">
    <form class="layui-form">
        <div class="layui-input-item" align="right">
            <a class="layui-btn"lay-submit lay-filter="planlist">返回客户开发计划</a>
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
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">创建人</label>
                        <div class="layui-input-inline">
                            <input type="text" name="foundName" required  lay-verify="required" autocomplete="off" readonly class="layui-input foundName">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">创建时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="creationTime" required  lay-verify="required" autocomplete="off" readonly class="layui-input creationTime">
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                <div class="layui-form-item">
                    <label class="layui-form-label">指派给</label>
                    <div class="layui-input-inline">
                        <input type="text" name="assignName" required  lay-verify="required" autocomplete="off" readonly class="layui-input assignName">
                    </div>
                </div>
            </div>
                <div class="layui-col-sm6">
                    <div class="layui-form-item">
                        <label class="layui-form-label">指派时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="assignTime" required  lay-verify="required" autocomplete="off" class="layui-input assignTime">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</blockquote>

<table class="layui-table">
    <thead>
    <tr id="parentTr">
        <th class="creationTime">日期</th>
        <th class="planItem" >计划</th>
        <th class="result" colspan="2">执行效果</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="plan">
            <tr><form  action="/draw-plan/saveitem_plan/execute" class="layui-form"  method="post">
                <input type="hidden" name="id"  value="${plan.id}">
                <td class="creationTime">${plan.creationTime}</td>
                <td class="planItem">${plan.planItem}</td>
                <td class="result">${plan.result}</td>
                </form>
            </tr>
        </c:forEach>
    </tbody>
</table>

<script type="text/javascript" src="../../static/commons/layui/layui.js"></script>
<script type="text/javascript" src="../../static/js/salesManagement/plan.js"></script>
</body>
</html>
