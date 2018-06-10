{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    {#<div class="crumbs">#}
                        {#当前位置：<a href="index.html">首页</a> &gt; <a href="service.html">电商服务</a> &gt; 金融服务#}
                    {#</div>#}
                    <div class="details_brief service_brief clr">
                        <div class="details_brief_left clr">
                            <div class="img fl">
                                <img src="{{ detail.image }}" width="100%" height="100%">
                            </div>
                            <div class="text">
                                <h2>{{ detail.title }}</h2>
                                <p>价格： <i class="cff3">{{ detail.jiage }}</i></p>
                                <p>服务机构：<i class="c58b">{{ detail.company.companyName }}</i></p>
                                <p>服务方式：{{ detail.fanshi }}</p>
                                <p>服务对象： {{ detail.duixiang }}</p>
                                <p>服务类别：{{ detail.leibie }}</p>
                                <p>服务范围：{{ detail.fanwei }}</p>
                                <p>联系方式：{{ detail.lianxi }}</p>
                            </div>
                        </div>
                        <div class="details_brief_right">
                            <div class="title">机构信息</div>
                            <div class="brief_list">
                                <div class="list clr">
                                    <div class="fl name">机构名称：</div>
                                    <div class="text c3">{{ detail.company.companyName }}</div>
                                </div>
                                <div class="list clr">
                                    <div class="fl name">机构性质：</div>
                                    <div class="text">{{ detail.company.dwxz }}</div>
                                </div>
                                <div class="list clr">
                                    <div class="fl name">所属行业：</div>
                                    <div class="text">{{ detail.company.qyzclx }}</div>
                                </div>
                                <div class="list clr">
                                    <div class="fl name">所在地址：</div>
                                    <div class="text">{{ detail.company.txdz }}</div>
                                </div>
                                <div class="list clr">
                                    <div class="fl name">公司网址：</div>
                                    <div class="text"><a target="_blank">{{ detail.company.gswz }}</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="details_cont">
                        <div class="details_tab clr">
                            <div class="list on">服务详情</div>
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


