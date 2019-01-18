layui.use(['layer','table','jquery','form'],function(){
        let layer = layui.layer,
            table = layui.table,
            $ = layui.jquery,
            form = layui.form;

    loadType();

    //客户构成分析列表
    var tableIns = table.render({
        elem: '#coutConstitute',
        url : '/customer-info/constituteList',
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limits : [10,15,20,25],
        request:{
            pageName: 'current',
            limitName: 'size'
        },
        cols : [[
            {field: 'id', title: '编号',  align:"center"},
            {field: 'grade', title: '等级', align:"center", sort: true},
            {field: 'num', title: '客户数量',  align:'center', sort: true}
        ]]
    });

    function loadType() {
        $.post('/customer-info/selectlist/1011',function(data){
            data = data.data;
            console.log(data);
            for(let i=0;i<data.length;i++) {
                $("#statuss").append("<option value="+data[i].nameValue+">"+data[i].name+"</option>");
                layui.form.render('select');
            }
            form.render('select');
        });

    }



    form.on('select(statuss)', function(data){
        console.log(data.value); //得到被选中的值
        if(data.value=="101101"){
                tableIns.reload({
                    initSort: {field:'grade', type:'asc'}
                });
                return false;
        }else if(data.value=="101102"){
            tableIns.reload({
                initSort: {field:'num', type:'desc'}
            });
            return false;
        }
    });




})