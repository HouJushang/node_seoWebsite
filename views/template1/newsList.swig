{% extends "layout.swig" %}
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
        <div class="y3bg">
            <div class="procount">
                <div class="w1002">

                    <div class="pages_left y3_fl_left">
                        <ul class="left_nav box_shadow">
                            <li class="Current"><span class="left_nav_top">
               <a href="/newsl-{{ topNewsCategory.id }}.html">
                   {{ topNewsCategory.name }}
               </a></span>
                                <div class="ejfl">
                                    {% for item in allCategory %}
                                        <span><a href="/newsl-{{ item.id }}.html"
                                                 title="{{ item.name }}">{{ item.name }}</a></span>
                                    {% endfor %}
                                    <div class="remove"></div>
                                </div>
                            </li>
                        </ul>
                        {% include '../component/tjNews.swig' %}
                        {% include '../component/connection.swig' %}
                    </div>
                    <div class="profgh"></div>
                    <div class="y3_right_01 box_shadow">
                        <div class="block_title">
                            <span class="location">
                            您的位置：<a href="/index.html" title="网站首页">网站首页</a> &gt; <a
                                    href="/newsl-{{ currentCategory.id }}.html"
                                    title="{{ currentCategory.name }}">{{ currentCategory.name }}</a></span>
                            <div class="name">
                                <span title="{{ currentCategory.name }}">{{ currentCategory.name }}</span></div>
                        </div>
                        <div class="block_box news_pic_list r_12">

                            {% for item in newsList.rows %}
                                <div class="picture_list new_list_r">
                                    <div id="rptCategoryPage_ctl00_piclist" class="pic">
                                        <span>
                                            <a href="/newsd-{{ item.id }}.html"
                                               title="{{ item.title }}">
                                                {% if item.thumb %}
                                                <img class="img_hover" src="{{ item.thumb }}" alt="{{ item.title }}" border="0">
                                                {% endif %}
                                            </a>
                                        </span>
                                    </div>
                                    <div class="news_title">
                                        <a href="/newsd-{{ item.id }}.html" title="{{ item.title }}">
                                            {{ item.title }}</a></div>
                                    <p class="al_p">
                                        {{ item.description }}
                                    </p>
                                    <span class="news_time">
                                        {{ item.createdAt | date("Y-m-d")}}
                                    </span>
                                </div>
                            {% endfor %}
                            <div class="Pagebox r_t_12">
                                <table border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tbody>
                                    <tr>
                                        <td align="center" class="PageStyle">

                                            {#<div id="anpPaging">#}
                                            {#<a disabled="true">首页</a><a disabled="true">上页</a><span class="cpb">1</span><a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1-0-2.html">2</a><a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1-0-2.html">下页</a><a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1-0-2.html">末页</a>&nbsp;&nbsp;转到第&nbsp;<input type="text" value="1" class="inputbox" name="anpPaging_input" id="anpPaging_input" onkeydown="ANP_keydown(event,&#39;anpPaging_btn&#39;);" style="width:30px;">&nbsp;页&nbsp;<input type="Button" name="anpPaging" id="anpPaging_btn" value="跳转" class="btnGo" onclick="if(ANP_checkInput(&#39;anpPaging_input&#39;,2)){ANP_goToPage(document.getElementById(&#39;anpPaging_input&#39;));}">#}
                                            {#</div>#}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="remove">
                            </div>
                        </div>
                        <div class="remove">
                        </div>
                        <div id="Product_Recommend1_palclass">

                            {#<div class="cp_xg r_t_12">#}
                            {#<div class="block_title">#}
                            {#<div class="name">#}
                            {#<a href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-1.html" title="推荐产品">推荐产品</a></div>#}
                            {#</div>#}
                            {#<div class="cplist">#}
                            {#<div>#}
                            {#<ul id="contentlistRecommend">#}
                            {#<li><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858431-176451-206768.html" title="测量仪器、量具量仪分部|上海精密仪器仪表有限公司"><img src="/static/5_X200_20150716143738.jpg" alt="测量仪器、量具量仪分部|上海精密仪器仪表有限公司" border="0"></a></span></div><p><a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858431-176451-206768.html" title="测量仪器、量具量仪分部|上海精密仪器仪表有限公司">测量仪器、量具量仪分.</a></p></li> <li><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858432-176451-206768.html" title="煤炭检测精密仪器/量热仪原理/量热仪分类"><img src="/static/5_X200581_20150714193333.gif" alt="煤炭检测精密仪器/量热仪原理/量热仪分类" border="0"></a></span></div><p><a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858432-176451-206768.html" title="煤炭检测精密仪器/量热仪原理/量热仪分类">煤炭检测精密仪器/量.</a></p></li> <li><div class="pic"><span><a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858448-176451-206768.html" title="设备数据采集、故障分析及管理系统"><img src="/static/5_X200501_20150714193332.jpg" alt="设备数据采集、故障分析及管理系统" border="0"></a></span></div><p><a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858448-176451-206768.html" title="设备数据采集、故障分析及管理系统">设备数据采集、故障分.</a></p></li>#}
                            {#</ul>#}
                            {#</div>#}
                            {#<div class="remove">#}
                            {#</div>#}
                            {#</div>#}
                            {#</div>#}

                        </div>
                        {#<div id="CategoryPage_Latest1_palclass">#}
                        {##}
                        {#<div class="cp_nweslist r_t_12">#}
                        {#<div class="block_title"> <span class="location_a"> <a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html" class="gd" alt="更多" title="更多">更多</a></span>#}
                        {#<div class="name"><a href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html" alt="最新资讯" title="最新资讯">最新资讯</a></div>#}
                        {#</div>#}
                        {#<div class="bottomnewslist">#}
                        {#<ul>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-28</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html" title="深圳宝安一次性酒店柔巾卷批发">#}
                        {#深圳宝安一次性酒店柔巾卷批发</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230636-4.html" title="90克16米卷|河北石家庄一次性养生环保毛巾加盟">#}
                        {#90克16米卷|河北石家庄一次性养生环保毛</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230637-4.html" title="一次性养生毛巾|河北石家庄一次性环保湿巾代理">#}
                        {#一次性养生毛巾|河北石家庄一次性环保湿.</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230638-4.html" title="宾馆一次性环保毛巾|河北石家庄一次性酒店湿巾卷厂家">#}
                        {#宾馆一次性环保毛巾|河北石家庄一次性酒.</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230639-4.html" title="足疗环保擦脚毛巾加盟咨询15907161332">#}
                        {#足疗环保擦脚毛巾加盟咨询15907161332.</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230640-4.html" title="广东深圳一次性推油毛巾代理">#}
                        {#广东深圳一次性推油毛巾代理</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230641-4.html" title="河北石家庄一次性酒店柔巾卷批发">#}
                        {#河北石家庄一次性酒店柔巾卷批发</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230642-4.html" title="保健 养生 舒适新型 一次性毛巾招商">#}
                        {#保健 养生 舒适新型 一次性毛巾招商</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230643-4.html" title="保健|毛巾养生 舒适新型一次性毛巾定做">#}
                        {#保健|毛巾养生 舒适新型一次性毛巾定做</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230644-4.html" title="柔巾卷保健 养生 舒适新型一次性毛巾送货上门">#}
                        {#柔巾卷保健 养生 舒适新型一次性毛巾送货.</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230645-4.html" title="湿巾机 爱森湿巾机 湖北总代理招商">#}
                        {#湿巾机 爱森湿巾机 湖北总代理招商</a></li>#}
                        {##}
                        {#<li><span class="news_time2">2014-04-25</span><a href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230646-4.html" title="武汉爱康|湿巾机|专用湿巾卷|加盟招商">#}
                        {#武汉爱康|湿巾机|专用湿巾卷|加盟招商</a></li>#}
                        {##}
                        {#<div class="remove"></div>#}
                        {#</ul>#}
                        {#<div class="remove"></div>#}
                        {#</div>#}
                        {#</div>#}
                        {#</div> #}
                    </div>
                </div>
                <div class="remove"></div>
            </div>
        </div>
    </div>
    <div class="remove">
    </div>
{% endblock %}