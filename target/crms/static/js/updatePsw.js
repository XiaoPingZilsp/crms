layui.use(['form', 'layedit', 'laydate'], function() {
    var form = layui.form ,
        layer = layui.layer;
         $ = layui.jquery;

    form.verify({
        Psw:function(value){
            if(value.length < 6){
                return '密码必须6到12位';
            }else if(value.length > 12){
                return '密码必须6到12位';
            }
        }
    });


    form.verify({
        title: function(value){
            if(value.length < 5){
                return '标题至少得5个字符啊';
            }
        }
        ,pass: [/(.+){6,12}$/, '密码必须6到12位']
        ,content: function(value){
            layedit.sync(editIndex);
        }
    });

    form.on('submit(submits)', function(data){
        if ($('#newPsw').val() == $('#comfirmPsw').val()){
            /*$('form[id=updatePsw]').attr('action','/system-user/updatePsw/');
            $('#updatePsw').submit();*/
            $.post('/system-user/updatePsw',data.field ,function(res){
                console.log(res);
                layer.msg(res.msg);
            });
            return false;
        }else {
            alert("新密码和确认密码不一致，请重新修改！");
        }


    });

});