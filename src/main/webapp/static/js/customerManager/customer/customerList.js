layui.use(['layer','table','jquery','form','laypage'],function() {
    let layer = layui.layer,
        table = layui.table,
        $ = layui.jquery,
       laypage = layui.laypage,
       form = layui.form;
    //第一个实例
    var tableIns=table.render({
        elem: '#customerList'
        ,height: 612
        , url: '/customer-info/all_list' //数据接口
        , page: true //开启分页
        ,limits : [10,15,20,25]
        ,request:{
            pageName: 'current',
            limitName: 'size'
        }
        ,area: 'auto'
        , cols: [[ //表头
            {field: 'customerId', width: 100, align:"center", title: '客户编号',  sort: true, fixed: 'left'}
            , {field: 'customerName', title: '客户名称',}
            , {field: 'address', title: '地址', sort: true}
            , {field: 'phone', title: '电话',  sort: true}
            , {field: 'customerMgr', title: '客户经理', width: 100, align:"center"}
            , {field: 'customerGrade', title: '客户等级'}
            , {field: 'customerSatisfaction', title: '客户满意度', width: 120, align:"center"}
            , {field: 'customerCredit', title: '客户信用度', width: 120, align:"center"}
            , {field: 'city', title: '城市', width:120, align:"center"}
            , {fixed: 'right', title: '操作', width: 400, align:"center", toolbar: "#barDemo"}

        ]]
    });

    function add_edit(edit) {
        var data = edit.data;
        let index = layer.open({
            title: "编辑客户信息",
            type: 2,
            content: "customerEdit.jsp",
            //btn: ['确定'],
            success: function (layero, index) {
                let body = layer.getChildFrame("body", index);
                if (edit) {
                    if (edit.customerSatisfaction===null){
                        body.find("#customerGrade").append("<option value=''>请选择 </option>");
                    }else {
                        body.find("#customerGrade").append("<option value=" + edit.customerGrade + ">" + edit.customerGrade + "</option>");
                    }
                    $.post('/customer-info/selectlist/1004', function (data) {
                        data = data.data;
                        for (let i = 0; i < data.length; i++) {

                            body.find("#customerGrade").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
                            layui.form.render('select');
                        }
                        form.render('select');
                    });
                    if (edit.customerSatisfaction===null){
                        body.find("#customerMgr").append("<option value=''>请选择 </option>");
                    }else{
                    body.find("#customerMgr").append("<option value=" + edit.customerMgr + ">" + edit.customerMgr + "</option>");}

                    $.post('/customer-info/selectlist/1013', function (data) {
                        data = data.data;
                        for (let i = 0; i < data.length; i++) {

                            body.find("#customerMgr").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
                            layui.form.render('select');
                        }
                        form.render('select');
                    });

                    if (edit.customerSatisfaction===null){
                        body.find("#customerCredit").append("<option value=''>请选择 </option>");
                    }else{
                    body.find("#customerCredit").append("<option value=" + edit.customerCredit+ ">" + edit.customerCredit + "</option>");
                    }

                    $.post('/customer-info/selectlist/1005', function (data) {
                        data = data.data;
                        for (let i = 0; i < data.length; i++) {

                            body.find("#customerCredit").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
                            layui.form.render('select');
                        }
                        form.render('select');
                    });

                    if (edit.customerSatisfaction===null){
                        body.find("#customerSatisfaction").append("<option value=''>请选择 </option>");
                    }else{
                    body.find("#customerSatisfaction").append("<option value=" + edit.customerSatisfaction + ">" + edit.customerSatisfaction + "</option>");
                    }

                    $.post('/customer-info/selectlist/1006', function (data) {
                        data = data.data;
                        console.log(data);
                        for (let i = 0; i < data.length; i++) {
                            body.find("#customerSatisfaction").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
                            layui.form.render('select');
                        }
                        form.render('select');
                    });

                    if (edit.customerSatisfaction===null){
                        body.find("#city").append("<option value=''>请选择 </option>");
                    }else {
                        body.find("#city").append("<option value=" + edit.city + ">" + edit.city + "</option>");
                    }
                    $.post('/customer-info/selectlist/1003', function (data) {

                        data = data.data;
                        //console.log($("#city"));
                        for (let i = 0; i < data.length; i++) {
                            //console.log(data[i].name);

                            body.find("#city").append("<option value=" + data[i].name + ">" + data[i].name + "</option>");
                            layui.form.render('select');
                        }
                        form.render('select');
                    });
                    //body.find(".customerSatisfaction option[value="+edit.customerSatisfaction+"]").prop("select","select");

                   // body.find(".customerCredit option[value="+edit.customerCredit+"]").prop("select","select");
                    //body.find(".customerMgr option[value="+edit.customerMgr+"]").prop("select","select");
                    //body.find(".customerGrade option[value="+edit.customerGrade+"]").prop("selected","selected");

                    body.find(".customerId").val(edit.customerId);
                    body.find(".customerName").val(edit.customerName);
                    body.find(".businessLicense").val(edit.businessLicense);
                    body.find(".juridicalPerson").val(edit.juridicalPerson);
                    body.find(".registeredCapital").val(edit.registeredCapital);
                    body.find(".annualSales").val(edit.annualSales);
                    body.find(".address").val(edit.address);
                    body.find(".ulr").val(edit.ulr);
                    body.find(".phone").val(edit.phone);
                    body.find(".postalCode").val(edit.postalCode);
                    body.find(".fax").val(edit.fax);
                    body.find(".depositBank").val(edit.depositBank);
                    body.find(".bankAccount").val(edit.bankAccount);
                    body.find(".landTaxCode").val(edit.landTaxCode);
                    body.find(".centralTax").val(edit.centralTax);

                    // body.find(".city").val(edit.city);

                    form.render();
                }
                setTimeout(function () {
                    layui.layer.tips('点击此处返回上一页', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                }, 500)
                layui.layer.full(index);
            },
            yes: function (index, layero) {
                let body = layer.getChildFrame("body", index);
                let data = {};
                body.find("#edit_customer").serializeArray().forEach(function (item) {
                    data[item.name] = item.value;
                });
                $.post('', data, function (result) {
                    layer.msg(result.msg);
                });
                layer.close(index);


            }

        });

    }



    table.on('tool(customer)', function (obj) {
        switch (obj.event) {
            case 'edit':
                add_edit(obj.data);
                break;
            case 'del':
                layer.confirm("你确定要删除【" + obj.data.customerName + "】吗？", {
                    icon: 3,
                    title: '提示',
                    skin: "layui-layer-molv",
                    anim: 4
                }, function (index) {
                    $.post('/customer-info/del/'+obj.data.customerId,function(info){
                        tableIns.reload();
                        layer.msg(info.msg);
                        layer.close(index);

                    });
                });


                break;
            case 'see':
                find_constact(obj.data.customerId,obj.data.customerName);
                break;
            case 'record':
                find_record(obj.data.customerId,obj.data.customerName);
                break;
            case 'orderHistory':
                find_order(obj.data.customerId,obj.data.customerName);
                break;
        }

    });

function find_constact(cid,cname){
   //var data = cid.data;
    let index = layer.open({
            title: "查看联系人",
            type: 2,
            content: "contactList.jsp",
            success: function (layero, index) {
            let table = layer.getChildFrame("constactList", index);
                let body = layer.getChildFrame("body", index);
                if (cid) {

                    body.find(".customerId").val(cid);
                    body.find(".customerName").val(cname);


                }

            setTimeout(function () {
                layui.layer.tips('点击此处返回上一页', '.layui-layer-setwin .layui-layer-close', {
                    tips: 3
                });
            }, 500)

        }
    })
    layui.layer.full(index);
}

function find_record(cid,cname){
        var data = cid.data;
        let index = layer.open({
            title: "交往记录",
            type: 2,
            content: "recordList.jsp",
            success: function (layero, index) {
                let table = layer.getChildFrame("recordList", index);
                let body = layer.getChildFrame("body", index);
                if (cid) {

                    body.find(".customerId").val(cid);
                    body.find(".customerName").val(cname);

                }
                setTimeout(function () {
                    layui.layer.tips('点击此处返回上一页', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                }, 500)

            }
        })
        layui.layer.full(index);
    }

    function find_order(cid,cname){
        var data = cid.data;
        let index = layer.open({
            title: "历史订单",
            type: 2,
            content: "orderHistory.jsp",
            success: function (layero, index) {
                let table = layer.getChildFrame("recordList", index);
                let body = layer.getChildFrame("body", index);
                if (cid) {

                    body.find(".customerId").val(cid);
                    body.find(".customerName").val(cname);

                }
                setTimeout(function () {
                    layui.layer.tips('点击此处返回上一页', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                }, 500)

            }
        })
        layui.layer.full(index);
    }



    form.on('submit(saveCustomer)', function(data){
        //var index = top.layer.msg('数据提交中，请稍候',{icon: 16,time:false,shade:0.8});
        //console.log(data.field);
        $.post('/customer-info/Save',data.field,function(info){
           layer.msg(info.msg);

        });
        setTimeout(function(){
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);

            parent.location.reload();
        },1000);
        return false;
       /* //先得到当前iframe层的索引
         //再执行关闭
        parent.location.reload();//刷新父窗口*/
    });

    $(".backContact_btn").on("click",function(){
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
        parent.location.reload();//刷新父窗口


    });

    });



