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
                            <dd>
                                <a href="/account/modify">修改密码</a>
                            </dd>
                            <dd class="on">
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
                    <div class="list_title"><i>实名认证</i></div>
                    <div class="list_personal">
                        <div class="from_list w5 clr">
                            <div class="tit wd10 fl"><i>*</i>姓名：</div>
                            <div class="con">
                                <input type="text" class="personName" value="{{ psersonInfo.name }}" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="from_list w5 clr">
                            <div class="tit wd10 fl"><i>*</i>身份证：</div>
                            <div class="con">
                                <input type="text" class="personId" value="{{ psersonInfo.idcard }}" placeholder="请输入身份证">
                            </div>
                        </div>
                        <div class="from_list w5 clr">
                            <div class="tit wd10 fl"><i>*</i>性别：</div>
                            <div class="con">
                                <select class="personSex">
                                    <option value="0" {% if psersonInfo.sex == 0 %} selected {% endif %}>男</option>
                                    <option value="1" {% if psersonInfo.sex == 1 %} selected {% endif %}>女</option>
                                </select>
                            </div>
                        </div>
                        <div class="button">
                            <div class="btn saveId">保存</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
    <script type="text/javascript">
        function checkIdentity(identity){
            var reg = /^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
            if(reg.test(identity)){
                return true;
            }else{
                return false;
            }
        }
        $(function(){
            $(".nav_list .list .tit").click(function(){
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });

            $('.saveId').click(function () {
                if(!$('.personName').val()){
                    alert("填写姓名");
                    return false;
                }
                if(!checkIdentity($('.personId').val())){
                    alert("身份证格式不正确");
                    return false;
                }

                $.ajax({
                    url: "/account/save/" + "{{ homeLogin.id }}",
                    type: "POST",
                    dataType: "json",
                    data: {
                        idcard: $('.personId').val(),
                        name: $('.personName').val(),
                        sex: $('.personSex').val()
                    },
                    success: function (e) {
                        if(e.code == "success"){
                            alert('修改成功')
                            window.history.go(0)
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}




