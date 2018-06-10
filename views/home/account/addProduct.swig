{% extends '../layout.swig' %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatarC.swig' %}
                {% include './companyLeft.swig' %}
                {{ companyLeft(4) }}
            </div>
            <div class="list_text">
                <div class="list_cont">
                    <div class="list_title"><i>发布商品信息</i></div>
                    <div class="list_personal">
                        <form id="addForm">
                            <input type="hidden" name="id" value="{{ detail.id }}">
                            <div class="clr">
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">产品名称：</div>
                                    <div class="con">
                                        <input type="text" class="titInput" name="title" value="{{ detail.title }}" placeholder="请输入产品名称">
                                    </div>
                                </div>
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">产品规格：</div>
                                    <div class="con">
                                        <input type="text" name="guige" value="{{ detail.guige }}" placeholder="请输入产品规格">
                                    </div>
                                </div>
                                <div class="from_list fr w45 clr">
                                    <div class="tit wd8 fl">产品产地：</div>
                                    <div class="con">
                                        <input type="text" name="chandi" value="{{ detail.chandi }}" placeholder="请输入产品产地">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">购买链接：</div>
                                    <div class="con">
                                        <input type="text" name="link" value="{{ detail.link }}" placeholder="请输入购买链接">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd8 fl">产品主图：</div>
                                    <div class="con clr">
                                        <input type="hidden" name="image" class="imgInput"/>
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
                                    <div class="tit wd8 fl">商品详情：</div>
                                    <div class="con">
                                        <div id="myEditor" name="content">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="button">
                            <div class="btn saveBtn">保存</div>
                        </div>
                    </div>
                </div>
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
            uploader("#logo_web","gif,jpg,jpeg,bmp,png","image/*",2,function(e){
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
            $('.saveBtn').click(function(){
                $('.imgInput').val($('#avatarBox').attr('src'));
                if(!$('.titInput').val()){
                    alert('产品名称必填！')
                    return false
                }
                $.ajax({
                    url: "/account/addProduct",
                    type: "POST",
                    dataType: "json",
                    data: $('#addForm').serializeArray(),
                    success: function (e) {
                        if(e.code == "success"){
                            window.location.href="/account/productShenhe"
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}





