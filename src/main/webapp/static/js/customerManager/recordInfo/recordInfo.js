layui.use(['form','layer','table','laydate'], function(){
    var form = layui.form,
  		layer = layui.layer,
        $ = layui.jquery,
        table = layui.table,
        laydate = layui.laydate;
        
        
    laydate.render({elem: '#contactTime',type:'datetime' });
    var cid=$(".customerId").val();



    //交往记录列表
    var tableIns = table.render({
        elem: '#recordList',
        url : '/record-info/list/'+cid,
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limits : [10,15,20,25],    
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[
            {field: 'id', title: 'ID',width:60,align:"center"},
            {field: 'customerId', title: '客户编号',width:100, align:"center"},
            {field: 'place', title: '地点',width:150,align:"center"},
            {field: 'outline', title: '概要',width:200,align:'center'},
            {field: 'detailedInfo', title: '详情',  align:'center'},                  
            {field: 'contactTime', title: '时间',width:200, align:'center'},
            {field: 'remarks', title: '备注',width:100,align:'center'},
            {title: '操作', templet:'#recordBtnBar',fixed:"right",width:150,align:"center"}
        ]]
            
    });
    
    
     //返回
    $(".backRecord_btn").on("click",function(){
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();//刷新父窗口
        
        
    });
       
      //增添或修改交往记录方法
    function addRecord(edit){
        var index = layui.layer.open({
            title : "增添/修改交往记录",
            type : 2,
            content : "views/customer/record_save_edit.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                body.find(".customerId").val(cid);
                if(edit){
                    body.find(".Id").val(edit.id);
                    body.find(".customerId").val(edit.customerId);
                    body.find(".place").val(edit.place);
                    body.find(".outline").val(edit.outline);
                    body.find(".remarks").val(edit.remarks);
                    body.find(".detailedInfo").val(edit.detailedInfo);
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
    $(".saveRecord_btn").click(function(){
        addRecord();
    })

   //添加上传数据
    form.on('submit(saveRecord)', function(data){
       /* console.log(data.field);*/
        console.log(data.field);
     $.post('/record-info/save-edit',data.field ,function(info){
         console.log("----------",info);
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
    table.on('tool(recordList)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        if(layEvent === 'edit'){ //编辑
            addRecord(data);
        } else if(layEvent === 'del'){ //删除
            layer.confirm('确定删除此数据？',{icon:3, title:'提示信息'},function(index){
                $.post('record-info/del/'+obj.data.id,function(data){
                    tableIns.reload();
                    layer.msg(data.msg);
                    layer.close(index);
                });
            });

        } 
    });
    
    
    
    
    
    
  
  
  
  
});



