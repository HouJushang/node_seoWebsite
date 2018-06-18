{% extends "./layout.swig" %}
{% block seoTile %}
    关于我们-
{% endblock %}
{% block content %}
<link href="/static/A(1).css" rel="stylesheet">
<script src="/static/a(1).js" type="text/javascript"></script>
<div class="main_banner">
    <div class="gg" id="gg" style="height: 220px; width: 100%;">
        <div class="ggLoading">
            <div class="ggLoading2"><span>百叶窗图片载入中</span></div>
        </div>
        <div class="ggs" style="height:220px;">
            <div class="ggBox" id="ggBox" style="width:1920px;height:220px;">
                <div class="ggBox" id="ggBox" style="width:1920px;height:420px;">
                    {% for index,item in banner %}
                        <a
                        href="javascript:;" style="{% if index == 0 %}z-index: 10; opacity: 1; {% else %} z-index: 1; opacity: 0;" {% endif %}" title="banner2">
                        <img src="{{ item.image }}" width="1920" height="220"></a>
                    {% endfor %}
                </div>
            </div>
            <div class="ggb">
                <div class="ggBtns" id="ggBtns">
                    <div class="right_a">
                        {% for index,item in banner %}
                            <a title="1" href="javascript:void(0)"
                               {% if index == 0 %}class="ggOn"{% endif %}><span></span></a>
                        {% endfor %}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<div id="main">
    <div class="procount">
        <div class="w1002">

            <div class="pages_left y3_fl_left">
                <ul class="left_nav box_shadow">
                    <li class="Current"><span><a href="/aboutl-{{ currentCategory.id }}.html">关于我们</a></span>
                        <div class="ejfl">
                            {% for item in allAbout %}
                            <span><a href="/aboutd-{{ item.id }}.html"
                                     title="{{ item.title }}">{{ item.title }}</a></span>
                            {% endfor %}
                            <div class="remove"></div>
                        </div>
                    </li>
                </ul>
                {% include './component/tjNews.swig' %}
                {% include './component/connection.swig' %}
            </div>
            <div class="profgh"></div>
            <div class="y3_right_01 box_shadow">
                <div class="block_title">
    <span class="location">
        您的位置：<a href="/index.html" title="网站首页">网站首页</a> &gt; <a
                href="/aboutl-{{ currentCategory.id }}.html"
                title="{{ currentCategory.name }}">{{ currentCategory.name }}</a></span>
                    <div class="name">{{ currentCategory.name }}</div>
                </div>
                <div class="y5_abou_us_box">
                    <div class="single_page_box">
                        {% autoescape %}{{ aboutDetail.content }}{% endautoescape %}
                    </div>
                </div>
                <div class="remove"></div>
            </div>
            <div class="remove"></div>
        </div>
    </div>
</div>
{% endblock %}