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
                                            <a href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html"
                                               title="产品分类">{{ item.name }}</a>
                                        </div>
                                    </li>
                                {% endif %}
                                {% if item.level == 2 %}
                                    <li>
                                            <span class="nav_one">
                                                <a href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html"
                                                   title="{{ item.name }}">{{ item.name }}</a></span>
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

                        <div id="sidebar-follow" class="lx l_bot box_shadow">
                            <div class="block_title">
                                <div class="name left_name">
                                    <a href="http://y200-2500-27.jz60.com/cn/singlepage-925101-2.html"
                                       title="联系我们">联系我们</a>
                                </div>
                            </div>
                            <div class="lx_box">
                                <p>
                                    <a href="http://y200-2500-27.jz60.com/cn/singlepage-925101-2.html" title="">
                                        <img src="/static/0_Y200-2500-27_0_15_20170929175627.jpg" border="0" width="186"
                                             alt="联系"></a><br>
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
                    <div class="y3_cplistbox">
                        <div id="ctl02_pl_ViewSortClass2" corpsite_valuenum="2" sortclass1_valuenum="10015"
                             data-type="2">


                            <div class="cplist">
                                <ul>
                                    {% for item in productList.rows %}
                                        <li>
                                            <div class="pic"><span>
                                                    <a title="{{ item.name }}"
                                                                      href="/w-{{ websiteId }}/productd-{{ item.id }}.html"><img
                                                                src="{{ String(item.image).split(',')[0] }}" border="0"
                                                                alt="{{ item.title }}"
                                                                title="{{ item.title }}"></a></span></div>
                                            <p><a title="{{ item.title }}"
                                                  href="/w-{{ websiteId }}/productd-{{ item.id }}.html">{{ item.title }}</a>
                                            </p>
                                        </li>
                                    {% endfor %}
                                </ul>
                                <div class="remove"></div>
                                <div class="Pagebox r_t_12">
                                    <table border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td align="center" class="PageStyle">

                                                <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
                                                <div id="ctl02_ctl00_anpPaging">
                                                    <a disabled="true">首页</a><a disabled="true">上页</a><span class="cpb">1</span><a
                                                            href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-2.html">2</a><a
                                                            href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-3.html">3</a><a
                                                            href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-2.html">下页</a><a
                                                            href="http://y200-2500-27.jz60.com/cn/product-925101-0-0-0-0-3.html">末页</a>&nbsp;&nbsp;转到第&nbsp;<input
                                                            type="text" value="1" class="inputbox"
                                                            name="ctl02$ctl00$anpPaging_input"
                                                            id="ctl02$ctl00$anpPaging_input"
                                                            onkeydown="ANP_keydown(event,&#39;ctl02$ctl00$anpPaging_btn&#39;);"
                                                            style="width:30px;">&nbsp;页&nbsp;<input type="Button"
                                                                                                    name="ctl02$ctl00$anpPaging"
                                                                                                    id="ctl02$ctl00$anpPaging_btn"
                                                                                                    value="跳转"
                                                                                                    class="btnGo"
                                                                                                    onclick="if(ANP_checkInput(&#39;ctl02$ctl00$anpPaging_input&#39;,3)){ANP_goToPage(document.getElementById(&#39;ctl02$ctl00$anpPaging_input&#39;));}">
                                                </div>
                                                <!-- AspNetPager V6.0.0 for VS2005 End -->


                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
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
                                            <li>
                                                <div class="pic"><span><a
                                                                href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858431-176451-206768.html"
                                                                title="测量仪器、量具量仪分部|上海精密仪器仪表有限公司"><img
                                                                    src="/static/5_X200_20150716143738.jpg"
                                                                    alt="测量仪器、量具量仪分部|上海精密仪器仪表有限公司"
                                                                    border="0"></a></span></div>
                                                <p>
                                                    <a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858431-176451-206768.html"
                                                       title="测量仪器、量具量仪分部|上海精密仪器仪表有限公司">测量仪器、量具量仪分.</a></p></li>
                                            <li>
                                                <div class="pic"><span><a
                                                                href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858432-176451-206768.html"
                                                                title="煤炭检测精密仪器/量热仪原理/量热仪分类"><img
                                                                    src="/static/5_X200581_20150714193333.gif"
                                                                    alt="煤炭检测精密仪器/量热仪原理/量热仪分类" border="0"></a></span>
                                                </div>
                                                <p>
                                                    <a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858432-176451-206768.html"
                                                       title="煤炭检测精密仪器/量热仪原理/量热仪分类">煤炭检测精密仪器/量.</a></p></li>
                                            <li>
                                                <div class="pic"><span><a
                                                                href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858448-176451-206768.html"
                                                                title="设备数据采集、故障分析及管理系统"><img
                                                                    src="/static/5_X200501_20150714193332.jpg"
                                                                    alt="设备数据采集、故障分析及管理系统" border="0"></a></span></div>
                                                <p>
                                                    <a href="http://y200-2500-27.jz60.com/cn/product_detail-925101-1858448-176451-206768.html"
                                                       title="设备数据采集、故障分析及管理系统">设备数据采集、故障分.</a></p></li>
                                        </ul>
                                    </div>
                                    <div class="remove">
                                    </div>
                                </div>
                            </div>

                            <div class="cp_nweslist r_t_12">
                                <div class="block_title"><span class="location_a"> <a
                                                href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html"
                                                class="gd" alt="更多" title="更多">更多</a></span>
                                    <div class="name"><a
                                                href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html"
                                                alt="最新资讯" title="最新资讯">最新资讯</a></div>
                                </div>
                                <div class="bottomnewslist">
                                    <ul>

                                        <li><span class="news_time2">2014-04-28</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230635-1.html"
                                                    title="深圳宝安一次性酒店柔巾卷批发">
                                                深圳宝安一次性酒店柔巾卷批发</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230636-4.html"
                                                    title="90克16米卷|河北石家庄一次性养生环保毛巾加盟">
                                                90克16米卷|河北石家庄一次性养生环保毛</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230637-4.html"
                                                    title="一次性养生毛巾|河北石家庄一次性环保湿巾代理">
                                                一次性养生毛巾|河北石家庄一次性环保湿.</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230638-4.html"
                                                    title="宾馆一次性环保毛巾|河北石家庄一次性酒店湿巾卷厂家">
                                                宾馆一次性环保毛巾|河北石家庄一次性酒.</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230639-4.html"
                                                    title="足疗环保擦脚毛巾加盟咨询15907161332">
                                                足疗环保擦脚毛巾加盟咨询15907161332.</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230640-4.html"
                                                    title="广东深圳一次性推油毛巾代理">
                                                广东深圳一次性推油毛巾代理</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230641-4.html"
                                                    title="河北石家庄一次性酒店柔巾卷批发">
                                                河北石家庄一次性酒店柔巾卷批发</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230642-4.html"
                                                    title="保健 养生 舒适新型 一次性毛巾招商">
                                                保健 养生 舒适新型 一次性毛巾招商</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230643-4.html"
                                                    title="保健|毛巾养生 舒适新型一次性毛巾定做">
                                                保健|毛巾养生 舒适新型一次性毛巾定做</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230644-4.html"
                                                    title="柔巾卷保健 养生 舒适新型一次性毛巾送货上门">
                                                柔巾卷保健 养生 舒适新型一次性毛巾送货.</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230645-4.html"
                                                    title="湿巾机 爱森湿巾机 湖北总代理招商">
                                                湿巾机 爱森湿巾机 湖北总代理招商</a></li>

                                        <li><span class="news_time2">2014-04-25</span><a
                                                    href="http://y200-2500-27.jz60.com/cn/categorypage_detail-925101-230646-4.html"
                                                    title="武汉爱康|湿巾机|专用湿巾卷|加盟招商">
                                                武汉爱康|湿巾机|专用湿巾卷|加盟招商</a></li>

                                        <div class="remove"></div>
                                    </ul>
                                    <div class="remove"></div>
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
<div id="Bottom1_pl_Bottom">

    <div class="footer_box">
        <div class="bottom d12">
            <div class="subnav wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                <div id="subnav_f">
                    <a title="网站首页" href="http://y200-2500-27.jz60.com/cn/index-925101.html">网站首页</a><a title="产品展示"
                                                                                                        href="http://y200-2500-27.jz60.com/cn/product-925101.html">产品展示</a><a
                            title="客户见证"
                            href="http://y200-2500-27.jz60.com/cn/singleclassimage-925101-1.html">客户见证</a><a
                            title="公司动态" href="http://y200-2500-27.jz60.com/cn/categorypage-925101-1.html">公司动态</a><a
                            title="在线下载" href="http://y200-2500-27.jz60.com/cn/down-925101.html">在线下载</a><a title="联系我们"
                                                                                                            href="http://y200-2500-27.jz60.com/cn/singlepage-925101-2.html">联系我们</a>
                </div>
            </div>

            <div class="footer wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                <div class="bottom_logo"><img src="/static/0_Y200-2500-27_0_11_20170929175626.gif" border="0"
                                              alt="logo"></div>
                <div class="copyright">
                    <p>
                        CopyRight © 2014 www.zk71.com All Rights Reserved. 深圳市综元量测精密仪器仪表公司<br>
                        咨询热线：0755-28095986 0755-27044610 电子邮箱：fuwangtuliao@163.com</p>
                    <br>
                </div>
                <div class="approve"><img src="/static/0_Y200-2500-27_0_13_20170929175626.gif" border="0" alt="二维码">
                </div>
                <div class="remove"></div>
            </div>
            <div class="zk_f wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                <p>
                    技术支持：<a href="http://www.jz60.com/" target="_brank" title="建站专家">建站专家</a> | <a
                            href="http://www.zk71.com/" target="_brank" title="中科商务网">中科商务网</a>
                    <script>
                        (function () {
                            var bp = document.createElement('script');
                            var curProtocol = window.location.protocol.split(':')[0];
                            if (curProtocol === 'https') {
                                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
                            }
                            else {
                                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
                            }
                            var s = document.getElementsByTagName("script")[0];
                            s.parentNode.insertBefore(bp, s);
                        })();
                    </script>&nbsp;|&nbsp;<a href="http://login.jz60.com/?userinfo_id=925101" title="网站管理"
                                             target="_brank">网站管理</a></p>
            </div>
        </div>
    </div>

</div>
</form>

<div id="topcontrol" title="TOP" style="position: fixed; bottom: 20px; right: 20px; opacity: 1; cursor: pointer;"><img
            src="/static/top.jpg" style="width:30px; height:33px"></div></body></html>