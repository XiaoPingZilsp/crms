layui.use(['form','layer','layedit','laydate','upload','table','jquery'],function() {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        laypage = layui.laypage,
        upload = layui.upload,
        layedit = layui.layedit,
        laydate = layui.laydate,
        $ = layui.jquery,
        table = layui.table,
        layBody = layui.body;



    laydate.render({
        elem: '#creatTime',
        type: 'datetime',
        trigger: "click",
        done: function (value, date, endDate) {
            submitTime = value;
        }
    });


    var tabInstance = table.render({
        elem: '#salesList',
        url: 'draw-plan/list', //数据接口
        id: 'list',
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        initSort: {field:'id', type:'desc'},
        page: true, //开启分页
        cols: [[ //表头
            {field: 'id', title: '编号', sort: true, align: "center"},
            {field: 'name', title: '客户名称', align: "center"},
            {field: 'outline', title: '概要', align: "center"},
            {field: 'contacts', title: '联系人', align: "center"},
            {field: 'contactsTel', title: '联系人电话', align: "center"},
            {field: 'creationTime', title: '创建时间', align: "center"},
            {field: 'status', title: '状态',  align: "center"},
            {title: '操作', toolbar: "#planTool", align: "center"}
        ]]
    });

    form.on('submit(search)', function (data) {
        tabInstance.reload({
            where: data.field
        });
    });

    var  cid;
    //查看制定并编辑计划
    function drawPlan(edit) {
        var index = layui.layer.open({
            title: "查看制定计划",
            type: 2,
            content: "/draw-plan/selectItem/draw/"+edit.id,
            success: function (layero, index) {
                cid=edit.id;
                console.log(cid);
                var body = layui.layer.getChildFrame('body', index);
                if (edit) {
                    body.find(".id").val(edit.id);
                    body.find(".opportunitySource").val(edit.opportunitySource);
                    body.find(".name").val(edit.name);
                    body.find(".successProbability").val(edit.successProbability);
                    body.find(".outline").val(edit.outline);
                    body.find(".contacts").val(edit.contacts);
                    body.find(".contactsTel").val(edit.contactsTel);
                    body.find(".opportunityDesc").val(edit.opportunityDesc);
                    body.find(".foundName").val(edit.foundName);
                    body.find(".creationTime").val(edit.creationTime);
                    body.find(".assignName").val(edit.assignName);
                    body.find(".assignTime").val(edit.assignTime);
                    body.find(".planID").val(edit.id);
                    form.render();
                }
                setTimeout(function () {
                    layui.layer.tips('点击此处返回文章列表', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                }, 1000)
            }
        })
        layui.layer.full(index);
        //改变窗口大小时，重置弹窗的宽高，防止超出可视区域（如F12调出debug的操作）
        $(window).on("resize", function () {
            layui.layer.full(index);
        })
    }


    //查看计划（状态为开发失败或者成功）
    function readPlan(edit) {
        var index = layui.layer.open({
            title: "查看开发计划",
            type: 2,
            content: "/draw-plan/selectItem/read/"+edit.id,
            success: function (layero, index) {
                cid=edit.id;
                console.log(cid);
                var body = layui.layer.getChildFrame('body', index);
                if (edit) {
                    body.find(".id").val(edit.id);
                    body.find(".opportunitySource").val(edit.opportunitySource);
                    body.find(".name").val(edit.name);
                    body.find(".successProbability").val(edit.successProbability);
                    body.find(".outline").val(edit.outline);
                    body.find(".contacts").val(edit.contacts);
                    body.find(".contactsTel").val(edit.contactsTel);
                    body.find(".opportunityDesc").val(edit.opportunityDesc);
                    body.find(".foundName").val(edit.foundName);
                    body.find(".creationTime").val(edit.creationTime);
                    body.find(".assignName").val(edit.assignName);
                    body.find(".assignTime").val(edit.assignTime);
                    body.find(".planID").val(edit.id);
                    form.render();
                }
                setTimeout(function () {
                    layui.layer.tips('点击此处返回文章列表', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                }, 1000)
            }
        })
        layui.layer.full(index);
        //改变窗口大小时，重置弹窗的宽高，防止超出可视区域（如F12调出debug的操作）
        $(window).on("resize", function () {
            layui.layer.full(index);
        })
    }


    //监听工具条
    table.on('tool(salesList)', function (obj) {
        var layEvent = obj.event,
            data = obj.data;
        console.log(data);
        if(data.status=="已指派") {
            if (layEvent === 'drawPlan') {
                drawPlan(data);
            }
        }else {
            readPlan(data);
        }
        });


    //添加计划项
    form.on('submit(save_btn)', function (data) {
        console.log(data);
        var param=data.field;//定义临时变量获取表单提交过来的数据，非json格式
        console.log(param);
        $.ajax({
            url:"/draw-plan/save-plan",
            type:'post',//method请求方式，get或者post
            dataType:'json',//预期服务器返回的数据类型
            data:JSON.stringify(param),//表格数据序列化
            contentType: "application/json; charset=utf-8",
            success:function(info){
                layer.msg(info.msg);
            }
        });
        setTimeout(function () {
            location.reload();//刷新
        },500)
        return false;
    });

    //提交计划项（在开发计划中）
    form.on('submit(saveitem)', function (data) {
        var id=$(this).parents("tr").find(".itemid").val();
        var planItem=$(this).parents("tr").find(".planItem").val();
        $.post('/draw-plan/saveitem_plan/draw/'+id+'/'+planItem,function(data){
            layer.msg(data.msg);
        });
        setTimeout(function () {
            location.reload();//刷新
        },500)
        return false;
    });

    //提交计划项（在执行计划中）
    form.on('submit(saveitem2)', function (data) {
        var id=$(this).parents("tr").find(".itemid").val();
        var result=$(this).parents("tr").find(".result").val();
        $.post('/draw-plan/saveitem_plan/execute/'+id+"/"+result,function(data){
            layer.msg(data.msg);
        });
        setTimeout(function () {
            location.reload();//刷新
        },500)
        return false;
    });

    //删除计划项
    form.on('submit(deleteitem)', function (data) {
        var id=$(this).parents("tr").find(".itemid").val();
        $.post('draw-plan/del-plan/'+id,function(data){
            layer.msg(data.msg);
        });
        setTimeout(function () {
            location.reload();//刷新
        },500)
        return false;

    });

    //开发计划
    form.on('submit(execute_btn)', function (edit) {
        edit=edit.field;
        console.log(edit);
        var index = layui.layer.open({
            title: "查看执行计划",
            type: 2,
            content: "/draw-plan/selectItem/execute/" + edit.id,
            success: function (layero, index) {
                cid = edit.id;
                console.log(cid);
                var body = layui.layer.getChildFrame('body', index);
                if (edit) {
                    body.find(".id").val(edit.id);
                    body.find(".opportunitySource").val(edit.opportunitySource);
                    body.find(".name").val(edit.name);
                    body.find(".successProbability").val(edit.successProbability);
                    body.find(".outline").val(edit.outline);
                    body.find(".contacts").val(edit.contacts);
                    body.find(".contactsTel").val(edit.contactsTel);
                    body.find(".opportunityDesc").val(edit.opportunityDesc);
                    body.find(".foundName").val(edit.foundName);
                    body.find(".creationTime").val(edit.creationTime);
                    body.find(".assignName").val(edit.assignName);
                    body.find(".assignTime").val(edit.assignTime);
                    body.find(".planID").val(edit.id);
                    form.render();
                }
                setTimeout(function () {
                    layui.layer.tips('点击此处返回文章列表', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                }, 1000)
            }
        })
        layui.layer.full(index);
        //改变窗口大小时，重置弹窗的宽高，防止超出可视区域（如F12调出debug的操作）
        $(window).on("resize", function () {
            layui.layer.full(index);
        })

    })

    //终止开发
    form.on('submit(endplan)', function (data) {
        layer.confirm('确定终止开发此计划吗？', {icon: 3, title: '提示信息'}, function (index) {
            $.post('sales-opportunity/editplan/endplan/'+data.field.id,function(data){
                layer.msg("项目开发失败");
                layer.close(index);
                var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                parent.parent.layer.close(index); //再执行关闭
                parent.parent.location.reload();
            });
        });

    });

    //开发成功
    form.on('submit(finishplan)', function (data) {
        layer.confirm('此计划已开发成功？', {icon: 3, title: '提示信息'}, function (index) {
            $.post('sales-opportunity/editplan/finishplan/'+data.field.id,function(data){
                layer.msg("项目开发成功");
                var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                parent.parent.layer.close(index); //再执行关闭
                parent.parent.location.reload();
            });
        });


    });

    //在执行计划中打开制定计划
    form.on('submit(drawplan)', function (data) {
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();
    });

    //在执行计划中打开客户开发计划
    form.on('submit(planlist)', function (data) {
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.parent.layer.close(index); //再执行关闭
        parent.parent.location.reload();
    });
});