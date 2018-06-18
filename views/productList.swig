{% extends "./layout.swig" %}
{% block seoTile %}
    {{ currentCategory.name }}列表-
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
<div id="main">
    <div class="procount">
        <div class="w1002">
            <div id="pl_Main">

                <div class="y3_fl_left">
                    <div id="ctl00_pl_ViewSortClass2" corpsite_valuenum="2" sortclass1_valuenum="10014" data-type="2">

                        <ul class="left_nav box_shadow">
                            {% for item in productCategory %}
                                {% if item.level == 1 %}
                                    <li>
                                        <div class="nav_title">
                                            <a href="/{{ item.type }}l-{{ item.id }}.html"
                                               title="产品分类">{{ item.name }}</a>
                                        </div>
                                    </li>
                                {% endif %}
                                {% if item.level == 2 %}
                                    <li>
                                            <span class="nav_one">
                                                <a href="/{{ item.type }}l-{{ item.id }}.html"
                                                   title="{{ item.name }}">{{ item.name }}</a></span>
                                        <div class="ejfl">
                                            {% for item in productCategory %}
                                                {% if item.level == 3 %}
                                                    <span><a href="/{{ item.type }}l-{{ item.id }}.html"
                                                             title="{{ itemname }}">{{ item.name }}</a></span>
                                                {% endif %}
                                            {% endfor %}
                                        </div>
                                        <div class="remove"></div>
                                    </li>
                                {% endif %}
                            {% endfor %}
                        </ul>
                        {% include './component/tjNews.swig' %}
                        {% include './component/connection.swig' %}
                    </div>
                </div>
                <div class="profgh"></div>
                <div class="y3_right_01 box_shadow">
                    <div class="block_title">
                            <span class="location">
                            您的位置：<a href="/index.html" title="网站首页">网站首页</a> &gt; <a
                                        href="/productl-{{ currentCategory.id }}.html"
                                        title="{{ currentCategory.name }}">{{ currentCategory.name }}</a></span>
                        <div class="name">
                            <span title="{{ currentCategory.name }}">{{ currentCategory.name }}</span></div>
                    </div>
                    <div class="y3_cplistbox">
                        <div id="ctl02_pl_ViewSortClass2" corpsite_valuenum="2" sortclass1_valuenum="10015"
                             data-type="2">


                            <div class="cplist">
                                <ul>
                                    {% for item in productList.rows %}
                                        <li>
                                            <div class="pic"><span>
                                                    <a title="{{ item.name }}"
                                                       href="/productd-{{ item.id }}.html"><img
                                                                src="{{ String(item.image).split(',')[0] }}" border="0"
                                                                alt="{{ item.title }}"
                                                                title="{{ item.title }}"></a></span></div>
                                            <p><a title="{{ item.title }}"
                                                  href="/productd-{{ item.id }}.html">{{ item.title }}</a>
                                            </p>
                                        </li>
                                    {% endfor %}
                                </ul>
                                <div class="remove"></div>
                                {#<div class="Pagebox r_t_12">#}
                                {#<table border="0" align="center" cellpadding="0" cellspacing="0">#}
                                {#<tbody>#}
                                {#<tr>#}
                                {#<td align="center" class="PageStyle">#}

                                {#<!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->#}
                                {#<div id="ctl02_ctl00_anpPaging">#}
                                {#<a disabled="true">首页</a><a disabled="true">上页</a><span class="cpb">1</span><a#}
                                {#href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-2.html">2</a><a#}
                                {#href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-3.html">3</a><a#}
                                {#href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-2.html">下页</a><a#}
                                {#href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-3.html">末页</a>&nbsp;&nbsp;转到第&nbsp;<input#}
                                {#type="text" value="1" class="inputbox"#}
                                {#name="ctl02$ctl00$anpPaging_input"#}
                                {#id="ctl02$ctl00$anpPaging_input"#}
                                {#onkeydown="ANP_keydown(event,&#39;ctl02$ctl00$anpPaging_btn&#39;);"#}
                                {#style="width:30px;">&nbsp;页&nbsp;<input type="Button"#}
                                {#name="ctl02$ctl00$anpPaging"#}
                                {#id="ctl02$ctl00$anpPaging_btn"#}
                                {#value="跳转"#}
                                {#class="btnGo"#}
                                {#onclick="if(ANP_checkInput(&#39;ctl02$ctl00$anpPaging_input&#39;,3)){ANP_goToPage(document.getElementById(&#39;ctl02$ctl00$anpPaging_input&#39;));}">#}
                                {#</div>#}
                                {#<!-- AspNetPager V6.0.0 for VS2005 End -->#}


                                {#</td>#}
                                {#</tr>#}
                                {#</tbody>#}
                                {#</table>#}
                                {#</div>#}
                                <div class="remove"></div>
                            </div>
                            <div class="cp_xg r_t_12">
                                <div class="block_title">
                                    <div class="name">
                                        <a href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-1.html"
                                           title="推荐产品">推荐产品</a></div>
                                </div>
                                <div class="cplist">
                                    <div>
                                        <ul id="contentlistRecommend">
                                            {% for item in tjProduct %}
                                                <li>
                                                    <div class="pic">
                                                        <span>
                                                            <a href="/productd-{{ item.id }}.html" title="{{ item.title }}">
                                                                <img src="{{ String(item.image).split(',')[0] }}" alt="" border="0"></a></span></div>
                                                    <p>
                                                        <a href="/productd-{{ item.id }}.html"
                                                           title="{{ item.title }}">{{ item.title }}</a></p>
                                                </li>
                                            {% endfor %}
                                        </ul>
                                    </div>
                                    <div class="remove">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="remove">
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="remove"></div>
</div>
{% endblock %}