{% extends "./layout.swig" %}
{% block content %}
    <link href="/static/A(1).css" rel="stylesheet">
    <script src="/static/a(1).js" type="text/javascript"></script>
    <div class="gg" id="gg" style="height: 420px; width: 100%;">
        <div class="ggLoading">
            <div class="ggLoading2"><span>百叶窗图片载入中</span></div>
        </div>
        <div class="ggs" style="height:420px;">
            <div class="ggBox" id="ggBox" style="width:1920px;height:420px;">
                {% for index,item in banner %}
                    <a href="javascript:;" style="{% if index == 0 %}z-index: 10; opacity: 1; {% else %} z-index: 1; opacity: 0;" {% endif %}" title="banner2">
                    <img src="{{ item.image }}" width="1920" height="420"></a>
                {% endfor %}
            </div>
        </div>
        <div class="ggb">
            <div class="ggBtns" id="ggBtns">
                <div class="right_a">
                    {% for index,item in banner %}
                        <a title="1" href="javascript:void(0)" {% if index == 0 %}class="ggOn"{% endif %}><span></span></a>
                    {% endfor %}
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <div id="main">
        <div id="pl_Main">
            <div class="y200_Content h_bot">
                <div class="y200_main">
                    <div id="ctl00_pl_ViewSortClass2" corpsite_valuenum="1" sortclass1_valuenum="10005" data-type="2">
                        <div class="y3_fl_left wow bounceInLeft" data-wow-duration="1.5s" data-wow-delay="0.3s">
                            <ul class="left_nav box_shadow">
                                {% for item in productCategory %}
                                    {% if item.level == 1 %}
                                        <li>
                                            <div class="nav_title">
                                                <a>{{ item.name }}</a>
                                            </div>
                                        </li>
                                    {% endif %}
                                    {% if item.level == 2 %}
                                        <li>
                                            <span class="nav_one">
                                                <a>{{ item.name }}</a>
                                            </span>
                                            <div class="ejfl">
                                                {% for item in productCategory %}
                                                    {% if item.level == 3 %}
                                                        <span><a href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html"
                                                                 title="{{ itemname }}">{{ item.name }}</a></span>
                                                    {% endif %}
                                                {% endfor %}
                                            </div>
                                            <div class="remove"></div>
                                        </li>
                                    {% endif %}
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="fgh"></div>
                        <div class="y3_right_01 box_shadow wow bounceInRight" data-wow-duration="1.5s"
                             data-wow-delay="0.3s">
                            <div class="block_title">
                                <div class="name">
                                    <div class="tab_box">
                                        <ul>
                                            <li class="Current"><span>推荐产品</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="y3_cplistbox">
                                <div class="cplist">
                                    <div class="cplist" id="product_desc_1" style="display: block;">
                                        <ul>
                                            {% for item in topProduct %}
                                                <li>
                                                    <div class="pic">
                                                <span><a href="/w-{{ websiteId }}/productd-{{ item.id }}.html"
                                                         title="{{ item.title }}">
                                                <img src="{{ item.image }}" border="0"></a></span>
                                                    </div>
                                                    <p>
                                                        <a href="/w-{{ websiteId }}/productd-{{ item.id }}.html"
                                                           title="{{ item.title }}">{{ item.title }}</a>
                                                    </p>
                                                </li>
                                            {% endfor %}
                                        </ul>
                                        <div class="remove">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="remove"></div>
            </div>
            <div class="HomeBanner_x h_bot" style="Height:80px;">
                <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">
                    <img src="{{ indexInfo.image1 }}" alt="测量仪" title="测量仪" border="0">
                </div>
            </div>
            <div class="y200_Content h_bot">
                <div class="y3_witness">
                    <div id="ctl02_pl_ViewSortClass2" corpsite_valuenum="1" sortclass1_valuenum="10007" data-type="2">

                        <div class="gy_box box_shadow wow bounceInLeft" data-wow-duration="1.5s" data-wow-delay="0.3s">
                            <div class="block_title">
                                <div class="r"></div>
                                <div class="l"></div>
                                <div class="name">
                                    <a href="http://y200-2500-27.jz60.com/cn/singleclasspage-925101-1.html">
                                        关于我们</a></div>
                            </div>
                            <div class="block_box">
                                <div class="gy_list">
                                    <div class="gy_v">
                                        <div class="img_box">
                                            <p>
                                                <img src="{{ indexInfo.aboutImg }}" width="300" alt="">
                                            </p>
                                        </div>
                                        <div id="ctl02_ctl00_strong">
                                            <strong><a class="index_new_title"
                                                       href="http://y200-2500-27.jz60.com/cn/singleclasspage-925101-1.html"
                                                       title="建站专家">
                                                </a></strong></div>
                                    </div>
                                    <div class="text_box">
                                        {{ indexInfo.aboutInfo }}
                                        <div class="remove">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="remove"></div>
                </div>
                <div class="h_bot">
                    <div class="HomeBanner_x" style="height:161px;">
                        <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img
                                    src="{{ indexInfo.image2 }}" width="100%" border="0"></div>
                    </div>
                    <div class="HomeBanner_x" style="height:398px;">
                        <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img
                                    src="{{ indexInfo.img_1 }}" width="100%" border="0">
                        </div>
                    </div>
                    <div class="HomeBanner_x" style="height:399px;">
                        <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img
                                    src="{{ indexInfo.img_2 }}" width="100%" border="0">
                        </div>
                    </div>
                    <div class="HomeBanner_x" style="height:399px;">
                        <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img
                                    src="{{ indexInfo.img_3 }}" width="100%" border="0">
                        </div>
                    </div>
                    <div class="HomeBanner_x" style="height:399px;">
                        <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img
                                    src="{{ indexInfo.img_4 }}" width="100%" border="0">
                        </div>
                    </div>
                    <div class="remove"></div>
                </div>
                <div class="HomeBanner_x h_bot" style="Height:80px;">
                    <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">
                        <img src="{{ indexInfo.image3 }}" border="0">
                    </div>
                </div>
                <div class="y200_Content h_bot">
                    <div class="w1002 xw_lx">
                        <div class="homenews">
                            {% for item in allIndexNewsCategory %}
                                <div id="ctl06_pl_ViewSortClass2" corpsite_valuenum="1" sortclass1_valuenum="10011"
                                     data-type="2">
                                    <div class="industry_news box_shadow wow bounceInLeft" data-wow-duration="1.5s"
                                         data-wow-delay="0.3s">
                                        <div class="block_title">
                                            <span class="location_a">
                                                <a href="/w-{{ websiteId }}/newsl-{{ item.id }}.html" title="{{ item.name }}">更多</a>
                                            </span>
                                            <div class="name">
                                                <a href="/w-{{ websiteId }}/newsl-{{ item.id }}.html"
                                                   title="{{ item.name }}">{{ item.name }}</a>
                                            </div>
                                        </div>
                                        <div class="block_box index_news_box">
                                            {% if item.firstNews %}
                                            <div class="news_illustration">
                                                <div class="newpic"><span><a
                                                                href="/w-{{ websiteId }}/newsd-{{ item.firstNews.id }}.html"
                                                                title="{{ item.firstNews.title }}"><img
                                                                    src="{{ item.firstNews.thumb }}"
                                                                    alt="{{ item.firstNews.title }}"></a></span></div>
                                                <a href="/w-{{ websiteId }}/newsd-{{ item.firstNews.id }}.html"
                                                   title="{{ item.firstNews.title }}"><h3
                                                            class="index_new_title">{{ item.firstNews.title }}</h3>
                                                </a>
                                                <p class="index_new">{{ item.firstNews.description }}<a
                                                            href="/w-{{ websiteId }}/newsd-{{ item.firstNews.id }}.html"
                                                            title="{{ item.firstNews.title }}" class="xiangxi">[详细]</a>
                                                </p>
                                                <div class="remove">
                                                </div>
                                            </div>
                                            {% endif %}
                                            <div class="news_list">
                                                <div id="list_none" class="common_li">
                                                    <ul>
                                                        {% for item2 in item.newsList %}
                                                            <li>
                                                                <a href="/w-{{ websiteId }}/newsd-{{ item2.id }}.html"
                                                                   title="{{ item2.title }}">{{ item2.title }}</a>
                                                            </li>
                                                        {% endfor %}
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="remove">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cfgh"></div>
                                </div>

                            {% endfor %}
                        </div>
                    </div>
                    <div class="remove"></div>
                </div>
                <div class="w1000 f_link h_bot wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                    <div class="block_title_a">
                        <div class="name_a" title="友情链接">
                            友情链接
                        </div>
                    </div>
                    <div class="block_box">
                        <div class="linkbox">
                            {% for item in link %}
                                <span><a href="{{ item.link }}" target="_blank" title="汽车之家">
                        {{ item.title }}</a></span>
                            {% endfor %}


                            <div class="remove">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="remove"></div>
        </div>
{% endblock %}