layui.use(['laydate','layer','table','jquery','form'], function(){
    var laydate = layui.laydate,
        layer = layui.layer,
        table = layui.table,
        $ = layui.jquery,
        form = layui.form
laydate.render({
        elem: '#test7',
        range: true
    });
    var tableIns = table.render({
        elem: '#feedBack',
        url : 'service-user-allot/list3',
        page : true,
        limits : [10,15,20,25],
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[
        {field: 'serviceNo', title: '编号', width:60, align:"center"},
        {field: 'customerName', title: '客户', align:"center"},
        {field: 'outline', title: '概要',  align:'center'},
        {field: 'serviceType', title: '服务类型', align:'center'},
        {field: 'creationName', title: '创建人',  align:'center'},
        {field: 'creationTime', title: '创建时间',  align:'center'},
        {field: 'name', title: '分配给',  align:'center'},
        {field: 'cllotTime', title: '分配时间',  align:'center'},
        {field: 'serviceHandle', title: '服务处理',  align:'center'},
        {field: 'statuss', title: '服务状态', align:'center'},
        {title: '操作', templet:'#feedBar',fixed:"right",align:"center"}
    ]]
    });
    table.on('tool(feedBack)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        console.log(data);
        if(layEvent === 'feed_edit'){ //编辑
            feedbackService(data);
        } else if(layEvent === '') { //删除

        }
    });
    function feedbackService(data){
        var index = layui.layer.open({
            title : "服务反馈",
            type : 2,
            content : "views/service/feedbackAction.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                console.log(body);
                body.find(".serviceNo").val(data.serviceNo);
                body.find(".id").val(data.id);
                body.find(".serviceType").val(data.serviceType);
                body.find(".outline").val(data.outline);
                body.find(".customerName").val(data.customerName);
                body.find(".statuss").val(data.statuss);
                body.find(".serviceReq").val(data.serviceReq);
                body.find(".creationName").val(data.creationName);
                body.find(".creationTime").val(data.creationTime);
                body.find(".name").val(data.name);
                body.find(".cllotTime").val(data.cllotTime);
                body.find(".serviceHandle").val(data.serviceHandle);
                body.find(".handleResult").val(data.handleResult);
                body.find(".satisfaction option:selected").text(data.satisfaction);
                form.render();

                setTimeout(function(){
                    layui.layer.tips('点击此处返回文章列表', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                },1000)
            }
        })
        layui.layer.full(index);
        //改变窗口大小时，重置弹窗的宽高，防止超出可视区域（如F12调出debug的操作）
        $(window).on("resize",function(){
            layui.layer.full(index);
        })
    }

    form.on('submit(addResult)', function(data){
        form.on('select(satisfaction)',function (data1) {
            satisfaction = data1.value;
            satisfactionName = data1.elem[data1.elem.selectedIndex].text;
            form.render('select');
        });
        var param=data.field;//定义临时变量获取表单提交过来的数据，非json格式
        console.log(param);
        $.ajax({
            url:"/service-user-allot/addResult",
            type:'post',//method请求方式，get或者post
            dataType:'json',//预期服务器返回的数据类型
            data:JSON.stringify(param),//表格数据序列化
            contentType: "application/json; charset=utf-8",
            success:function(info){
                layer.msg(info.msg);
            }
        });
        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });

});