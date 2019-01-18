layui.use(['form','layer','laydate','table','laytpl'],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        table = layui.table,
        $ = layui.jquery,
        form = layui.form;
    loadType();
    //客户服务分析列表
    var tableIns = table.render({
        elem: '#coutService',
        url : '/service-management/coutService',
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limits : [10,15,20,25],
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[
            {field: 'id', title: '编号',  align:"center", sort: true},
            {field: 'statuss', title: '条目', align:"center"},
            {field: 'num', title: '服务数量',  align:'center', sort: true}
        ]]
    });


    //加载年份下拉框
    function loadType() {
        $.post('/customer-info/selectlist/1012', function (data) {
            data = data.data;
            for (let i = 0; i < data.length; i++) {
                $("#statuss").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
            }
            form.render('select');
        });

    }

    //下拉框改变响应事件
    form.on('select(statuss)', function(data){
        console.log(data.value); //得到被选中的值
        console.log(data);

        tableIns.reload({
            where :{
                age:data.value
            }
        });

    });
  


})