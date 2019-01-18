layui.use(['form','layer','jquery'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer
        $ = layui.jquery;

    //登录按钮
    form.on("submit(login)",function(data){
         $.post('system-user/check',data.field ,function(res){
             console.log(res);
             layer.msg(res.msg);
             if (res.code==0){
                 console.log("-----------")
                 window.location.href = "/views/index.jsp";
             }
        });
         return false;
    })

    //表单输入效果
    $(".loginBody .input-item").click(function(e){
        e.stopPropagation();
        $(this).addClass("layui-input-focus").find(".layui-input").focus();
    })
    $(".loginBody .layui-form-item .layui-input").focus(function(){
        $(this).parent().addClass("layui-input-focus");
    })
    $(".loginBody .layui-form-item .layui-input").blur(function(){
        $(this).parent().removeClass("layui-input-focus");
        if($(this).val() != ''){
            $(this).parent().addClass("layui-input-active");
        }else{
            $(this).parent().removeClass("layui-input-active");
        }
    })

    $('#captchaImage').click(function()
    {
        $('#captchaImage').attr("src", "system-user/captcha?timestamp=" + (new Date()).valueOf());
    });

})
