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
                            <dd>
                                <a href="/account/info">账号信息</a>
                            </dd>
                            <dd class="on">
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
                    <div class="list_title"><i>修改密码</i></div>
                    <div class="list_personal">
                        <div class="from_list w5 clr">
                            <div class="tit wd10 fl">旧密码：</div>
                            <div class="con">
                                <input type="password" class="oldPass" placeholder="请输入旧密码">
                            </div>
                        </div>
                        <div class="from_list w5 clr">
                            <div class="tit wd10 fl">新密码：</div>
                            <div class="con">
                                <input type="password" class="password" placeholder="请输入新密码">
                            </div>
                        </div>
                        <div class="from_list w5 clr">
                            <div class="tit wd10 fl">确认新密码：</div>
                            <div class="con">
                                <input type="password" class="password2" placeholder="请输入确认密码">
                            </div>
                        </div>

                        <div class="button">
                            <div class="btn savePass">确定</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


{% endblock %}
{% block bottomScript %}
<script type="text/javascript">
    $(function(){
        $(".nav_list .list .tit").click(function(){
            $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
        });
    });

    $('.savePass').click(function() {
        var oldPass = $('.oldPass').val();
        var password = $('.password').val();
        var password2 = $('.password2').val();
        if(!oldPass){
            alert('填写旧密码')
            return false
        }
        if(!(password && password2 && password2 == password)){
            alert('填写密码并且保持两次一直')
            return false
        }

        $.ajax({
            url: "/account/savePassWord",
            type: "POST",
            dataType: "json",
            data: {
                oldPass: oldPass,
                password: password,
            },
            success: function (e) {
                if(e.code == "success"){
                    alert('修改成功')
                    window.history.go(0);
                }else{
                    alert(e.message);
                }
            }
        })
    });

</script>
{% endblock %}





