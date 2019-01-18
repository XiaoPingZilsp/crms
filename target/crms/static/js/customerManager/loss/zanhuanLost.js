layui.use(['form'],['laydate','layer','table','jquery','form'], function(){
 var laydate = layui.laydate,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        table = layui.table,
        $ = layui.jquery,
        form = layui.form 
   function confirmLiushi(data){
        var index = layui.layer.open({
            title : "暂缓流失",
            type : 2,
            content : "views/customer/zanhuanLost.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);
                console.log(body);
                body.find(".id").val(data.id);
                body.find(".customerName").val(data.customerName);
                body.find(".customerMgr").val(data.customerMgr);
                body.find(".lastOderTime").val(data.lastOderTime);
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
   
   
   
});