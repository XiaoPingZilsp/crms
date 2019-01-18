layui.use(['form','layer','laydate','table','laytpl'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        laydate = layui.laydate,
        laytpl = layui.laytpl,
        table = layui.table;
    loadType();

    //新闻列表
    var tableIns = table.render({
        elem: '#coutContribution',
        url : '/customer-info/coutContribution',
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limit : 20,
        limits : [10,15,20,25],
        id : "newsListTable",
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[
            {field: 'id', title: '编号', width:150, align:"center", sort: true},
            {field: 'customerName', title: '客户名称',align:"center"},
            {field: 'totalMoney', title: '订单金额', align:'center', sort: true}
        ]]
    });

    //加载年份下拉框
    function loadType() {
        $.post('/customer-info/selectlist/1012', function (data) {
            data = data.data;
            console.log(data);
            for (let i = 0; i < data.length; i++) {
                $("#year").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
                layui.form.render('select');
            }
            form.render('select');
        });
    }

        //搜索监听启用
        form.on('submit(search)', function (data) {
            console.log(data.field);
            console.log(data.field)
            tableIns.reload({
                where: data.field
            });
            return false;
        })


        form.on('select(year)', function(data) {
            console.log(data.value); //得到被选中的值
            console.log(data);

            tableIns.reload({
                where: {
                    year: data.value
                }
            });
        })


})