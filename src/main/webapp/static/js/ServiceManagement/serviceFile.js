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
        elem: '#serviceFile',
        url : 'service-user-allot/list2',
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
            {title: '操作', templet:'#fileBar',fixed:"right",align:"center"}
        ]]

    });

    //列表操作
    table.on('tool(serviceFile)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        console.log(data);
        if(layEvent === 'edit'){ //编辑
            serviceFile(data);
        } else if(layEvent === 'del') { //删除
            layer.confirm('确定删除此数据？', {icon: 3, title: '提示信息'}, function (index) {
                $.post('service-management/del/' + obj.data.id, function (data) {
                    tableIns.reload();
                    layer.msg(data.msg);
                    layer.close(index);
                });
            });
        }

    });

    function serviceFile(data){
        var index = layui.layer.open({
            title : "服务处理",
            type : 2,
            content : "views/service/fileDetails.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
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
                body.find(".satisfaction").val(data.satisfaction);
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

    //搜索监听启用
    form.on('submit(search)',function(data){
        console.log(data.field);
        tableIns.reload({
            where :data.field
        });
        return false;
    })
});
