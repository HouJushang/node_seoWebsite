{% extends "./layout.swig" %}
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
    <div id="pages_main" class="w1000 r_t_12">
        <div class="w1002">
            <div class="pages_left">

                <div class="pages_left y3_fl_left">
                    <ul class="left_nav box_shadow">
                        <li class="Current"><span class="left_nav_top">
                                <a href="">{{ topNewsCategory.name }}</a>
                            </span>
                            <div class="ejfl">
                                {% for item in allCategory %}
                                    <span><a href="/w-{{ websiteId }}/newsl-{{ item.id }}.html"
                                             title="{{ item.name }}">{{ item.name }}</a></span>
                                {% endfor %}
                                <div class="remove"></div>
                            </div>
                        </li>
                    </ul>
                    {#<div id="CategoryPage_Left1_CategoryPage_Recommend1_palclass">#}

                    {#<div class="news_list_n l_bot box_shadow">#}
                    {#<div class="block_title">#}
                    {#<span class="location_a"><a class="h_h" href="javascript:ChangeCategoryPageRecommend();"#}
                    {#title="换一组">换一组</a></span>#}
                    {#<div class="name left_name">#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html" alt="推荐资讯"#}
                    {#title="推荐资讯">推荐资讯</a></div>#}
                    {#</div>#}
                    {#<div class="news_list_n_box">#}
                    {#<div>#}
                    {#<ul id="categoryPageRecommend">#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html"#}
                    {#title="深圳宝安一次性酒店柔巾卷批发">深圳宝安一次性酒店柔巾卷.</a></li>#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230671-1.html"#}
                    {#title="批发供应高级酒店/柔巾卷/冷热湿毛巾">批发供应高级酒店/柔巾卷/.</a></li>#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230672-1.html"#}
                    {#title="批发酒店环保冷热湿毛巾">批发酒店环保冷热湿毛巾</a></li>#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230673-1.html"#}
                    {#title="环保柔巾卷70克x20米x12卷箱">环保柔巾卷70克x20米x12卷.</a></li>#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230674-1.html"#}
                    {#title="批发酒店/宾馆医院冷热湿毛巾">批发酒店/宾馆医院冷热湿.</a></li>#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230675-1.html"#}
                    {#title="湖南长沙一次性清洁湿巾卷代理">湖南长沙一次性清洁湿巾卷.</a></li>#}
                    {#<li>#}
                    {#<a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230676-1.html"#}
                    {#title="90克16米卷|河北石家庄一次性养生环保毛巾加盟">90克16米卷|河北石家庄一</a></li>#}
                    {#<li style="border: none;"><a#}
                    {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230677-1.html"#}
                    {#title="爱康一次环保湿巾片">爱康一次环保湿巾片</a></li>#}
                    {#</ul>#}
                    {#<script type="text/javascript">#}
                    {#var pageIndex = 2;#}

                    {#function ChangeCategoryPageRecommend() {#}
                    {#$.ajax({#}
                    {#type: "Post",#}
                    {#url: "/cn/categorypage.aspx/GetData",#}
                    {#contentType: "application/json; charset=utf-8",#}
                    {#dataType: "json",#}
                    {#data: "{pageIndex:" + pageIndex + ",loadPageSize:8,loadUserInfo_ID:925101,loadCorpCategoryPageClass1_ValueNum:1}",#}
                    {#success: function (data) {#}
                    {#if (data.d == "") {#}
                    {#alert("没有更多数据加载了！");#}
                    {#} else {#}
                    {#$("#categoryPageRecommend").html(data.d);#}
                    {#pageIndex++;#}
                    {#}#}
                    {#;#}
                    {#},#}
                    {#error: function (err) {#}
                    {#alert(err);#}
                    {#}#}
                    {#});#}
                    {#}#}
                    {#</script>#}

                    {#</div>#}
                    {#</div>#}
                    {#</div>#}

                    {#</div>#}
                    <div id="CategoryPage_Left1_Contact_Left2_palclass">

                        <div id="sidebar-follow" class="lx l_bot box_shadow">
                            <div class="block_title">
                                <div class="name left_name">
                                    <a href="http://y200-2500-27.jz60.com/cn/singlepage-925101-2.html"
                                       title="联系我们">联系我们</a>
                                </div>
                            </div>
                            <div class="lx_box">
                                <p>
                                    <a title="">
                                        <img src="/static/0_Y200-2500-27_0_15_20170929175627.jpg" border="0"
                                             width="186" alt="联系">
                                    </a><br>
                                </p>
                                <p>
                                    <b>{{ webInfo.company }}</b></p>
                                <p>
                                    <span>电话：</span>{{ webInfo.phone }}</p>
                                <p>
                                    <span>传真：</span>{{ webInfo.fax }}</p>
                                <p>
                                    <span>邮箱：</span>{{ webInfo.email }}</p>
                                <p>
                                    <span>地址：</span>{{ webInfo.address }}</p>
                                <p>
                                    <span>网址：</span>{{ webInfo.web }}</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="profgh"></div>
            <div class="y3_right_01 box_shadow">
                <div class="block_title">
                        <span class="location">
                            您的位置：<a href="/w-{{ websiteId }}/index.html" title="网站首页">网站首页</a> &gt; <a
                                    href="/w-{{ websiteId }}/newsl-{{ currentCategory.id }}.html"
                                    title="{{ currentCategory.name }}">{{ currentCategory.name }}</a></span>
                    <div class="name">
                        <span title="{{ currentCategory.name }}">{{ currentCategory.name }}</span></div>
                </div>
                <div class="block_box ProductInfo">
                    <div class="ArticleTitle">
                        <h1>{{ newsDetail.title }}</h1>
                    </div>
                    <div class="ReleaseDate">发布日期：{{ newsDetail.createdAt | date('Y-m-d') }}</div>
                    <div class="ArticleContent">
                        {{ newsDetail.content }}
                    </div>
                    <div class="Thenext">
                        {#<span class="on">上一篇：没有上一篇了</span>#}
                        {#<span class="next">下一篇：<a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230671-1.html"#}
                        {#title="批发供应高级酒店/柔巾卷/冷热湿毛巾">批发供应高级酒店/柔巾卷/冷热湿毛巾</a></span></div>#}
                        <div class="Keywords">文章关键词：{{ newsDetail.keywords }}</div>
                        {#<div id="Product_Recommend1_palclass">#}

                        {#<div class="cp_xg r_t_12">#}
                        {#<div class="block_title">#}
                        {#<span class="location_a"> <a class="h_h" href="javascript:GetPagingDataRecommend();" title="换一组">#}
                        {#换一组</a></span>#}
                        {#<div class="name">#}
                        {#<a href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-1.html" title="推荐产品">推荐产品</a>#}
                        {#</div>#}
                        {#</div>#}
                        {#<div class="cplist">#}
                        {#<div>#}
                        {#<ul id="contentlistRecommend">#}
                        {#<li>#}
                        {#<div class="pic"><span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858431-176451-206768.html"#}
                        {#title="测量仪器、量具量仪分部|上海精密仪器仪表有限公司"><img#}
                        {#src="/static/5_X200_20150716143738.jpg"#}
                        {#alt="测量仪器、量具量仪分部|上海精密仪器仪表有限公司" border="0"></a></span>#}
                        {#</div>#}
                        {#<p>#}
                        {#<a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858431-176451-206768.html"#}
                        {#title="测量仪器、量具量仪分部|上海精密仪器仪表有限公司">测量仪器、量具量仪分.</a></p></li>#}
                        {#<li>#}
                        {#<div class="pic"><span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858432-176451-206768.html"#}
                        {#title="煤炭检测精密仪器/量热仪原理/量热仪分类"><img#}
                        {#src="/static/5_X200581_20150714193333.gif"#}
                        {#alt="煤炭检测精密仪器/量热仪原理/量热仪分类" border="0"></a></span></div>#}
                        {#<p>#}
                        {#<a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858432-176451-206768.html"#}
                        {#title="煤炭检测精密仪器/量热仪原理/量热仪分类">煤炭检测精密仪器/量.</a></p></li>#}
                        {#<li>#}
                        {#<div class="pic"><span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858448-176451-206768.html"#}
                        {#title="设备数据采集、故障分析及管理系统"><img#}
                        {#src="/static/5_X200501_20150714193332.jpg"#}
                        {#alt="设备数据采集、故障分析及管理系统" border="0"></a></span></div>#}
                        {#<p>#}
                        {#<a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858448-176451-206768.html"#}
                        {#title="设备数据采集、故障分析及管理系统">设备数据采集、故障分.</a></p></li>#}
                        {#</ul>#}
                        {#<script type="text/javascript">#}
                        {#var pageIndex = 2;#}

                        {#function GetPagingDataRecommend() #}{#}#}
                        {#$.ajax(#}{#}#}
                        {#type: "Post",#}
                        {#url: "/cn/product.aspx/GetData",#}
                        {#contentType: "application/json; charset=utf-8",#}
                        {#dataType: "json",#}
                        {#data: "{pageIndex:" + pageIndex + ",loadPageSize:3,loadUserInfo_ID:925101,loadProductStatus_ID:1}",#}
                        {#success: function (data) #}{#}#}
                        {#if (data.d == "") #}{#}#}
                        {#alert("没有更多数据加载了！");#}
                        {#} else #}{#}#}
                        {#$("#contentlistRecommend").html(data.d);#}
                        {#pageIndex++;#}
                        {#}#}
                        {#;#}
                        {#},#}
                        {#error: function (err) #}{#}#}
                        {#alert(err);#}
                        {#}#}
                        {#});#}
                        {#}#}
                        {#</script>#}

                        {#</div>#}
                        {#<div class="remove">#}
                        {#</div>#}
                        {#</div>#}
                        {#</div>#}

                        {#</div>#}
                        {#<div id="CategoryPage_Latest2_palclass">#}

                        {#<div class="cp_nweslist r_t_12">#}
                        {#<div class="block_title"><span class="location_a"> <a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html" class="gd"#}
                        {#alt="更多" title="更多">更多</a></span>#}
                        {#<div class="name"><a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html"#}
                        {#alt="最新资讯" title="最新资讯">最新资讯</a></div>#}
                        {#</div>#}
                        {#<div class="bottomnewslist">#}
                        {#<ul>#}

                        {#<li><span class="news_time2">2014-04-28</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html"#}
                        {#title="深圳宝安一次性酒店柔巾卷批发">#}
                        {#深圳宝安一次性酒店柔巾卷批发</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230636-4.html"#}
                        {#title="90克16米卷|河北石家庄一次性养生环保毛巾加盟">#}
                        {#90克16米卷|河北石家庄一次性养生环保毛</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230637-4.html"#}
                        {#title="一次性养生毛巾|河北石家庄一次性环保湿巾代理">#}
                        {#一次性养生毛巾|河北石家庄一次性环保湿.</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230638-4.html"#}
                        {#title="宾馆一次性环保毛巾|河北石家庄一次性酒店湿巾卷厂家">#}
                        {#宾馆一次性环保毛巾|河北石家庄一次性酒.</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230639-4.html"#}
                        {#title="足疗环保擦脚毛巾加盟咨询15907161332">#}
                        {#足疗环保擦脚毛巾加盟咨询15907161332.</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230640-4.html"#}
                        {#title="广东深圳一次性推油毛巾代理">#}
                        {#广东深圳一次性推油毛巾代理</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230641-4.html"#}
                        {#title="河北石家庄一次性酒店柔巾卷批发">#}
                        {#河北石家庄一次性酒店柔巾卷批发</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230642-4.html"#}
                        {#title="保健 养生 舒适新型 一次性毛巾招商">#}
                        {#保健 养生 舒适新型 一次性毛巾招商</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230643-4.html"#}
                        {#title="保健|毛巾养生 舒适新型一次性毛巾定做">#}
                        {#保健|毛巾养生 舒适新型一次性毛巾定做</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230644-4.html"#}
                        {#title="柔巾卷保健 养生 舒适新型一次性毛巾送货上门">#}
                        {#柔巾卷保健 养生 舒适新型一次性毛巾送货.</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230645-4.html"#}
                        {#title="湿巾机 爱森湿巾机 湖北总代理招商">#}
                        {#湿巾机 爱森湿巾机 湖北总代理招商</a></li>#}

                        {#<li><span class="news_time2">2014-04-25</span><a#}
                        {#href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230646-4.html"#}
                        {#title="武汉爱康|湿巾机|专用湿巾卷|加盟招商">#}
                        {#武汉爱康|湿巾机|专用湿巾卷|加盟招商</a></li>#}

                        {#<div class="remove"></div>#}
                        {#</ul>#}
                        {#<div class="remove"></div>#}
                        {#</div>#}
                        {#</div>#}
                        {#</div>#}
                        <div class="remove"></div>
                    </div>
                </div>
            </div>
            <div class="remove"></div>
        </div>
    </div>
{% endblock %}