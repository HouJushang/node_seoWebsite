<section class="user_login">
    <div class="popup login">
        <div class="login_cont">
            <div class="tit">用户登录</div>
            <div class="con">
                <div class="list list_1">
                    <input type="text" class="loginPhone" placeholder="手机号">
                </div>
                <div class="list list_2">
                    <input type="password" class="loginPassword" placeholder="请输入密码">
                </div>
                <div class="list yzm list_3">
                    <input type="text" class="loginCode" placeholder="请输入图片验证码">
                    <div class="operation" id="captcha1">
                    </div>
                </div>
                <div class="remember clr">
                    <div class="pass on fl jizhumima">记住密码</div>
                    <a href="javascript:;" class="fr backPassBtn">忘记密码</a>
                </div>
                <div class="btn loginBtn">登录</div>
                <div class="new">新用户账号<a>注册</a></div>
            </div>
        </div>
        <div class="login_back">
            <div class="tit">找回密码</div>
            <div class="con con_1">
                <div class="list list_4">
                    <input type="text" class="phone4"  placeholder="输入手机号">
                </div>
                <div class="list yzm list_6">
                    <input type="text" class="passSmsCode" placeholder="输入短信验证码">
                    <div class="operation">
                        <div class="obtain obtain4">获取验证码</div>
                        <div class="already hide">已发送(<em>60</em>)s</div>
                    </div>
                </div>
                <div class="btn checkCodeBtn">确定</div>
            </div>
            <div class="con con_2">
                <div class="list list_2">
                    <input type="password" class="newPassword1" placeholder="输入新密码">
                </div>
                <div class="list list_8">
                    <input type="password" class="newPassword2" placeholder="再次输入新密码">
                </div>
                <div class="btn newPassBtn">确定</div>
            </div>
            <div class="con con_3">
                <h2>密码修改成功！</h2>
                <div class="btn">登录</div>
                <div class="btn">返回</div>
            </div>
        </div>
        <div class="del"></div>
    </div>
    <div class="popup register">
        <div class="tit clr">
            <div class="tit_list on">企业注册</div>
            <div class="tit_list">个人注册</div>
        </div>
        <div class="con">
            <div class="cons_list">
                <div class="con_registe componyReg">
                    <div class="list list_1">
                        <input type="text" name="company_name" class="company_name" placeholder="请输入公司名称">
                    </div>
                    <div class="list list_4">
                        <input type="text" name="company_phone" class="company_phone" placeholder="请输入手机号">
                    </div>
                    <div class="list yzm list_5">
                        <input type="text" name="code3" class="code3" placeholder="请输入图片验证码">
                        <div class="operation" id="captcha3">
                        </div>
                    </div>
                    <div class="list yzm list_6">
                        <input type="text" class="company_smscode" placeholder="请输入短信验证码">
                        <div class="operation">
                            <div class="obtain obtain3">获取验证码</div>
                            <div class="already hide">已发送(<em>60</em>)s</div>
                        </div>
                    </div>
                    <div class="list list_7">
                        <input type="password" class="company_password" placeholder="请输入密码">
                    </div>
                    <!-- <div class="list list_8">
                        <input type="text" placeholder="请再次输入密码">
                    </div> -->
                    <div class="btn registerCom">注册</div>
                    <div class="new">已有账号，立即<a>登录</a></div>
                </div>
                <div class="con_registe personReg">
                    <div class="list list_4">
                        <input type="text" class="person_phone" placeholder="请输入手机号">
                    </div>
                    <div class="list yzm list_5">
                        <input type="text" class="person_code" placeholder="请输入图片验证码">
                        <div class="operation" id="captcha2">
                        </div>
                    </div>
                    <div class="list yzm list_6">
                        <input type="text" placeholder="请输入短信验证码">
                        <div class="operation">
                            <div class="obtain person_obtain">获取验证码</div>
                            <div class="already hide">已发送(<em>60</em>)s</div>
                        </div>
                    </div>
                    <div class="list list_7">
                        <input type="password" class="person_password" placeholder="请输入密码" />
                    </div>
                    <!-- <div class="list list_8">
                        <input type="text" placeholder="请再次输入密码">
                    </div> -->
                    <div class="btn registerPer">注册</div>
                    <div class="new">已有账号，立即<a>登录</a></div>
                </div>
            </div>
            <div class="complete">
                <h2>恭喜您账号注册成功！</h2>
                <div class="btn">继续完善资料</div>
                <div class="btn">返回</div>
            </div>
        </div>
        <div class="del"></div>
    </div>
