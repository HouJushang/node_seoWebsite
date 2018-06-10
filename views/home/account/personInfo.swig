{% extends '../layout.swig'  %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatar.swig' %}
                <div class="nav_list">
                    <div class="list on">
                        <div class="tit">基本资料</div>
                        <dl>
                            <dd class="on">
                                <a href="/account/info">账号信息</a>
                            </dd>
                            <dd>
                                <a href="/account/modify">修改密码</a>
                            </dd>
                            <dd>
                                <a href="/account/auth">实名认证</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list">
                        <div class="tit">我的简历</div>
                        <dl>
                            <dd>
                                <a href="/account/resume">创建简历</a>
                            </dd>
                            <dd>
                                <a href="/account/resumeM">简历管理</a>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="list_text">
                <div class="list_cont">
                    <div class="list_title"><i>账号信息</i></div>
                    <div class="list_personal">
                        <div class="from_list w5 clr">
                            <div class="tit wd8 fl">电话：</div>
                            <div class="con">{{ psersonInfo.user.phone }}</div>
                        </div>
                        <div class="from_list w5 clr">
                            <div class="tit wd8 fl">头像：</div>
                            <div class="con clr">
                                <img class="img_tx fl" src="{% if psersonInfo.avatar %}{{ psersonInfo.avatar }}{% else %}/homeStatic/images/zjzk_03.jpg{% endif %}" id="avatarBox" width="100%" height="100%">
                                <div class="operation">
                                    <div class="btn" id="logo_web">上传图片</div>
                                    <p class="red">*建议上传正方形的图片</p>
                                </div>
                            </div>
                        </div>
                        {#<div class="from_list w5 clr">#}
                            {#<div class="tit wd8 fl">账户名：</div>#}
                            {#<div class="con">#}
                                {#<input type="text" value="端然">#}
                            {#</div>#}
                        {#</div>#}
                        <div class="from_list w5 clr">
                            <div class="tit wd8 fl">地址：</div>
                            <div class="con">
                                <input class="address" type="text" value="{{ psersonInfo.address }}">
                            </div>
                        </div>
                        <div class="button">
                            {#<div class="btn">取消</div>#}
                            <div class="btn saveBtn">保存</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
<script src="/homeStatic/scripts/webuploader.min.js"></script>
<script type="text/javascript">
    $(function(){
        var avatar = '';
        $(".nav_list .list .tit").click(function(){
            $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
        });
        uploader("#logo_web","gif,jpg,jpeg,bmp,png","image/*",2,function(e){
            avatar = e.data.url;
            $('#avatarBox').attr('src', '/' + avatar);
        });
        $('.saveBtn').click(function() {
            $.ajax({
                url: "/account/save/" + "{{ homeLogin.id }}",
                type: "POST",
                dataType: "json",
                data: {
                    avatar: $('#avatarBox').attr('src'),
                    address: $('.address').val()
                },
                success: function (e) {
                    if(e.code == "success"){
                        window.location.href = "/account/info"
                    }else{
                        alert(e.message);
                    }
                }
            })
        })
    });
</script>
{% endblock %}





