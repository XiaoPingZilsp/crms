layui.use(['laydate','layer','table','jquery','form'], function(){
    var laydate = layui.laydate,
        layer = layui.layer,
        table = layui.table,
        $ = layui.jquery,
        form = layui.form

    laydate.render({
        elem: '#creationTime' //指定元素
    });
    laydate.render({
        elem: '#test6'
        ,range: true
    });

    loadType();
    loadCustomer();

    function loadType() {
        $.ajax({
            type:'post',
            url:'service-management/type',
            dataType:'json',
            success:function (data) {
                let root = document.getElementById("serviceType");
                for(let i=0;i<data.length;i++){
                    let option = document.createElement("option");
                    option.setAttribute("value",data[i].name);
                    option.innerText = data[i].name;
                    root.appendChild(option);
                    form.render('select');
                }
            }
        })

    };


    function loadCustomer() {
        $.ajax({
            type:'post',
            url:'service-management/Customer',
            dataType:'json',
            success:function (data) {
                let root = document.getElementById("customerName");
                for(let i=0;i<data.length;i++){
                    let option = document.createElement("option");
                    option.setAttribute("value",data[i].customerName);
                    option.innerText = data[i].customerName;
                    root.appendChild(option);
                    form.render('select');
                }
            }
        })

    };

    form.on('submit(add)', function(data){
        form.on('select(serviceType)',function (data1) {
            serviceType = data1.value;
            serviceTypeName = data1.elem[data1.elem.selectedIndex].text;
            form.render('select');
        });

        form.on('select(customerName)',function (data3) {
            customer = data3.value;
            customerName = data3.elem[data3.elem.selectedIndex].text;
            form.render('customerName');
        });

        $.post('service-management/addService',data.field ,function(info){
            layer.msg(info.msg);
        });

       setTimeout(function () {
           location.reload();//刷新
        },1000)

    });
    form.on('submit(edit)', function(data){
        console.log(data);
        form.on('select(serviceType)',function (data1) {
            serviceType = data1.value;
            serviceTypeName = data1.elem[data1.elem.selectedIndex].text;
            form.render('select');
        });

        form.on('select(customerName)',function (data3) {
            customer = data3.value;
            customerName = data3.elem[data3.elem.selectedIndex].text;
            form.render('customerName');
        });

        $.post('service-management/editService',data.field ,function(info){
            layer.msg(info.msg);
        });

        setTimeout(function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
            parent.location.reload();//刷新父窗口
        },1000)
        return false;
    });

    //搜索
    form.on('submit(search)', function(data){
        form.on('select(serviceType)',function (data1) {
            serviceType = data1.value;
            serviceTypeName = data1.elem[data1.elem.selectedIndex].text;
            form.render('select');
        });

        $.post('service-management/search',data.field ,function(info){
            layer.msg(info.msg);
        });
    });
});


