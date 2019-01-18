layui.use(['form','layer','table','laydate'], function(){
    var form = layui.form,
  		layer = layui.layer,
        $ = layui.jquery,
        table = layui.table,
        laydate = layui.laydate;
        
        
        laydate.render({elem: '#contactTime' });
        var cid=$(".customerId").val();
 
    //历史订单列表
    var tableIns = table.render({
        elem: '#orderHistory',
        url : '/order-history/list/'+cid,
        cellMinWidth : 95,
        page : true,

        limits : [10,15,20,25],    
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[         
        	{field: 'customerId', title: '客户编号',align:'center'}, 
            {field: 'orderId', title: '订单编号', width:250,align:"center"},
            {field: 'orderTime', title: '日期',align:'center'},
            {field: 'deliverGoods', title: '送货地址',  align:'center'},                  
            {field: 'status', title: '状态', align:'center'},
            {title: '操作', templet:'#orderBar',fixed:"right",align:"center"}
        ]]
            
    });
    
    
    
    
     //返回
    $(".backOrder_btn").on("click",function(){
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();//刷新父窗口
        
        
    });


   // var orderId;
      //传递查询的历史订单信息
    function orderDetail(edit){
        var index = layui.layer.open({
            title : "查看详情",
            type : 2,
            content : "views/customer/orderInfo.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
               /* orderId=edit.orderId;*/

                if(edit){
                    body.find(".orderId").val(edit.orderId);
                    body.find(".orderTime").val(edit.orderTime);
                    body.find(".deliverGoods").val(edit.deliverGoods);
                    body.find(".money").val(edit.money);
                    body.find(".status").val(edit.status);	                
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


    //详情操作
    table.on('tool(orderHistory)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        if(layEvent === 'detail'){ //详情
            orderDetail(data);
        }  
    });
    
    
   /*—————————————————————————————————————————orderinfo.js——————————————————————————————————————————————*/
    
     //订单明细列表
var orderId=$(".orderId").val();
    var infotable = table.render({
        elem: '#orderInfo',
        url : '/order-info/list/'+orderId,
        cellMinWidth : 95,
        page : true,

        limits : [10,15,20,25],    
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[         
        	{field: 'productName', title: '商品',align:'center'}, 
            {field: 'num', title: '数量', width:250,align:"center"},
            {field: 'units', title: '单位',align:'center'},
            {field: 'price', title: '单价（元）',  align:'center'},
            {field: 'money', title: '金额（元）', align:'center'}
        ]]
            
    });
    
  
  
  
});



