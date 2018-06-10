{% extends '../layout.swig' %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatarC.swig' %}
                {% include './companyLeft.swig' %}
                {{ companyLeft(7) }}
            </div>
            <div class="list_text">
                <form id="addForm">
                    <input type="hidden" name="id" value="{{ detail.id }}">
                    <div class="list_cont">
                        <div class="list_title"><i>发布电商服务</i></div>
                        <div class="list_personal">
                            <div class="clr">
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">服务类别：</div>
                                    <div class="con">
                                        <select name="leibie">
                                            <option value="金融服务" {% if detail.leibie == "金融服务" %}selected{% endif %}>金融服务</option>
                                            <option value="电商代运营"  {% if detail.leibie == "电商代运营" %}selected{% endif %}>电商代运营</option>
                                            <option value="营销推广" {% if detail.leibie == "营销推广" %}selected{% endif %}>营销推广</option>
                                            <option value="设计摄影" {% if detail.leibie == "设计摄影" %}selected{% endif %}>设计摄影</option>
                                            <option value="物流服务" {% if detail.leibie == "物流服务" %}selected{% endif %}>物流服务</option>
                                            <option value="IT互联网服务" {% if detail.leibie == "IT互联网服务" %}selected{% endif %}>IT互联网服务</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="from_list fr w45 clr">
                                    <div class="tit wd8 fl">服务范围：</div>
                                    <div class="con">
                                        <input name="fanwei" value="{{ detail.fanwei }}" type="text" placeholder="请输入服务范围">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">服务名称：</div>
                                    <div class="con">
                                        <input name="title" class="titInput" value="{{ detail.title }}" type="text" placeholder="请输入服务名">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">服务方式：</div>
                                    <div class="con">
                                        <input name="fanshi" value="{{ detail.fanshi }}" type="text" placeholder="请输入服务方式">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">服务对象：</div>
                                    <div class="con">
                                        <input name="duixiang" value="{{ detail.duixiang }}" type="text" placeholder="请输入服务对象">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">联系方式：</div>
                                    <div class="con">
                                        <input name="lianxi" value="{{ detail.lianxi }}" type="text" placeholder="请输入联系方式">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd8 fl">服务主图：</div>
                                    <div class="con clr">
                                        <input type="hidden" name="image" class="imgInput">
                                        {% if detail.image %}
                                            <img class="img_tx fl" id="avatarBox" src="{{ detail.image }}" width="100%" height="100%">
                                        {% else %}
                                            <img class="img_tx fl" id="avatarBox" src="/homeStatic/images/zetp_03.jpg" width="100%" height="100%">
                                        {% endif %}
                                        <div class="operation">
                                            <div class="btn" id="logo_web">上传图片</div>
                                            <p class="red">*建议上传正方形的图片</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">服务详情：</div>
                                    <div class="con">
                                        <input type="hidden" name="content" class="conInput">
                                        <div id="myEditor">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="button">
                                {#<div class="btn">取消</div>#}
                                <div class="btn saveBtn">保存</div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
    <script src="/homeStatic/scripts/umeditor/ueditor.config.js"></script>
    <script src="/homeStatic/scripts/umeditor/ueditor.all.min.js"></script>
    <script src="/homeStatic/scripts/umeditor/lang/zh-cn/zh-cn.js"></script>
    <script src="/homeStatic/scripts/webuploader.min.js"></script>
    <script type="text/javascript">
        $(function () {
            uploader("#logo_web", "gif,jpg,jpeg,bmp,png", "image/*", 2, function (e) {
                avatar = '/' + e.data.url;
                $('#avatarBox').attr('src', avatar);
                $('.imgInput').val(avatar);
            });
            $(".nav_list .list .tit").click(function () {
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });
            var um = UE.getEditor('myEditor', {
                elementPathEnabled: false, //删除元素路径
                wordCount: false,    //删除字数统计
                initialContent: "{% autoescape %}{{ detail.content }}{% endautoescape %}"
            });
            $('.saveBtn').click(function () {
                $('.imgInput').val( $('#avatarBox').attr('src'));
                $('.conInput').val(um.getContent())
                if (!$('.titInput').val()) {
                    alert('服务名称必填！')
                    return false
                }
                $.ajax({
                    url: "/account/addService",
                    type: "POST",
                    dataType: "json",
                    data: $('#addForm').serializeArray(),
                    success: function (e) {
                        if (e.code == "success") {
                            window.location.href = "/account/serviceShenhe"
                        } else {
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}





