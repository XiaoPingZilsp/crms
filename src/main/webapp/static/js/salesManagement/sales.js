layui.use(['form','layer','layedit','laydate','upload','table','jquery'],function() {
    var form = layui.form,
        layer = layui.layer,
        laypage = layui.laypage,
        upload = layui.upload,
        layedit = layui.layedit,
        laydate = layui.laydate,
        $ = layui.jquery,
        table = layui.table;
    loadType();

//时间选择器
        laydate.render({
            elem: '#assignTime',
            type: 'datetime',
            trigger: "click",
            done: function (value, date, endDate) {
                submitTime = value;
            }
        });

    //验证
    form.verify({
        successProbability:function(value){
            if(value>100){
                return '成功率不能超过100';
            }else if(value<0){
                return '成功率不能小于0';
            }else if(value==""){
                return '必填项不能为空';
            }
        }
    });

    var tabInstance = table.render({
        elem: '#salesList',
        url: 'sales-opportunity/findAll', //数据接口
        id: 'list',
        page: true, //开启分页
         limits : [10,15,20,25]
        ,request:{
        pageName: 'current',
            limitName: 'size'
        },
        initSort: {field:'id', type:'desc'},
        cols: [[ //表头
            {field: 'id', title: '编号', sort: true, align: "center"},
            {field: 'name', title: '客户名称', align: "center"},
            {field: 'outline', title: '概要', align: "center"},
            {field: 'contacts', title: '联系人', align: "center"},
            {field: 'contactsTel', title: '联系人电话', align: "center"},
            {field: 'creationTime', title: '创建时间', align: "center"},
            {field: 'status', title: '状态',  align: "center"},
            {title: '操作', toolbar: "#oppTool", align: "center"}
        ]]
    });

    //查询
    form.on('submit(search)', function (data) {
        tabInstance.reload({
            where: data.field
        });
    });

    //新建销售机会
    function addSales(edit) {
        var index = layui.layer.open({
            title: "添加、编辑销售机会",
            type: 2,
            content: "views/sales/new.jsp",
            success: function (layero, index) {
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

    //触发添加按钮
    $(".add_btn").click(function(){
        addSales();
    })

    //指派销售机会
    function assignSales(edit) {
        var index = layui.layer.open({
            title: "指派销售机会",
            type: 2,
            content: "views/sales/assignSales.jsp",
            success: function (layero, index) {
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
    //添加上传数据
    form.on('submit(save_btn)', function (data) {
        console.log( data.field);
        $.post('sales-opportunity/save-edit', data.field, function (info) {
            layer.msg(info.msg);
        });
        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            //TODO SSS
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });

    form.on('submit(update_btn)', function (data) {
        console.log( data.field.assignName);
        $.post('sales-opportunity/update-edit', data.field, function (info) {
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
    table.on('tool(salesList)', function (obj) {
        var layEvent = obj.event,
            data = obj.data;
        if(data.status=="未分配"){
        if (layEvent === 'edit') { //编辑
            addSales(data);
        } else if (layEvent === 'del') { //删除
            layer.confirm('确定删除此数据吗？', {icon: 3, title: '提示信息'}, function (index) {
                $.post('sales-opportunity/del/' + obj.data.id, function (data) {
                    tabInstance.reload();
                    layer.msg(data.msg);
                    layer.close(index);
                });
            });

        }
        else{//指派销售机会
            assignSales(data);
        }}else{
            layer.msg("执行此操作的状态必须为未分配");
        }
    });

    function loadType() {
     $.post('/customer-info/selectlist/1013',function(data){
         data = data.data;
         for(let i=0;i<data.length;i++) {
             $("#assignName").append("<option value="+data[i].name+">"+data[i].name+"</option>");
             layui.form.render('select');
         }
         form.render('select');
     });

 }


 //搜索监听启用
 form.on('submit(search)',function(data){
     console.log(data.field);
     tabInstance.reload({
         where :data.field,
     });
     return false;
 })

    //返回
    $(".back_btn").on("click",function(){
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();//刷新父窗口


    });

});



