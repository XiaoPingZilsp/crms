layui.use(['form','laydate','table'], function(){
  var form = layui.form,
      $ = layui.jquery,
      table=layui.table;

 var tableIns =table.render({
     elem: '#liushiTable',
     url: '/customer-loss/list', //数据接口
     page: true, //开启分页
     limit:2, //每页显示的条数，默认10
     limits:[2,5,10,15,], //每页显示条数选择框数据
     request:{
         pageName: 'current',
         limitName: 'size'
     },
     cols: [[ //表头
         {field: 'id', title: '编号',  align:"center", sort: true, fixed: 'left'},
         {field: 'customerName',  align:"center", title: '客户'},
         {field: 'customerMgr',  align:"center", title: '客户经理'},
         {field: 'lastOrderTime',  align:"center", title: '上次下单时间'},
         {field: 'lossTime', align:"center", title: '确认流失时间'},

         {field: 'statuss',   align:"center",title: '状态',templet:function(customerLoss){
                 return customerLoss.statuss === 0 ?"暂缓流失":"确认流失";
             }},
         {field: 'pauseWay',  align:"center", title: '暂缓措施',hide:true},
         {title: '操作', templet:'#lossBar'}
     ]]
    });

//查询
    form.on('submit(search)', function(data){

        tableIns.reload({
            where :data.field
        });
        return false;
    });

    //确认流失数据传递
    function confirmLiushi(data){
        var index = layui.layer.open({
            title : "确认流失",
            type : 2,
            content : "views/customer/confirmLiushi.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);

                body.find(".id").val(data.id);
                body.find(".customerName").val(data.customerName);
                body.find(".customerMgr").val(data.customerMgr);
                body.find(".lastOrderTime").val(data.lastOrderTime);
                body.find(".pauseWay").val(data.pauseWay);
                body.find(".lossReason").val(data.lossReason);
                form.render();

                setTimeout(function(){
                    layui.layer.tips('点击此处返回', '.layui-layer-setwin .layui-layer-close', {
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


    //确认流失数据传递
    function zanhuanliushi(data){
        var index = layui.layer.open({
            title : "暂缓流失",
            type : 2,
            content : "views/customer/zanhuanLost.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);

                body.find(".id").val(data.id);
                body.find(".customerName").val(data.customerName);
                body.find(".customerMgr").val(data.customerMgr);
                body.find(".lastOrderTime").val(data.lastOrderTime);
                body.find(".pauseWay").val(data.pauseWay);
                body.find(".addPauseWay").val(data.addPauseWay);
                form.render();

                setTimeout(function(){
                    layui.layer.tips('点击此处返回', '.layui-layer-setwin .layui-layer-close', {
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








    //操作
    table.on('tool(liushiTable)', function(obj){

        var layEvent = obj.event,
            data = obj.data;
        console.log(data);
        if (data.statuss==1&&layEvent === 'zanhuan'){
            layer.msg("已确认流失，不可修改暂缓流失");
        }
        else if(layEvent === 'zanhuan'&&data.statuss==0){  //暂缓流失
            zanhuanliushi(data);
        }else if(layEvent === 'sure'){  //确认流失
            confirmLiushi(data);
        }

    });

    //上传确认流失数据
    form.on('submit(updateconfirm)', function(data){
        console.log(data.field );

        $.post('customer-loss/updatecomfirmliushi',data.field ,function(info){
            layer.msg(info.msg);
        });
        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });

    //上传暂缓流失数据
    form.on('submit(updatezanhuan)', function(data){
        console.log(data.field );

        $.post('customer-loss/updatezanhuanliushi',data.field ,function(info){

            layer.msg(info.msg);
        });
        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });


    //返回
    $(".backOrder_btn").on("click",function(){
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();//刷新父窗口


    });



});


