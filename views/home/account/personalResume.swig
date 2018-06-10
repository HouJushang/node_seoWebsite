{% extends '../layout.swig' %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatar.swig' %}
                <div class="nav_list">
                    <div class="list">
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
                    <div class="list on">
                        <div class="tit">我的简历</div>
                        <dl>
                            <dd class="on">
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
                    <div class="list_title"><i>我的简历</i></div>
                    <form id="addForm">
                        <input type="hidden" name="id" value="{{ detail.id }}">
                        <div class="list_personal">
                            <div class="basic_title"><i>*</i>头像</div>
                                <div class="con clr">
                                    <input type="hidden" name="avatar" value="{{ detail.avatar }}" id="avatarInput">
                                    {% if detail.avatar %}
                                        <img class="img_tx fl" src="{{ detail.avatar }}" id="avatarBox" width="250" height="320">
                                    {% else %}
                                        <img class="img_tx fl" src="" id="avatarBox" width="250" height="320" style="display: none;">
                                    {% endif %}
                                    <div class="operation">
                                        <div class="btn" id="logo_web" style="padding: 5px; background-color: #409EFF; display: inline-block; border-radius: 3px; color: #fff; font-size: 12px; margin-top: 10px;">上传图片</div>
                                    </div>
                                </div>
                            <div class="basic_title"><i>*</i>基本信息</div>
                            <div class="clr">
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">姓名：</div>
                                    <div class="con">
                                        <input type="text" required name="name" value="{{ detail.name }}" placeholder="请输入姓名">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">性别：</div>
                                    <div class="con">
                                        <select name="sex" value="{{ detail.sex }}">
                                            <option value="0">男</option>
                                            <option value="1">女</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">年龄：</div>
                                    <div class="con">
                                        <input name="age" value="{{ detail.age }}" type="text" placeholder="请输入年龄">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">身高：</div>
                                    <div class="con">
                                        <input type="text" name="shengao" value="{{ detail.shengao }}" placeholder="请输入身高">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">婚姻状况：</div>
                                    <div class="con">
                                        <select name="jiehun" value="{{ detail.jiehun }}">
                                            <option value="0">未婚</option>
                                            <option value="1">已婚</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">毕业学校：</div>
                                    <div class="con">
                                        <input type="text" value="{{ detail.school }}" name="school" placeholder="请输入毕业学校">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">学历：</div>
                                    <div class="con">
                                        <input type="text" value="{{ detail.xueli }}" name="xueli" placeholder="请输入学历">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">专业：</div>
                                    <div class="con">
                                        <input type="text" value="{{ detail.zhuanye }}" name="zhuanye" placeholder="请输入专业">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">工作经验：</div>
                                    <div class="con">
                                        <input type="text" name="jiangyan" value="{{ detail.jiangyan }}" placeholder="请输入工作经验">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">联系电话：</div>
                                    <div class="con">
                                        <input type="text" name="phone" value="{{ detail.phone }}" placeholder="请输入联系电话">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">邮箱：</div>
                                    <div class="con">
                                        <input type="text" name="email" value="{{ detail.email }}" placeholder="请输入邮箱">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">求职状态：</div>
                                    <div class="con">
                                        <input type="text" name="zhuangtai" value="{{ detail.zhuangtai }}" placeholder="请输入求职状态">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd14 fl">通讯地址：</div>
                                    <div class="con">
                                        <input type="text" name="address" value="{{ detail.address }}" placeholder="请输入通讯地址">
                                    </div>
                                </div>
                            </div>

                            <div class="basic_title"><i>*</i>求职意向</div>
                            <div class="clr">
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">期望薪资(元/月)：</div>
                                    <div class="con clr">
                                        <input class="w45 fl" name="xinzi" value="{{ detail.xinzi }}" type="text">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">工作地点：</div>
                                    <div class="con clr">
                                        <input type="text" name="didian" value="{{ detail.didian }}" placeholder="请输入工作地点">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">职位：</div>
                                    <div class="con clr">
                                        <input type="text" name="zhiwei" value="{{ detail.zhiwei }}" placeholder="请输入职位">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">行业：</div>
                                    <div class="con clr">
                                        <input type="text" name="hangye" value="{{ detail.hangye }}" placeholder="请输入行业">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">到岗时间：</div>
                                    <div class="con clr">
                                        <input type="text" name="shijian" value="{{ detail.shijian }}">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">工作类型：</div>
                                    <div class="con clr">
                                        <input type="text" name="leixing" value="{{ detail.leixing }}">
                                    </div>
                                </div>
                            </div>

                            <div class="basic_title"><i>*</i>教育经历</div>
                            <div class="clr">
                                <div class="jiaoyuContent">
                                    {% for key,val in detail.jiaoyu %}
                                        <div class="jiaoyuItem">
                                            <div class="from_list fl w5 clr">
                                                <div class="tit wd14 fl">时间：</div>
                                                <div class="con clr">
                                                    <input class="w45 fl time" name="jiaoyu[{{ key }}].startTime" value="{{ val.startTime }}" type="text" placeholder="开始时间">
                                                    <em class="fl transverse"></em>
                                                    <input class="w45 fl time" name="jiaoyu[{{ key }}].endTime" value="{{ val.endTime }}" type="text" placeholder="结束时间">
                                                </div>
                                            </div>
                                            <div class="from_list fr w5 clr">
                                                <div class="tit wd14 fl">学校名称：</div>
                                                <div class="con clr">
                                                    <input type="text" name="jiaoyu[{{ key }}].school" value="{{ val.school }}" placeholder="请输入学校名称">
                                                </div>
                                            </div>
                                            <div class="from_list fl w5 clr">
                                                <div class="tit wd14 fl">专业名称：</div>
                                                <div class="con clr">
                                                    <input type="text" name="jiaoyu[{{ key }}].zhuanye" value="{{ val.zhuanye }}" placeholder="请输入专业名称">
                                                </div>
                                            </div>
                                            <div class="from_list fr w5 clr">
                                                <div class="tit wd14 fl">获得学历：</div>
                                                <div class="con clr">
                                                    <input type="text" name="jiaoyu[{{ key }}].xueli" value="{{ val.xueli }}" placeholder="请输入获得学历">
                                                </div>
                                            </div>
                                        </div>
                                    {% endfor %}
                                </div>
                                <div class="add_input fl w10">
                                    <div class="btn addJiaoyu">新增教育经历</div>
                                </div>
                            </div>
                            <div class="basic_title">工作经验</div>
                            <div class="clr">
                                <div class="gongzuoContent">
                                    {% for key,val in detail.gongzuo %}
                                        <div class="jingyanItem">
                                            <div class="from_list fl w5 clr">
                                                <div class="tit wd14 fl">时间：</div>
                                                <div class="con clr">
                                                    <input class="w45 fl time" name="gongzuo[{{ key }}].startTime" value="{{ val.startTime }}" type="text"
                                                           placeholder="开始时间">
                                                    <em class="fl transverse"></em>
                                                    <input class="w45 fl time" name="gongzuo[{{ key }}].endTime" value="{{ val.endTime }}" type="text"
                                                           placeholder="结束时间">
                                                </div>
                                            </div>
                                            <div class="from_list fr w5 clr">
                                                <div class="tit wd14 fl">岗位：</div>
                                                <div class="con clr">
                                                    <input type="text" name="gongzuo[{{ key }}].gangwei" value="{{ val.gangwei }}" placeholder="请输入岗位">
                                                </div>
                                            </div>
                                            <div class="from_list fl w10 clr">
                                                <div class="tit wd14 fl">公司名：</div>
                                                <div class="con clr">
                                                    <input type="text" name="gongzuo[{{ key }}].companyName" value="{{ val.companyName }}" placeholder="请输入公司名">
                                                </div>
                                            </div>
                                        </div>
                                    {% endfor %}
                                </div>
                                <div class="add_input fl w10">
                                    <div class="btn addGongzuo">新增工作经验</div>
                                </div>
                            </div>

                            <div class="basic_title">培训经历</div>
                            <div class="clr">
                                <div class="peixunContent">
                                    {% for key,val in detail.peixun %}
                                    <div class="peixunItem">
                                        <div class="from_list fl w5 clr">
                                            <div class="tit wd14 fl">时间：</div>
                                            <div class="con clr">
                                                <input class="w45 fl time" name="peixun[{{ key }}].startTime" value="{{ val.startTime }}" type="text" placeholder="开始时间">
                                                <em class="fl transverse"></em>
                                                <input class="w45 fl time" name="peixun[{{ key }}].endTime" value="{{ val.endTime }}" type="text" placeholder="结束时间">
                                            </div>
                                        </div>
                                        <div class="from_list fr w5 clr">
                                            <div class="tit wd14 fl">培训课程：</div>
                                            <div class="con clr">
                                                <input type="text" name="peixun[{{ key }}].kecheng" value="{{ val.kecheng }}" placeholder="请输入培训课程">
                                            </div>
                                        </div>
                                        <div class="from_list fl w5 clr">
                                            <div class="tit wd14 fl">培训机构：</div>
                                            <div class="con clr">
                                                <input type="text" name="peixun[{{ key }}].jigou" value="{{ val.jigou }}" placeholder="请输入培训机构">
                                            </div>
                                        </div>
                                        <div class="from_list fl w10 clr">
                                            <div class="tit wd14 fl">培训内容：</div>
                                            <div class="con clr">
                                                <input name="peixun[{{ key }}].content" value="{{ val.content }}" />
                                            </div>
                                        </div>
                                    </div>
                                    {% endfor %}
                                </div>
                                <div class="add_input fl w10">
                                    <div class="btn addPeixun">新增培训经历</div>
                                </div>
                            </div>

                            <div class="button">
                                <div class="btn saveForm">保存</div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


{% endblock %}
{% block bottomScript %}
    {% raw %}
        <script id="jiaoyu-template" type="text/x-handlebars-template">
            <div class="jiaoyuItem">
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">时间：</div>
                    <div class="con clr">
                        <input class="w45 fl time" name="jiaoyu[{{ arrayIndex }}].startTime" type="text" placeholder="开始时间">
                        <em class="fl transverse"></em>
                        <input class="w45 fl time" name="jiaoyu[{{ arrayIndex }}].endTime" type="text" placeholder="结束时间">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">学校名称：</div>
                    <div class="con clr">
                        <input type="text" name="jiaoyu[{{ arrayIndex }}].school" placeholder="请输入学校名称">
                    </div>
                </div>
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">专业名称：</div>
                    <div class="con clr">
                        <input type="text" name="jiaoyu[{{ arrayIndex }}].zhuanye" placeholder="请输入专业名称">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">获得学历：</div>
                    <div class="con clr">
                        <input type="text" name="jiaoyu[{{ arrayIndex }}].xueli" placeholder="请输入获得学历">
                    </div>
                </div>
            </div>
        </script>

        <script id="gongzuo-template" type="text/x-handlebars-template">
            <div class="jingyanItem">
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">时间：</div>
                    <div class="con clr">
                        <input class="w45 fl time" name="gongzuo[{{ gongzuoIndex }}].startTime" type="text"
                               placeholder="开始时间">
                        <em class="fl transverse"></em>
                        <input class="w45 fl time" name="gongzuo[{{ gongzuoIndex }}].endTime" type="text"
                               placeholder="结束时间">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">岗位：</div>
                    <div class="con clr">
                        <input type="text" name="gongzuo[{{ gongzuoIndex }}].gangwei" placeholder="请输入岗位">
                    </div>
                </div>
                <div class="from_list fl w10 clr">
                    <div class="tit wd14 fl">公司名：</div>
                    <div class="con clr">
                        <input type="text" name="gongzuo[{{ gongzuoIndex }}].companyName" placeholder="请输入公司名">
                    </div>
                </div>
            </div>
        </script>

        <script id="peixun-template" type="text/x-handlebars-template">
            <div class="peixunItem">
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">时间：</div>
                    <div class="con clr">
                        <input class="w45 fl time" name="peixun[{{ peixunIndex }}].startTime" type="text" placeholder="开始时间">
                        <em class="fl transverse"></em>
                        <input class="w45 fl time" name="peixun[{{ peixunIndex }}].endTime" type="text" placeholder="结束时间">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">培训课程：</div>
                    <div class="con clr">
                        <input type="text" name="peixun[{{ peixunIndex }}].kecheng" placeholder="请输入培训课程">
                    </div>
                </div>
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">培训机构：</div>
                    <div class="con clr">
                        <input type="text" name="peixun[{{ peixunIndex }}].jigou" placeholder="请输入培训机构">
                    </div>
                </div>
                <div class="from_list fl w10 clr">
                    <div class="tit wd14 fl">培训内容：</div>
                    <div class="con clr">
                        <input name="peixun[{{ peixunIndex }}].content" />
                    </div>
                </div>
            </div>
        </script>
    {% endraw %}
    {#<script src="/homeStatic/scripts/My97DatePicker/WdatePicker.js"></script>#}
    <script src="/homeStatic/scripts/webuploader.min.js"></script>
    <script src="/homeStatic/scripts/handlebars.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".nav_list .list .tit").click(function () {
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });
            // var um = UE.getEditor('myEditor' ,{
            //     elementPathEnabled: false, //删除元素路径
            //     wordCount: false    //删除字数统计
            // });
            var arrayIndex = {% if detail.jiaoyu %}{{  detail.jiaoyu.length }}{% else %}0{% endif %} ,
                gongzuoIndex = {% if detail.gongzuo %}{{  detail.jiaoyu.length }}{% else %}0{% endif %} ,
                peixunIndex = {% if detail.peixun %}{{  detail.peixun.length }}{% else %}0{% endif %};
            $('.addJiaoyu').click(function () {
                var source = document.getElementById("jiaoyu-template").innerHTML;
                var template = Handlebars.compile(source);
                var context = {
                    arrayIndex: arrayIndex,
                }
                var html = template(context);
                $('.jiaoyuContent').append(html);
                arrayIndex++
            }){% if !detail %}.trigger('click');{% endif %}

            $('.addGongzuo').click(function () {
                var source = document.getElementById("gongzuo-template").innerHTML;
                var template = Handlebars.compile(source);
                var context = {
                    gongzuoIndex: gongzuoIndex,
                }
                var html = template(context);
                $('.gongzuoContent').append(html);
                gongzuoIndex++
            }){% if !detail %}.trigger('click');{% endif %}

            $('.addPeixun').click(function () {
                var source = document.getElementById("peixun-template").innerHTML;
                var template = Handlebars.compile(source);
                var context = {
                    peixunIndex: peixunIndex,
                }
                var html = template(context);
                $('.peixunContent').append(html);
                peixunIndex++
            }){% if !detail %}.trigger('click');{% endif %}

            var avatar = "";
            uploader("#logo_web","gif,jpg,jpeg,bmp,png","image/*",2,function(e){
                avatar = e.data.url;
                $('#avatarBox').attr('src', '/' + avatar).show();
                $('#avatarInput').val('/' + avatar)
            });

            $('.saveForm').click(function(){
                $.ajax({
                    url: "/account/addResume",
                    type: "POST",
                    dataType: "json",
                    data: $('#addForm').serializeArray(),
                    success: function (e) {
                        if(e.code == "success"){
                            window.location.href = "/account/resumeM"
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}





