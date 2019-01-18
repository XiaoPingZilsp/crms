layui.use(['layer','table','jquery','form'],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        table = layui.table,
        $ = layui.jquery,
        form = layui.form;


    //数据字典列表
    var tableIns = table.render({
        elem: '#dataDictionary',
        url : '/basic-data/list',
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limits : [10,15,20,25],
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[
           
            {field: 'id', title: 'ID', width:60, align:"center"},
            {field: 'name', title: '条目', align:"center"},
            {field: 'nameValue', title: '条目值',  align:'center'},
            {field: 'parentName', title: '类别', align:'center'},
            {field: 'parentValue', title: '类别值',  align:'center'},
            {field: 'creationTime', title: '发布时间',  align:'center'},
            {title: '操作', templet:'#dataDictionaryBar',fixed:"right",align:"center"}
        ]]
    });

    //搜索监听启用
    form.on('submit(search)',function(data){
        tableIns.reload({
            where :data.field
        });
        return false;
    })

   //增添、 编辑数据字典方法
    function addNews(edit){
        var index = layui.layer.open({
            title : "增添/修改数据字典",
            type : 2,
            content : "views/basicData/dataAdd.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                if(edit){
                    body.find(".id").val(edit.id);
                    body.find(".name").val(edit.name);
                    body.find(".nameValue").val(edit.nameValue);
                    body.find(".parentName").val(edit.parentName);
                    body.find(".parentValue").val(edit.parentValue);
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
    $(".addData_btn").click(function(){
        addNews();
    })

   //添加上传数据
    form.on('submit(insert_edit)', function(data){
     $.post('basic-data/save-edit',data.field ,function(info){
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
    table.on('tool(dataDictionary)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        if(layEvent === 'edit'){ //编辑
            addNews(data);
        } else if(layEvent === 'del'){ //删除
            layer.confirm('确定删除此数据？',{icon:3, title:'提示信息'},function(index){
                $.post('basic-data/del/'+obj.data.id,function(data){
                    tableIns.reload();
                    layer.msg(data.msg);
                    layer.close(index);
                });
            });

        } 
    });

})