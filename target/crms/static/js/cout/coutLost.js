layui.use(['form','layer','laydate','table','laytpl'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        laydate = layui.laydate,
        laytpl = layui.laytpl,
        table = layui.table;

    //新闻列表
    var tableIns = table.render({
        elem: '#coutLost',
        url : '/customer-loss/coutLost',
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limit : 20,
        limits : [10,15,20,25],
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols :[[
            {field: 'id', title: '编号', width:150, align:"center"},
            {field: 'lossTime', title: '流失时间', align:'center'},
            {field: 'customerName', title: '客户',align:"center"},
            {field: 'customerMgr', title: '客户经理', align:'center'},
            {field: 'lossReason', title: '流失原因', align:'center'}
        ]]
    });


    //搜索监听启用
    form.on('submit(search)',function(data){
        console.log(data.field);
            tableIns.reload({
                where :data.field
            });
            return false;
    })


  


})