{% extends 'layout.swig' %}
{% block content %}

    <div class="list_wrap">
        <div class="w1200 clr">
            {#<div class="crumbs">#}
                {#当前位置：<a href="index.html">首页</a> &gt; <a href="recommend.html">电商优选</a> &gt; 商品展示#}
            {#</div>#}
            <div class="details_brief service_brief clr">
                <div class="details_brief_left clr">
                    <div class="img fl">
                        <img src="{{ detail.image }}" width="100%" height="100%">
                    </div>
                    <div class="text">
                        <h2>{{ detail.title }}</h2>
                        <p>价格： <i class="cff3">{{ detail.jiage }}</i></p>
                        <p>产品规格：{{ detail.guige }}</p>
                        <p>产品产地：{{ detail.chandi }}</p>
                        <a href="{{ detail.link }}" class="commodity_more">我要购买</a>
                    </div>
                </div>
                <div class="details_brief_right">
                    <div class="title">公司基本信息</div>
                    <div class="brief_list">
                        <div class="list clr">
                            <div class="fl name">公司名：</div>
                            <div class="text c3">{{ detail.company.companyName }}</div>
                        </div>
                        <div class="list clr">
                            <div class="fl name">联系人：</div>
                            <div class="text">{{ detail.company.lxrname }}</div>
                        </div>
                        <div class="list clr">
                            <div class="fl name">电　话：</div>
                            <div class="text">{{ detail.company.lxrphone }}</div>
                        </div>
                        <div class="list clr">
                            <div class="fl name">邮　件：</div>
                            <div class="text">{{ detail.company.lxremail}}</div>
                        </div>
                        <div class="list clr">
                            <div class="fl name">地　址：</div>
                            <div class="text">{{ detail.company.txdz}}</div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="details_cont">
                <div class="details_tab clr">
                    <div class="list on">商品详情</div>

                </div>
                <div class="content_list">
                    <div class="content">
                        {% autoescape %}{{ detail.content }}{% endautoescape %}
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}





