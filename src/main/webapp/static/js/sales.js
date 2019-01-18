layui.use(['form','layer','layedit','laydate','upload','table','jquery'],function() {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        laypage = layui.laypage,
        upload = layui.upload,
        layedit = layui.layedit,
        laydate = layui.laydate,
        $ = layui.jquery,
        table = layui.table;

    var tabInstance=table.render({
        elem: '#salesList',
        url: 'sales-opportunity/findAll', //数据接口
        id: 'list',
        page: true, //开启分页
        cols: [[ //表头
            {field: 'id', title: '编号', width: 200, sort: true, fixed: 'left'},
            {field: 'name', title: '客户名称', width: 200},
            {field: 'outline', title: '概要', width: 200},
            {field: 'contacts', title: '联系人', width: 200},
            {field: 'contactsTel', title: '联系人电话', width: 200},
            {field: 'creationTime', title: '创建时间', width: 200},
            {title: '操作', width: 250, toolbar: "#oppTool"}
        ]]
    });

    //新建销售机会
    function addSales(edit){
        var index = layui.layer.open({
            title : "添加销售机会",
            type : 2,
            content : "views/sales/new.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                if(edit){
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
                    form.render();
                }
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

    //触发添加按钮
    $(".add_btn").click(function(){
        addSales();
    })

    //添加上传数据
    form.on('submit(save_btn)', function(data){
        console.log(data.field);
        $.post('sales-opportunity/add',data.field ,function(info){
            layer.msg(info.msg);
        });
        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });

//监听工具条
    table.on('tool(sales)', function (obj) {
        switch (obj.event) {
            case 'edit':
                add_edit(obj.data);
                break;
            case 'del':
                layer.confirm("你确定要删除【" + obj.data.name + "】吗？", {
                    icon: 3,
                    title: '提示',
                    skin: "layui-layer-molv",
                    anim: 4
                }, function (index) {

                });
                break;
        }
    });


    form.render('select', 'assignName'),

//时间选择器
        laydate.render({
            elem: '#creationTime',
            type: 'datetime',
            trigger: "click",
            done: function (value, date, endDate) {
                submitTime = value;
            }
        });
    laydate.render({
        elem: '#assignTime',
        type: 'datetime'
    });

    //查询
    form.on('submit(search)',function(data){
        tabInstance.reload({
            where:data.field
        });
    });

});