</section>
<script>
    var phoneReg = /^1[0-9]{10}$/;
    var newPassPhone = "";
    var newPassCode = "";

    $('.loginPhone').val(window.localStorage.getItem('phone'));
    $('.loginPassword').val(window.localStorage.getItem('password'));


    $('.backPassBtn').click(function(){
        $('.login_cont').hide()
        $('.login_back').show()
    });
    $(".obtain3").click(function(){
        var phone = $('.company_phone').val();
        var code = $(".code3").val();
        console.log(phone);
        if(!phoneReg.test(phone)){
            alert("手机号格式不正确");
            return;
        }
        if(code.length != 4){
            alert("验证码格式不正确")
            return;
        }
        $.ajax({
            url: "/smscode",
            type: "POST",
            dataType: "json",
            data: {
                phone: phone,
                code: code
            },
            success: function (e) {
                if(e.code == "success"){
                    showTime();
                }else{
                    alert(e.message);
                }
            }
        })
    });

    $('.newPassBtn').click(function(){

        // todo 验证
        if(!($('.newPassword1').val().length >= 6)){
            alert('密码必须大于等于6位');
            return
        }
        if(!($('.newPassword1').val() == $('.newPassword2').val())){
            alert('两次密码必须一致');
            return
        }

        $.ajax({
            url: "/newPassWord",
            type: "POST",
            dataType: "json",
            data: {
                password: $('.newPassword1').val(),
                phone: newPassPhone,
                code: newPassCode,
            },
            success: function (e) {
                if(e.code == "success"){
                    alert('修改成功');
                    window.history.go(0)
                }else{
                    alert(e.message);
                }
            }
        })
    })

    $(".obtain4").click(function(){
        var phone = $('.phone4').val();
        if(!phoneReg.test(phone)){
            alert("手机号格式不正确");
            return;
        }
        $.ajax({
            url: "/smscode2",
            type: "POST",
            dataType: "json",
            data: {
                phone: phone,
            },
            success: function (e) {
                if(e.code == "success"){
                    showTime();
                }else{
                    alert(e.message);
                }
            }
        })
    });

    $(".checkCodeBtn").click(function(){
        $.ajax({
            url: "/checkSmsCode",
            type: "POST",
            dataType: "json",
            data: {
                code: $('.passSmsCode').val(),
            },
            success: function (e) {
                if(e.code == "success"){
                    newPassPhone =$('.phone4').val()
                    newPassCode = $('.passSmsCode').val()
                    $('.login_back .con_1').hide();
                    $('.login_back .con_2').show();
                }else{
                    alert(e.message);
                }
            }
        })
    })

    $(".person_obtain").click(function(){
        var phone = $('.person_phone').val();
        var code = $(".person_code").val();
        if(!phoneReg.test(phone)){
            alert("手机号格式不正确");
            return;
        }
        if(code.length != 4){
            alert("验证码格式不正确")
            return;
        }
        $.ajax({
            url: "/smscode",
            type: "POST",
            dataType: "json",
            data: {
                phone: phone,
                code: code
            },
            success: function (e) {
                if(e.code == "success"){
                    showTime();
                }else{
                    alert(e.message);
                }
            }
        })
    });
    function showTime(){
        $(".obtain").hide();
        $(".already").show();
        var time = 60;
        var t = setInterval(function () {
            if (time <= 1) {
                $(".obtain").show();
                $(".already").hide();
                time = 60;
                clearInterval(t);
            } else {
                time = time - 1;
            }
            $(".already").find("em").text(time);
        }, 1000);
    }

    $('.registerCom').click(function() {
        if(!$('.company_name').val()){
            alert('请填写公司名称')
            return false
        }
        if(!phoneReg.test($('.company_phone').val())){
            alert('手机号码格式不正确')
            return false
        }
        if($('.company_smscode').val().length != 4){
            alert('验证码格式不正确')
            return false
        }
        if($('.company_password').val().length < 6){
            alert('密码的长度必须大于等于6位')
            return false
        }
        $.ajax({
            url: "/register/company",
            type: "POST",
            dataType: "json",
            data: {
                phone: $('.company_phone').val(),
                company_name: $('.company_name').val(),
                smsCode:$('.company_smscode').val(),
                password: $('.company_password').val()
            },
            success: function (e) {
                if(e.code == "success"){
                    window.location.href = "/account/info"
                }else{
                    alert(e.message);
                }
            }
        })
    });

    $('.registerPer').click(function() {
        if(!phoneReg.test($('.person_phone').val())){
            alert('手机号码格式不正确')
            return false
        }
        if($('.person_code').val().length != 4){
            alert('验证码格式不正确')
            return false
        }
        if($('.person_password').val().length < 6){
            alert('密码的长度必须大于等于6位')
            return false
        }
        $.ajax({
            url: "/register/person",
            type: "POST",
            dataType: "json",
            data: {
                phone: $('.person_phone').val(),
                smsCode:$('.person_code').val(),
                password: $('.person_password').val()
            },
            success: function (e) {
                if(e.code == "success"){
                    window.location.href = "/account/info"
                }else{
                    alert(e.message);
                }
            }
        })
    });

    $('.loginBtn').click(function(){
        if(!phoneReg.test($('.loginPhone').val())){
            alert('手机号码格式不正确')
            return false
        }
        if($('.loginCode').val().length != 4){
            alert('验证码格式不正确')
            return false
        }
        if($('.loginPassword').val().length < 6){
            alert('密码的长度必须大于等于6位')
            return false
        }
        $.ajax({
            url: "/register/login",
            type: "POST",
            dataType: "json",
            data: {
                phone: $('.loginPhone').val(),
                code:$('.loginCode').val(),
                password: $('.loginPassword').val()
            },
            success: function (e) {
                if(e.code == "success"){
                    if($('.jizhumima').hasClass('on')){
                        window.localStorage.setItem('phone', $('.loginPhone').val());
                        window.localStorage.setItem('password', $('.loginPassword').val());
                    }else{
                        window.localStorage.removeItem('phone')
                        window.localStorage.removeItem('password')
                    }


                    window.location.href = "/account/info"
                }else{
                    alert(e.message);
                }
            }
        })
    })


    function getSvg(idTag){
        $.ajax({
            url: "/captcha",
            type: "GET",
            dataType: "json",
            success: function (e) {
                $(idTag).html('<?xml version="1.0"?>' + e.data.captcha)
                    .attr({
                        'height': '100%',
                        'width': '100%'
                    });
            }
        })
    }
    $('#captcha1').click(function() {
        getSvg("#captcha1");
    })
    $('#captcha2').click(function() {
        getSvg("#captcha2");
    })
    $('#captcha3').click(function() {
        getSvg("#captcha3");
    })

    getSvg("#captcha1, #captcha2, #captcha3");

</script>