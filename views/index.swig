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
                        {% for index,item in banner  %}
                            <a href="javascript:;" style="{% if index == 0 %}z-index: 10; opacity: 1; {% else %} z-index: 1; opacity: 0;" {% endif %}" title="banner2"><img src="{{ item.image }}" width="1920" height="420"></a>
                        {% endfor %}
                    </div>
                </div>
                <div class="ggb">
                    <div class="ggBtns" id="ggBtns"><div class="right_a">
                            {% for index,item in banner  %}
                                <a title="1" href="javascript:void(0)" {% if index == 0 %}class="ggOn"{% endif %}><span></span></a>
                            {% endfor %}
                        </div>
                    </div></div></div>
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
                                    {% if item.level == 1  %}
                                        <li>
                                            <div class="nav_title">
                                                <a href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html" title="产品分类">{{ item.name }}</a>
                                            </div>
                                        </li>
                                    {% endif %}
                                    {% if item.level == 2  %}
                                        <li>
                                            <span class="nav_one"><a href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html" title="{{ item.name }}">{{ item.name }}</a></span>
                                            <div class="ejfl">
                                                {% for item in productCategory %}
                                                    {% if item.level == 3  %}
                                                        <span><a href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html" title="{{ itemname }}">
                                    {{ item.name }}</a></span>
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
                        <div class="y3_right_01 box_shadow wow bounceInRight" data-wow-duration="1.5s" data-wow-delay="0.3s">
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
                                                <span><a href="/w-{{ websiteId }}/productd-{{ item.id }}.html" title="{{ item.title }}">
                                                <img src="{{ item.image }}" border="0"></a></span>
                                                </div>
                                                <p>
                                                    <a href="/w-{{ websiteId }}/productd-{{ item.id }}.html" title="{{ item.title }}">{{ item.title }}</a>
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
                <div class="w1002 y3_witness">
                    <div id="ctl02_pl_ViewSortClass2" corpsite_valuenum="1" sortclass1_valuenum="10007" data-type="2">

                        <div class="gy_box box_shadow wow bounceInLeft" data-wow-duration="1.5s" data-wow-delay="0.3s">
                            <div class="block_title">
                                <div class="r"></div>
                                <span class="location_a"><a href="http://y200-2500-27.jz60.com/cn/singleclasspage-925101-1.html" class="gd" alt="更多" title="更多">
            更多</a></span>
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
                                                <iframe allowfullscreen="" frameborder="0" height="230" src="/static/v.html" width="380"></iframe></p>

                                        </div>
                                        <div id="ctl02_ctl00_strong">
                                            <strong><a class="index_new_title" href="http://y200-2500-27.jz60.com/cn/singleclasspage-925101-1.html" title="建站专家">
                                                    建站专家</a></strong></div>
                                    </div>
                                    <div class="text_box">

                                        深圳市综元量测精密仪器仪表公司是一家专注精密仪器研发的公司，是集科研、生产制造、营销为一体的综合性企业。主要研发生产安全防护类设备，例如：电力电工仪表、工业测量类、影像测量仪、三坐标测量仪等精密测量仪器仪表，同时，我们还根据的客户的的需求，提供科学、有效的安全防护解决方案。 综元量测立足于中国市场，依托公司全.
                                        <a href="http://y200-2500-27.jz60.com/cn/singleclasspage-925101-1.html" title="关于我们" class="xiangxi">[详细]</a></div>
                                    <div class="remove">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="fgh"></div>
                        <div class="ry_box index_lx box_shadow wow bounceInRight" data-wow-duration="1.5s" data-wow-delay="0.3s">
                            <div class="block_title">
                                <span class="location_a"> <a href="http://y200-2500-27.jz60.com/cn/singleclassimage-925101-2.html" alt="荣誉资质" title="荣誉资质">更多</a></span>
                                <div class="name"><a href="http://y200-2500-27.jz60.com/cn/singleclassimage-925101-2.html" alt="荣誉资质" title="荣誉资质">荣誉资质</a></div>
                            </div>
                            <div class="scrollbox1">
                                <div class="left_arrow" id="singleImage_btn_focus_next">
                                    <img src="/static/Y200-2500-2737_20170929175629.gif" border="0" alt="左" title="左"></div>
                                <div class="container" id="singleImageList" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 230px;">
                                    <ul style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 1150px; left: -460px;"><li style="float: left; width: 230px; height: 258px;"><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102793-2.html"><img src="/static/2_X200_20150716144102.jpg" alt="东莞长安加盟店" title="东莞长安加盟店" border="0" height="108" width="154"></a></span></div><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102794-2.html"><img src="/static/2_X200_20150716144119.jpg" alt="清远清城加盟店" title="清远清城加盟店" border="0" height="108" width="154"></a></span></div></li>
                                        <li style="float: left; width: 230px; height: 258px;"><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102789-2.html"><img src="/static/2_X200_20150716143949.jpg" alt="上海浦东加盟店" title="上海浦东加盟店" border="0" height="108" width="154"></a></span></div><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102790-2.html"><img src="/static/2_X200_20150716144010.jpg" alt="广州天河加盟店" title="广州天河加盟店" border="0" height="108" width="154"></a></span></div></li><li style="float: left; width: 230px; height: 258px;"><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102791-2.html"><img src="/static/2_X200_20150716144028.jpg" alt="长沙天心加盟店" title="长沙天心加盟店" border="0" height="108" width="154"></a></span></div><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102792-2.html"><img src="/static/2_X200_20150716144045.jpg" alt="深圳罗湖加盟店" title="深圳罗湖加盟店" border="0" height="108" width="154"></a></span></div></li><li style="float: left; width: 230px; height: 258px;"><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102793-2.html"><img src="/static/2_X200_20150716144102.jpg" alt="东莞长安加盟店" title="东莞长安加盟店" border="0" height="108" width="154"></a></span></div><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102794-2.html"><img src="/static/2_X200_20150716144119.jpg" alt="清远清城加盟店" title="清远清城加盟店" border="0" height="108" width="154"></a></span></div></li>
                                        <li style="float: left; width: 230px; height: 258px;"><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102789-2.html"><img src="/static/2_X200_20150716143949.jpg" alt="上海浦东加盟店" title="上海浦东加盟店" border="0" height="108" width="154"></a></span></div><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/singleclassimage_detail-925101-102790-2.html"><img src="/static/2_X200_20150716144010.jpg" alt="广州天河加盟店" title="广州天河加盟店" border="0" height="108" width="154"></a></span></div></li></ul>
                                </div>
                                <div class="right_arrow" id="singleImage_btn_focus_prev">
                                    <img src="/static/Y200-2500-2736_20170929175629.gif" border="0" alt="右" title="右">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="remove"></div>
            </div>
            <div class="h_bot">
                <div class="HomeBanner_x" style="height:161px;"><div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img src="/static/0_Y200-2500-27_0_21_20170929175627.jpg" alt="1" title="1" border="0"></div></div><div class="HomeBanner_x" style="height:398px;"><div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img src="/static/0_Y200-2500-27_0_23_20170929175627.jpg" alt="2" title="2" border="0"></div></div><div class="HomeBanner_x" style="height:399px;"><div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img src="/static/0_Y200-2500-27_0_25_20170929175627.jpg" alt="3" title="3" border="0"></div></div><div class="HomeBanner_x" style="height:399px;"><div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img src="/static/0_Y200-2500-27_0_27_20170929175627.jpg" alt="4" title="4" border="0"></div></div><div class="HomeBanner_x" style="height:399px;"><div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><img src="/static/0_Y200-2500-27_0_29_20170929175627.jpg" alt="5" title="5" border="0"></div></div>
                <div class="remove"></div>
            </div>
            <div class="HomeBanner_x h_bot" style="Height:80px;">
                <div class="HomeBanner_y wow bounceInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">
                    <img src="/static/Y200-2500-276_20170929175628.jpg" alt="用心服务，品质一流" title="用心服务，品质一流" border="0">
                </div>
            </div>
            <div class="y200_Content h_bot">
                <div class="w1002 gy">
                    <div id="ctl05_pl_ViewSortClass2" corpsite_valuenum="1" sortclass1_valuenum="10010" data-type="2">

                        <div class="jz_box box_shadow wow bounceInLeft" data-wow-duration="1.5s" data-wow-delay="0.3s">
                            <div class="block_title">
                                <div class="r">
                                </div>

                                <span class="location_a"><a href="http://y200-2500-27.jz60.com/cn/photo-925101.html" class="gd" alt="成功案例" title="成功案例">
            更多</a></span>
                                <div class="l">
                                </div>
                                <div class="l">
                                </div>
                                <div class="name">
                                    <a href="http://y200-2500-27.jz60.com/cn/photo-925101.html" class="gd" alt="成功案例" title="成功案例">成功案例</a></div>
                            </div>
                            <div class="block_box">


                                <div class="jz_list">
                                    <a href="http://y200-2500-27.jz60.com/cn/photo_detail-925101-31587-4653.html" title="电子束曝光机工件台">
                                        <img class="img_box" src="/static/2_X20032_20150714193310.jpg" border="0"></a> <strong><a class="index_new_title" href="http://y200-2500-27.jz60.com/cn/photo_detail-925101-31587-4653.html" title="电子束曝光机工件台">
                                            电子束曝光机工件台</a></strong>
                                    <p class="text_box">
                                        清华大学精密仪器与机械学系始建立于1932年，其前身为成立于1932年的清华大学工学院机械系，五十年代院系调整为清华大学机械制造系，六十年代初又调整为精密仪器与机械系，八十年代更名为现今的精密仪器与机械学系。     目前我系有院士3人，外籍院士1人，“长江计划”特聘教授5人，在职教授52人，副教.
                                        <a href="http://y200-2500-27.jz60.com/cn/photo_detail-925101-31587-4653.html" title="电子束曝光机工件台" class="xiangxi">[详细]</a></p>
                                    <div class="remove">
                                    </div>
                                </div>


                                <div class="jz_list" style="border: none;">
                                    <a href="http://y200-2500-27.jz60.com/cn/photo_detail-925101-31580-4654.html" title="10EMT690系列设备故障综合诊">
                                        <img class="img_box" src="/static/2_X20025_20150714193308.gif" border="0"></a> <strong><a class="index_new_title" href="http://y200-2500-27.jz60.com/cn/photo_detail-925101-31580-4654.html" title="10EMT690系列设备故障综合诊">
                                            10EMT690系列设备故障综合诊</a></strong>
                                    <p class="text_box">
                                        10EMT690系列设备故障综合诊   清华大学精密仪器与机械学系始建立于1932年，其前身为成立于1932年的清华大学工学院机械系，五十年代院系调整为清华大学机械制造系，六十年代初又调整为精密仪器与机械系，八十年代更名为现今的精密仪器与机械学系。     目前我系有院士3人，外籍院士1人，“长江计划”特.
                                        <a href="http://y200-2500-27.jz60.com/cn/photo_detail-925101-31580-4654.html" title="10EMT690系列设备故障综合诊" class="xiangxi">[详细]</a></p>
                                    <div class="remove">
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="fgh"></div>
                        <div class="wt_box box_shadow wow bounceInRight" data-wow-duration="1.5s" data-wow-delay="0.3s">
                            <div class="block_title">
                                <div class="r"></div>
                                <span class="location_a"> <a href="http://y200-2500-27.jz60.com/cn/categorypagetest-925101-3.html" class="gd" alt="常见问题" title="常见问题">更多</a></span>
                                <div class="l"></div>
                                <div class="name"><a href="http://y200-2500-27.jz60.com/cn/categorypagetest-925101-3.html">常见问题</a></div>
                            </div>
                            <div class="qalist">
                                <dl>

                                    <dt><span>问</span> <a class="index_new_title" href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230650-3.html" title="苏家屯|广州的湿巾卷|爱康加工"> 苏家屯|广州的湿巾卷|爱康加工</a></dt>
                                    <dd><span class="d">答</span>
                                        <span class="wt_text">供应皇姑区|广州湿巾机|专用湿巾卷|加盟招商 其他铁西区|广州|批发爱康湿巾卷招商 ​为什么现在的很多酒店、宾馆、及一些办公场.<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230650-3.html" title="苏家屯|广州的湿巾卷|爱康加工" class="xiangxi">[详细]</a></span>
                                        <div class="remove"> </div>
                                    </dd>

                                    <dt><span>问</span> <a class="index_new_title" href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230651-3.html" title="其他铁西区|广州|批发爱康湿巾卷招商"> 其他铁西区|广州|批发爱康湿巾卷招商</a></dt>
                                    <dd style="border: none;"><span class="d">答</span>
                                        <span class="wt_text">供应皇姑区|广州湿巾机|专用湿巾卷|加盟招商 其他铁西区|广州|批发爱康湿巾卷招商 ​为什么现在的很多酒店、宾馆、及一些办公场.<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230651-3.html" title="其他铁西区|广州|批发爱康湿巾卷招商" class="xiangxi">[详细]</a></span>
                                        <div class="remove"> </div>
                                    </dd>

                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="remove"></div>
            </div>
            <div class="y200_Content h_bot">
                <div class="w1002 xw_lx"><div class="homenews">
                        <div id="ctl06_pl_ViewSortClass2" corpsite_valuenum="1" sortclass1_valuenum="10011" data-type="2">

                            <div class="industry_news box_shadow wow bounceInLeft" data-wow-duration="1.5s" data-wow-delay="0.3s">
                                <div class="block_title">

        <span class="location_a">
            <a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html" title="公司动态">更多</a></span>
                                    <div class="name">
                                        <a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html" title="公司动态">公司动态</a></div>
                                </div>
                                <div class="block_box index_news_box">
                                    <div class="news_illustration">
                                        <div class="newpic"><span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html" title="深圳宝安一次性酒店柔巾卷批发"><img src="/static/1_X200_20150716151117.jpg" alt="深圳宝安一次性酒店柔巾卷批发"></a></span></div><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html" title="深圳宝安一次性酒店柔巾卷批发"><h3 class="index_new_title">深圳宝安一次性酒店柔巾...</h3></a><p class="index_new">爱康一次性环保湿巾卷，随着经济的高速发展，人们的消费观念开始有了全新的改变，...<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html" title="深圳宝安一次性酒店柔巾卷批发" class="xiangxi">[详细]</a></p>
                                        <div class="remove">
                                        </div>
                                    </div>
                                    <div class="news_list">
                                        <div id="list_none" class="common_li">
                                            <ul>
                                                <li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230671-1.html" title="批发供应高级酒店/柔巾卷/冷热湿毛巾">批发供应高级酒店/柔巾卷/冷热湿毛巾</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230672-1.html" title="批发酒店环保冷热湿毛巾">批发酒店环保冷热湿毛巾</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230673-1.html" title="环保柔巾卷70克x20米x12卷箱">环保柔巾卷70克x20米x12卷箱</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230674-1.html" title="批发酒店/宾馆医院冷热湿毛巾">批发酒店/宾馆医院冷热湿毛巾</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230675-1.html" title="湖南长沙一次性清洁湿巾卷代理">湖南长沙一次性清洁湿巾卷代理</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230676-1.html" title="90克16米卷|河北石家庄一次性养生环保毛巾加盟">90克16米卷|河北石家庄一次性养生环保毛巾</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230677-1.html" title="爱康一次环保湿巾片">爱康一次环保湿巾片</a></li><li style="border: none;"><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230678-1.html" title="宾馆一次性环保毛巾批发">宾馆一次性环保毛巾批发</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="remove">
                                    </div>
                                </div>
                            </div>

                            <div class="cfgh"></div>
                            <div class="industry_news box_shadow wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                                <div class="block_title">

        <span class="location_a">
            <a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-2.html" title="行业资讯">更多</a></span>
                                    <div class="name">
                                        <a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-2.html" title="行业资讯">行业资讯</a></div>
                                </div>
                                <div class="block_box index_news_box">
                                    <div class="news_illustration">
                                        <div class="newpic"><span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230653-2.html" title="武汉爱康|湿巾机|专用湿巾卷|加盟招商"><img src="/static/1_X200_20150716152330.jpg" alt="武汉爱康|湿巾机|专用湿巾卷|加盟招商"></a></span></div><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230653-2.html" title="武汉爱康|湿巾机|专用湿巾卷|加盟招商"><h3 class="index_new_title">武汉爱康|湿巾机|专用湿...</h3></a><p class="index_new">武汉爱康|湿巾机|专用湿巾卷|加盟招商 |爱康柔巾卷：提倡使用一次性环保湿巾卷：...<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230653-2.html" title="武汉爱康|湿巾机|专用湿巾卷|加盟招商" class="xiangxi">[详细]</a></p>
                                        <div class="remove">
                                        </div>
                                    </div>
                                    <div class="news_list">
                                        <div id="list_none2" class="common_li">
                                            <ul>
                                                <li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230654-2.html" title="武汉爱康湿巾卷|批发|爱康湿巾卷招商">武汉爱康湿巾卷|批发|爱康湿巾卷招商</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230655-2.html" title="武汉宾馆浴巾批发 武汉兴灿商贸有限公司湿巾批发">武汉宾馆浴巾批发 武汉兴灿商贸有限公司湿...</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230656-2.html" title="足疗环保擦脚毛巾加盟咨询15907161332">足疗环保擦脚毛巾加盟咨询15907161332...</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230657-2.html" title="批发一次性环保宾馆毛巾/宾馆浴巾">批发一次性环保宾馆毛巾/宾馆浴巾</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230658-2.html" title="一次性养生毛巾|河北石家庄一次性环保湿巾代理">一次性养生毛巾|河北石家庄一次性环保湿巾...</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230659-2.html" title="广东深圳一次性推油毛巾代理">广东深圳一次性推油毛巾代理</a></li><li><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230660-2.html" title="南安市毛巾|爱康酒店一次性毛巾 毛巾什么价格">南安市毛巾|爱康酒店一次性毛巾 毛巾什么价...</a></li><li style="border: none;"><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230686-2.html" title="婴幼儿一次性环保湿巾代理">婴幼儿一次性环保湿巾代理</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="remove">
                                    </div>
                                </div>
                            </div>

                            <div class="fgh"></div>
                            <div class="industry_news2 box_shadow wow bounceInRight" data-wow-duration="1.5s" data-wow-delay="0.3s">
                                <div class="block_title">
                                    <span class="location_a"> <a href="http://y200-2500-27.jz60.com/cn/guestbook-925101.html" class="gd" alt="在线留言" title="在线留言">更多</a></span>
                                    <div class="name"><a href="http://y200-2500-27.jz60.com/cn/guestbook-925101.html">在线留言</a></div>
                                </div>
                                <div class="block_box index_news_box index_news_box1">
                                    <input id="userinfo_idindex" type="hidden" value="925101">
                                    <div class="right_feedback">
                                        <div class="sq_forms">
                                            <div class="l_text">姓名：</div>
                                            <div class="r_lyk input1">
                                                <input id="RealName" style="width: 210px;" name="RealName" type="text">
                                                <font color="#FF0000">*</font> </div>
                                            <div class="remove"> </div>
                                            <div class="l_text">电话：</div>
                                            <div class="r_lyk input1">
                                                <input id="Telephone" style="width: 210px;" name="Telephone" type="text">
                                                <font color="#FF0000">*</font></div>
                                            <div class="remove"> </div>
                                            <div class="l_text">详细地址：</div>
                                            <div class="r_lyk input1">
                                                <input id="Address" name="Address" style="width: 210px;" type="text">
                                                <font color="#FF0000">*</font></div>
                                            <div class="remove"> </div>
                                            <div class="l_text">邮箱：</div>
                                            <div class="r_lyk input1">
                                                <input id="Email" name="Email" style="width: 210px;" type="text">
                                                <font color="#FF0000">*</font></div>
                                            <div class="remove"> </div>
                                            <div class="l_text">信息备注：</div>
                                            <div class="r_lyk textarea1">
                                                <textarea name="Content" id="Content" cols="45" rows="5" style="width: 210px;"></textarea>
                                                <font color="#FF0000">*</font></div>
                                            <div class="remove"> </div>
                                            <div class="l_text">验证码：</div>
                                            <div class="r_lyk"> <span>
                 <input id="CheckCode" name="CheckCode" type="text">
            </span><span><font color="#FF0000"> *</font></span><span><img src="/static/CheckCode.aspx" id="code" onclick="getImage3()" alt="看不清楚？点击换张图片" title="看不清楚？点击换张图片" style="cursor: pointer;"></span><span></span></div>
                                            <div class="remove"></div>
                                            <div class="l_text"></div>
                                            <div class="r_lyk an"> <span>
                <input class="btn_submit" onclick="click_index();" type="button">
                </span><span>
                <input class="btn_reset" onclick="return resetBtn(this.form)" type="button">
                </span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="remove"></div>
                            </div>
                        </div>
                    </div></div>
                <div class="remove"></div>
            </div>
            <div class="w1000 f_link h_bot wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                <div class="block_title_a">
                    <div class="name_a" title="友情链接">
                        友情链接</div>
                </div>
                <div class="block_box">
                    <div class="linkbox">


                    <span><a href="http:" target="_blank" title="汽车之家">
                        汽车之家</a></span>

                        <span><a href="http:" target="_blank" title="当当网商城">
                        当当网商城</a></span>

                        <span><a href="http:" target="_blank" title="搜狗网">
                        搜狗网</a></span>

                        <span><a href="http:" target="_blank" title="人人网">
                        人人网</a></span>

                        <span><a href="http:" target="_blank" title="开心网">
                        开心网</a></span>

                        <span><a href="http:" target="_blank" title="环球网">
                        环球网</a></span>

                        <span><a href="http:" target="_blank" title="淘宝网">
                        淘宝网</a></span>

                        <span><a href="http:" target="_blank" title="苏宁易购">
                        苏宁易购</a></span>

                        <span><a href="http:" target="_blank" title="谷歌">
                        谷歌</a></span>

                        <span><a href="http:" target="_blank" title="百度">
                        百度</a></span>

                        <span><a href="http://www.hc360.com/" target="_blank" title="慧聪网">
                        慧聪网</a></span>

                        <span><a href="http://www.zk71.com/" target="_blank" title="中科商务网">
                        中科商务网</a></span>

                        <span><a href="http://www.ledhp.com/" target="_blank" title="大功率LED网">
                        大功率LED网</a></span>

                        <span><a href="http://www.chinasoudian.com/" target="_blank" title="搜电网">
                        搜电网</a></span>

                        <div class="remove">
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="remove"></div>
    </div>
{% endblock %}