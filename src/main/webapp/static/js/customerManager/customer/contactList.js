layui.use(['form','layer','layedit','laydate','upload','table','laypage'],function(){
    var form = layui.form,
    layer = parent.layer === undefined ? layui.layer : top.layer,
        laypage = layui.laypage,
        upload = layui.upload,
        table = layui.table,
        layedit = layui.layedit,
        laydate = layui.laydate,
        $ = layui.jquery;

        //第一个实例
    var cid = $("#customerId").val();

    var tableIns=table.render({

        elem: '#constactList'
        ,height: 612
        ,type:"get"
        ,url: '/customer-contact/list'//数据接口
        ,where:{customerId:cid}
        ,page: true //开启分页
        ,limits : [10,15,20,25]
            ,request:{
                pageName: 'current',
                limitName: 'size'
            }
        ,cols: [[ //表头
            {field: 'id', title: 'ID', width:100, sort: true, fixed: 'left'},
            {field: 'name', title: '姓名', width:180}
            ,{field: 'sex', title: '性别', width:100}
            ,{field: 'job', title: '职位', width:180, sort: true}
            ,{field: 'phone', title: '办公电话', width:180}
            ,{field: 'tel', title: '手机', width:180}
            ,{field: 'remark', title: '备注', width:180}
            , {fixed: 'right', title: '操作', width: 180, toolbar: "#barDemo"}

        ]]
    });
    form.on('radio',function(data){
        //console.log(data);
    });
    function addConstact(edit){
        var index = layui.layer.open({
            title : "增添/修改交往记录",
            type : 2,
            content : "addContact.jsp",
            success : function(layero, index){
                var body = layui.layer.getChildFrame('body', index);

                body.find(".customerId").val(cid);
                if(edit){
                    body.find(".customerId").val(cid);
                    body.find(".id").val(edit.id);
                    body.find(".name").val(edit.name);
                    //body.find("#sex").append("<check value=" + edit.sex + ">" + edit.sex + "</check>");
                    body.find(".sex input[value="+edit.sex+"]"+edit.sex).prop("checked","checked");
                    body.find(".job").val(edit.job);
                    body.find(".phone").val(edit.phone);
                    body.find(".tel").val(edit.tel);
                    body.find(".remark").val(edit.remark);
                    form.render();

                }
                setTimeout(function(){
                    layui.layer.tips('点击此处返回上一页', '.layui-layer-setwin .layui-layer-close', {
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
    $(".backContact_btn").on("click",function(){
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();//刷新父窗口


    });
    $(".saveContact_btn").click(function(){
        addConstact();
    })
    form.on('submit(saveContact)', function(data){

       // console.log(data.field);
        $.post('/customer-contact/addOrSave',data.field ,function(info){
            layer.msg(info.msg);
        });
        setTimeout(function(){
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
            parent.location.reload();
        },1000);
        return false;
    });

    table.on('tool(constact)', function(obj){
        var layEvent = obj.event,
            data = obj.data;
        if(layEvent === 'edit'){ //编辑
            addConstact(data);
        } else if(layEvent === 'del'){ //删除
            layer.confirm("你确定要删除【" + data.name + "】吗？", {
                icon: 3,
                title: '提示',
                skin: "layui-layer-molv",
                anim: 4
            }, function (index){
            $.post('/customer-contact/del/'+data.id,function(info) {
                tableIns.reload();
                layer.msg(info.msg);
                layer.close(index);
            })

            });


        }
    });





});