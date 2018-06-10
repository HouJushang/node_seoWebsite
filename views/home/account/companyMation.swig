{% extends '../layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    <div class="fl personnel_nav">
                        {% include './avatarC.swig' %}
                        {% include './companyLeft.swig' %}
                        {{ companyLeft(3) }}
                    </div>
                    <div class="list_text">
                        <div class="list_cont">
                            <div class="list_title"><i>企业信息</i></div>
                            <form id="addForm">
                                <div class="list_personal">
                                    <div class="basic_title">基本信息</div>
                                    <div class="clr">
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">企业名称：</div>
                                            <div class="con">
                                                <input type="text" name="companyName" value="{{ psersonInfo.companyName }}" placeholder="请输入姓名">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl lang">组织机构代码或工商注册号：</div>
                                            <div class="con">
                                                <input type="text" name="zzjgdm" value="{{ psersonInfo.zzjgdm }}" placeholder="请输入组织机构代码或工商注册号">
                                            </div>
                                        </div>
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">企业注册类型：</div>
                                            <div class="con">
                                                <input type="text" name="qyzclx" value="{{ psersonInfo.qyzclx }}" placeholder="请输入企业注册类型">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl">行政区划代码：</div>
                                            <div class="con">
                                                <input type="text" name="xzdm" value="{{ psersonInfo.dwxz }}" placeholder="请输入行政区划代码">
                                            </div>
                                        </div>
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">单位性质：</div>
                                            <div class="con">
                                                <input type="text" name="dwxz" value="{{ psersonInfo.dwxz }}">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl">开业时间：</div>
                                            <div class="con">
                                                <input type="text" name="kysj" value="{{ psersonInfo.kysj }}" placeholder="请输入开业时间">
                                            </div>
                                        </div>
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">控股情况：</div>
                                            <div class="con">
                                                <input type="text" name="kgqk" value="{{ psersonInfo.kgqk }}">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl">法定代表人：</div>
                                            <div class="con">
                                                <input type="text" name="fddbr" value="{{ psersonInfo.fddbr }}" placeholder="请输入法定代表人">
                                            </div>
                                        </div>
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">行业代码：</div>
                                            <div class="con">
                                                <input type="text" name="hedm" value="{{ psersonInfo.hedm }}" placeholder="请输入行业代码">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl">邮政编码：</div>
                                            <div class="con">
                                                <input type="text" name="yzbm" value="{{ psersonInfo.yzbm }}" placeholder="请输入邮政编码">
                                            </div>
                                        </div>
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">公司网址：</div>
                                            <div class="con">
                                                <input type="text" name="gswz" value="{{ psersonInfo.gswz }}" placeholder="请输入公司网址 http://www.baidu.com">
                                            </div>
                                        </div>
                                        <div class="from_list fl w10 clr">
                                            <div class="tit wd12 fl">通讯地址：</div>
                                            <div class="con">
                                                <input type="text" name="txdz" value="{{ psersonInfo.txdz }}" placeholder="请输入通讯地址">
                                            </div>
                                        </div>
                                        <div class="from_list fl w10 clr">
                                            <div class="tit wd12 fl lang">主要产品或主营业务：</div>
                                            <div class="con">
                                                <input type="text" name="zycp" value="{{ psersonInfo.zycp }}" placeholder="请输入主要产品或主营业务">
                                            </div>
                                        </div>
                                        <div class="from_list fl w10 clr">
                                            <div class="tit wd12 fl">企业简介：</div>
                                            <div class="con">
                                                <input type="textarea"  name="qyjj" value="{{ psersonInfo.qyjj }}" id="" cols="50" rows="10" />
                                                {#<div id="myEditor"></div>#}
                                            </div>
                                        </div>
                                    </div>

                                    <div class="basic_title">联系人信息</div>
                                    <div class="clr">
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">姓名：</div>
                                            <div class="con">
                                                <input type="text" name="lxrname" value="{{ psersonInfo.lxrname }}" placeholder="请输入姓名">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl">电话：</div>
                                            <div class="con">
                                                <input type="text" name="lxrphone" value="{{ psersonInfo.lxrphone }}" placeholder="请输入电话">
                                            </div>
                                        </div>
                                        <div class="from_list fl w45 clr">
                                            <div class="tit wd12 fl">传真：</div>
                                            <div class="con">
                                                <input type="text" name="chuanzhen" value="{{ psersonInfo.chuanzhen }}" placeholder="请输入传真">
                                            </div>
                                        </div>
                                        <div class="from_list fr w45 clr">
                                            <div class="tit wd12 fl">邮箱：</div>
                                            <div class="con">
                                                <input type="text" name="lxremail" value="{{ psersonInfo.lxremail }}" placeholder="请输入邮箱">
                                            </div>
                                        </div>
                                        <input name="userId" type="hidden" value="{{ homeLogin.id }}">
                                    </div>
                                    <div class="button">
                                        <div class="btn saveId">保存</div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
{% endblock %}
{% block bottomScript %}
        <script src="/homeStatic/scripts/umeditor/ueditor.config.js"></script>
        <script src="/homeStatic/scripts/umeditor/ueditor.all.min.js"></script>
        <script src="/homeStatic/scripts/umeditor/lang/zh-cn/zh-cn.js"></script>
        <script src="/homeStatic/scripts/common.js"></script>
        <script type="text/javascript">
            $(function(){
                $(".nav_list .list .tit").click(function(){
                    $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
                });
                // var um = UE.getEditor('myEditor' ,{
                //     elementPathEnabled: false, //删除元素路径
                //     wordCount: false    //删除字数统计
                // });

                $('.saveId').click(function () {

                    $.ajax({
                        url: "/account/saveCompany/" + "{{ homeLogin.id }}",
                        type: "POST",
                        dataType: "json",
                        data: $('#addForm').serializeArray(),
                        success: function (e) {
                            if(e.code == "success"){
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




