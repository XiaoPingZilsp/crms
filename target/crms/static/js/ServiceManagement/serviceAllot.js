layui.use(['laydate','layer','table','jquery','form'], function(){
    var laydate = layui.laydate,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        table = layui.table,
        $ = layui.jquery,
        form = layui.form;

    laydate.render({
        elem: '#creationTime' //指定元素
    });
    laydate.render({
        elem: '#test6',
        range: true
    });
    var tableIns = table.render({
        elem: '#service',
        url : '/service-management/list',
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
            {field: 'creationTime', title: '创建时间', width:200, align:'center'},
            {field: 'statuss', title: '服务状态', align:'center'},
            {title: '操作',templet:'#serviceBar',fixed:"right",align:"center"}
        ]]
    });

    form.on('submit(allot)', function(data){
        console.log(data);
        form.on('select(handleName)',function (data1) {
            handleId = data1.value;
            HandleName = data1.elem[data1.elem.selectedIndex].text;
            console.log(HandleName);
            form.render('select');
        });
        $.post('/service-user-allot/ServiceAllot',data.field ,function(info){
            layer.msg(info.msg);
        });
        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });
//列表操作
    table.on('tool(service)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        console.log(data);
        if(layEvent === 'allot'){ //编辑
            allotDeal(data);
        }
        if(layEvent === 'edit'){ //编辑
            allotEdit(data);
        }else if(layEvent === 'del') { //删除
            layer.confirm('确定删除此数据？',{icon:3, title:'提示信息'},function(index){
                $.post('service-management/del/'+obj.data.id,function(data){
                    tableIns.reload();
                    layer.msg(data.msg);
                    layer.close(index);
                });
            });

        }
    });


    function allotDeal(data){
        var index = layui.layer.open({
            title : "服务处理",
            type : 2,
            content : "views/service/allotDetails.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                body.find(".serviceNo").val(data.serviceNo);
                body.find(".id").val(data.id);
                body.find(".creationId").val(data.creationId);
                body.find(".serviceType").val(data.serviceType);
                body.find(".outline").val(data.outline);
                body.find(".customerName").val(data.customerName);
                body.find(".statuss").val(data.statuss);
                body.find(".serviceReq").val(data.serviceReq);
                body.find(".creationName").val(data.creationName);
                body.find(".creationTime").val(data.creationTime);
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

    function allotEdit(data){
        var index = layui.layer.open({
            title : "服务处理",
            type : 2,
            content : "views/service/editservice.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                body.find(".id").val(data.id);
                body.find(".serviceNo").val(data.serviceNo);
                body.find(".id").val(data.id);
                body.find(".creationId").val(data.creationId);
                body.find(".serviceType option:selected").text(data.serviceType);
                body.find(".serviceType").val(data.serviceType);
                body.find(".outline").val(data.outline);
                body.find(".customerName option:selected").text(data.customerName);
                body.find(".customerName").val(data.customerName);
                body.find(".statuss").val(data.statuss);
                body.find(".serviceReq").val(data.serviceReq);
                body.find(".creationName").val(data.creationName);
                body.find(".creationTime").val(data.creationTime);
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

});
