{% extends 'layout.swig'  %}
{% block content %}
    <style>
        .list .title{text-align: left}
    </style>
    <div class="list_wrap">
        <div class="w1200 clr">
            {#<div class="crumbs">#}
                {#当前位置：<a href="index">首页</a> &gt; <a href="personnel.html">人才服务</a> &gt; 人才信息#}
            {#</div>#}
            <div class="personnels_cont">
                <div class="clr information_list">
                    <div class="img fl">
                        {% if detail.avatar %}
                            <img src="{{ detail.avatar }}" width="100%" height="100%">
                        {% endif %}
                    </div>
                    <div class="text">
                        <div class="title clr">
                            <h2 class="fl">{{ detail.name }}的个人简历</h2>
                            <div class="fl time">更新日期：{{ detail['updatedAt'] | date('Y-m-d') }}</div>
                        </div>
                        <div class="clr">
                            <p>性别：{{ ['男', '女'][detail.sex] }}</p>
                            <p>年龄：{{ detail.age }}</p>
                        </div>
                        <div class="clr">
                            <p>身高：{{ detail.shengao }}</p>
                            <p>婚姻状况：{{  ['已婚', '未婚'][detail.jiehun] }}</p>
                        </div>
                        <div class="clr">
                            <p>专业：{{ detail.zhuanye }}</p>
                            <p>工作经验：{{ detail.jingyan }}</p>
                        </div>
                        <div class="clr">
                            <p>联系电话：{{ detail.phone }}</p>
                            <p>邮箱：{{ detail.email }}</p>
                        </div>
                        <div class="clr">
                            <p>求职状况：{{ detail.zhuangtai }}</p>
                            <p style="width: 70%">联系地址：{{ detail.address }}</p>
                        </div>
                    </div>
                </div>
                <div class="list">
                    <div class="title title_1">求职意向</div>
                    <div class="clr">
                        <p>期望薪资：{{ detail.xinzi }}</p>
                        <p>地点：{{ detail.didian }}</p>
                        <p>职能/职位：{{ detail.zhiwei }}</p>
                    </div>
                    <div class="clr">
                        <p>行业：{{ detail.hangye }}</p>
                    </div>
                    <div class="clr">
                        <p>到岗时间：{{ detail.shijian }}</p>
                        <p>工作类型：{{ detail.leixing }}</p>
                    </div>
                </div>
                <div class="list">
                    <div class="title title_2">工作经验</div>
                    {% for key,val in detail.gongzuo %}
                    <div class="clr">
                        <p>时间：{{ val.startTime }}-{{ val.endTime }}</p>
                        <p>公司名称：{{ val.companyName }}</p>
                        <p>岗位：{{ val.gangwei }}</p>
                    </div>
                    {% endfor %}
                </div>
                <div class="list">
                    <div class="title title_3">教育经历</div>
                    {% for key,val in detail.jiaoyu %}
                    <div class="clr">
                        <p>时间：{{ val.startTime }}-{{ val.endTime }}</p>
                        <p>学校名称：{{ val.school }}</p>
                        <p>专业名称：{{ val.zhuanye }}</p>
                        <p>获得学历：{{ val.xueli }}</p>
                    </div>
                    {% endfor %}
                </div>
                <div class="list">
                    <div class="title title_4">培训经历</div>
                    {% for key,val in detail.peixun %}
                    <div class="clr">
                        <p>时间：{{ val.startTime }}-{{ val.endTime }}</p>
                        <p>培训课程：{{ val.kecheng }}</p>
                        <p>培训机构：{{ val.jigou }}</p>
                    </div>
                    <div class="clr">
                        <p>
                            培训内容：{{ val.content }}
                        </p>
                    </div>
                    {% endfor %}
                </div>
            </div>
        </div>
    </div>
{% endblock %}





