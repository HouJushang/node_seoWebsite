{% extends 'layout.swig'  %}
{% block content %}

        <div class="list_wrap">
            <div class="w1200 clr">
                {#<div class="crumbs">#}
                    {#当前位置：<a href="index">首页</a> &gt; <a href="personnel.html">人才服务</a> &gt; 企业招聘#}
                {#</div>#}
                <div class="personnels_cont">
                    <h2 class="title">{{ detail.title }}</h2>
                    <div class="clr brief">
                        <p>公司名称：{{ detail.company.companyName }}</p>
                        <p>工作性质：{{ detail.xingzhi }}</p>
                        <p>职位名称：{{ detail.name }}</p>
                        <p>工作经验：{{ detail.jiangyan }}</p>
                        <p>招聘人数：{{ detail.renshu }}</p>
                        <p>学历要求：{{ detail.xueli }}</p>
                        <p>工作地点：{{ detail.address }}</p>
                        <p>年龄要求：{{ detail.nianling }}</p>
                        <p>薪酬范围：{{ detail.xinchou }}</p>
                        <p>发布日期：2017-06-01</p>
                    </div>
                    <div class="con">
                        <div class="tit">职位信息</div>
                        <div class="content">
                            {% autoescape %}{{ detail.xiangqing }}{% endautoescape %}
                        </div>
                    </div>
                </div>
            </div>
        </div>

{% endblock %}





