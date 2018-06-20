{% extends "layout.swig" %}
{% block seoTile %}
    {{ productDetail.title }}-
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
                            href="javascript:;" style="{% if index == 0 %}z-index: 10; opacity: 1; {% else %} z-index: 1; opacity: 0;" {% endif %}"">
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
    <div id="pages_main" class="w1000 r_t_12 n_bot">
        <div class="w1002">
            <div class="y3_fl_left">
                <div id="palclass">

                    <div class="y3_fl_left">
                        <div id="ctl00_pl_ViewSortClass2" corpsite_valuenum="2" sortclass1_valuenum="10014"
                             data-type="2">

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

                            {% include '../component/tjNews.swig' %}
                            {% include '../component/connection.swig' %}
                        </div>
                    </div>
                </div>
            </div>
            <div class="profgh"></div>
            <div class="y3_right_01 box_shadow">
                <div class="block_title">
       <span class="location">
                            您的位置：<a href="/index.html" title="网站首页">网站首页</a> &gt; <a
                   href="/productl-{{ currentCategory.id }}.html"
                   title="{{ currentCategory.name }}">{{ currentCategory.name }}</a> > {{ productDetail.title }}</span>
                </div>
                <div class="block_box ProductInfo m_12">
                    <div class="Productpic">
                        <div class="BigPicture">
                            <span>
                                <div id="wrap" style="top:0px;z-index:9;position:relative;">
                                    <a id="imgbig" href="{{ String(productDetail.image).split(',')[0] }}" class="cloud-zoom">
                                        <img class="imgsty" src="{{ String(productDetail.image).split(',')[0] }}" border="0">
                                    </a>
                                </div>
                        </span>
                    </div>
                    <div class="Thumbnaillist">
                        <div class="piclist" id="piclist">
                            <ul>
                                {% if String(productDetail.image).split(',')[0] %}
                                <li>
                                    <div class="imgborder">
                                        <a href="javascript:ShowBigA(&#39;{{ String(productDetail.image).split(',')[0] }}&#39;)"><img
                                                    src="{{ String(productDetail.image).split(',')[0] }}"
                                                    border="0" width="100" height="100" style="cursor:pointer;"></a>


                                    </div>
                                </li>
                                {% endif %}
                                {% if String(productDetail.image).split(',')[1] %}
                                <li>
                                    <div class="imgborder">
                                        <a href="javascript:ShowBigA(&#39;{{ String(productDetail.image).split(',')[1] }}&#39;)"><img
                                                    src="{{ String(productDetail.image).split(',')[1] }}"
                                                    border="0" width="100" height="100" style="cursor:pointer;"></a>


                                    </div>
                                </li>
                                {% endif %}
                                {% if String(productDetail.image).split(',')[2] %}
                                    <li>
                                        <div class="imgborder">
                                            <a href="javascript:ShowBigA(&#39;{{ String(productDetail.image).split(',')[2] }}&#39;)"><img
                                                        src="{{ String(productDetail.image).split(',')[2] }}"
                                                        border="0" width="100" height="100" style="cursor:pointer;"></a>


                                        </div>
                                    </li>
                                {% endif %}
                            </ul>
                        </div>
                    </div>
                    <script type="text/javascript"
                            src="/static/product_detail.js"></script>
                </div>
                <div class="r_info">
                    <ul>
                        <li>
                            <h1>{{ productDetail.title }}</h1>
                        </li>
                        <li>
                            <p>产品分类：{{ currentCategory.name }}</p>
                        </li>
                        <li id="LiProductBrand">
                            <p>产品品牌：{{ productDetail.brand }}</p>
                        </li>

                        <li id="LiMemberPrice"><p>会员价格：<span class="color1">￥{{ productDetail.price }}</span></p>
                        </li>
                        <li id="cp_Time"><p>发布日期：{{ productDetail.createdAt | date('Y-m-d') }}</p></li>
                        <li id="LiSimpleDescription" class="cp_jj_box">
                            <p class="cp_jj">产品简介：</p>
                            <p class="jj_text">
                                {{ productDetail.description }}
                            </p>
                        </li>
                    </ul>

                </div>
                <div class="remove"></div>
                <div class="block_title">
                    <div class="name">产品描述：</div>
                </div>
                <div class="Introduction">
                    {% autoescape %}{{ productDetail.content }}{% endautoescape %}
                </div>
            </div>
        </div>
    </div>
    <div class="remove"></div>
    </div>
{% endblock %}