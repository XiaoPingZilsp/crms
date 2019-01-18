<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
		<meta charset="UTF-8">
		<title>暂缓流失</title>
        <link rel="stylesheet" href="static/commons/layui/css/layui.css" media="all" />
        <link rel="stylesheet" href="static/css/public.css" media="all" />
	</head>
		<body class="childrenBody">
			<blockquote class="layui-elem-quote">
                <form class="layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">编号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="id" class="layui-input id" readonly>
                        </div>

                        <div class="layui-inline">
                            <label class="layui-form-label">客户</label>
                            <div class="layui-input-inline">
                                <input type="text" name="customerName" class="layui-input customerName" readonly>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">客户经理</label>
                        <div class="layui-input-inline">
                            <input type="text" name="customerMgr" class="layui-input customerMgr" readonly>
                        </div>

                        <label class="layui-form-label">上次下单时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="lastOrderTime" class="layui-input lastOrderTime" readonly>
                        </div>
                    </div>

                    <div class="layui-form-item">
                            <label class="layui-form-label">暂缓措施</label>
                            <div class="layui-input-block">
                                <input type="text" name="pauseWay" class="layui-input pauseWay"style="width: 600px;" readonly="readonly">
                            </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">追加暂缓措施</label>
                        <div class="layui-input-block">
                            <textarea name="addPauseWay" class="layui-textarea addPauseWay" style="width: 600px;"></textarea>
                        </div>
                    </div>

                    <div class="layui-input-block">
                            <a class="layui-btn layui-btn-normal backOrder_btn" ><i class="layui-icon layui-icon-return"></i>返回</a>
                            <a class="layui-btn" lay-submit lay-filter="updatezanhuan">保存</a>
                    </div>
                </form>
			</blockquote>

            <script type="text/javascript" src="static/commons/layui/layui.js"></script>
            <script type="text/javascript" src="static/js/customerManager/loss/coutLost.js"></script>
	</body>
</html>
