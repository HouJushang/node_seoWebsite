{% extends 'layout.swig' %}
{% block content %}
    <div class="wapper">
        <div class="index_wrap section_1">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_1">
                        <ul class="clr index_news_left_ul">
                            <li>
                                <a href="news_details_index_2.html">
                                    <div class="img">
                                        <img src="images/img.jpg" width="100%" height="100%">
                                    </div>
                                    <h2>{{ aa }}</h2>
                                </a>
                            </li>
                            <li>
                                <a href="news_details_index_2.html">
                                    <div class="img">
                                        <img src="images/mytjt.jpg" width="100%" height="100%">
                                    </div>
                                    <h2>新鼎明创新创业园区火热招商中，欢迎您的加入！</h2>
                                </a>
                            </li>
                            <li>
                                <a href="news_details_index_2.html">
                                    <div class="img">
                                        <img src="images/pxkct.jpg" width="100%" height="100%">
                                    </div>
                                    <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                                </a>
                            </li>
                        </ul>
                        <ul class="hd clr"></ul>
                    </div>
                    <div class="index_news_right">
                        <div class="conts">
                            <div class="news_tab clr">
                                <div class="tab_list fl clr">
                                    <div class="list on">产业资讯</div>
                                    <div class="list">最新政策</div>
                                    <div class="list">通知公告</div>
                                    <div class="list">研究报告</div>
                                    <div class="list">活动专题</div>
                                </div>
                                <div class="more">
                                    <a href="news_picture.html">查看更多</a>
                                </div>
                            </div>
                            <div class="news_cont">
                                <div class="list">
                                    <div class="hot">
                                        {% if category1Top %}
                                            <a href="news_details_index.html">
                                                <h2 class="title">{{ category1Top['title'] }}</h2>
                                                <div class="brief">
                                                    {{ category1Top['description'] }}
                                                </div>
                                            </a>
                                        {% endif %}
                                    </div>
                                    <div class="hot_list">
                                        <ul>
                                            {% if category1.length > 0 %}
                                                {% for item in category1 %}
                                                    <li class="clr">
                                                        <a href="news_details_index_1.html">
                                                            <div class="title">● {{ item['title'] }}</div>
                                                            <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                                        </a>
                                                    </li>
                                                {% endfor %}
                                            {% endif %}
                                        </ul>
                                    </div>
                                </div>

                                <div class="list" style="display: none;">
                                    <div class="hot">
                                        {% if category2Top %}
                                            <a href="news_details_index.html">
                                                <h2 class="title">{{ category2Top['title'] }}</h2>
                                                <div class="brief">
                                                    {{ category1Top['description'] }}
                                                </div>
                                            </a>
                                        {% endif %}
                                    </div>
                                    <div class="hot_list">
                                        <ul>
                                            {% if category2.length > 0 %}
                                                {% for item in category2 %}
                                                    <li class="clr">
                                                        <a href="news_details_index_1.html">
                                                            <div class="title">● {{ item['title'] }}</div>
                                                            <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                                        </a>
                                                    </li>
                                                {% endfor %}
                                            {% endif %}
                                        </ul>
                                    </div>
                                </div>

                                <div class="list" style="display: none;">
                                    <div class="hot">
                                        {% if category3Top %}
                                            <a href="news_details_index.html">
                                                <h2 class="title">{{ category3Top['title'] }}</h2>
                                                <div class="brief">
                                                    {{ category1Top['description'] }}
                                                </div>
                                            </a>
                                        {% endif %}
                                    </div>
                                    <div class="hot_list">
                                        <ul>
                                            {% if category3.length > 0 %}
                                                {% for item in category3 %}
                                                    <li class="clr">
                                                        <a href="news_details_index_1.html">
                                                            <div class="title">● {{ item['title'] }}</div>
                                                            <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                                        </a>
                                                    </li>
                                                {% endfor %}
                                            {% endif %}
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="list" style="display: none;">
                                <div class="hot">
                                    {% if category4Top %}
                                        <a href="news_details_index.html">
                                            <h2 class="title">{{ category4Top['title'] }}</h2>
                                            <div class="brief">
                                                {{ category1Top['description'] }}
                                            </div>
                                        </a>
                                    {% endif %}
                                </div>
                                <div class="hot_list">
                                    <ul>
                                        {% if category4.length > 0 %}
                                            {% for item in category4 %}
                                                <li class="clr">
                                                    <a href="news_details_index_1.html">
                                                        <div class="title">● {{ item['title'] }}</div>
                                                        <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                                    </a>
                                                </li>
                                            {% endfor %}
                                        {% endif %}
                                    </ul>
                                </div>
                            </div>

                            <div class="list" style="display: none;">
                                <div class="hot">
                                    {% if category7Top %}
                                        <a href="news_details_index.html">
                                            <h2 class="title">{{ category7Top['title'] }}</h2>
                                            <div class="brief">
                                                {{ category7Top['description'] }}
                                            </div>
                                        </a>
                                    {% endif %}
                                </div>
                                <div class="hot_list">
                                    <ul>
                                        {% if category7.length > 0 %}
                                            {% for item in category7 %}
                                                <li class="clr">
                                                    <a href="news_details_index_1.html">
                                                        <div class="title">● {{ item['title'] }}</div>
                                                        <div class="time">{{ item['createdAt'] | date('Y-m-d') }}</div>
                                                    </a>
                                                </li>
                                            {% endfor %}
                                        {% endif %}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="index_product">
        <div class="w1200">
            <div class="index_end_tab clr">
                <div class="name demonstration fl">示范创建&nbsp;&nbsp;|</div>
                <div class="tab fl clr">

                    <div class="list c_index">电商产业园区</div>
                    <div class="list c_index">电商示范企业</div>
                </div>
                <a href="industrial_park.html" class="more c_index">查看更多 &gt;</a>
            </div>
            <div class="product_list">

                <div class="list">
                    <ul class="clr">
                        <li>
                            <a href="industrial_park_details.html">
                                <div class="img">
                                    <img src="images/img_03.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">合肥高科电子产业园</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="industrial_park_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_03.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">动漫基地</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="industrial_park_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_05.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">新鼎民创新创业基地</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="industrial_park_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_07.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">合肥蜀山国际电子商务产业园</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="industrial_park_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_09.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">合肥青年电子商务产业园</h2>

                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="list">
                    <ul class="clr">
                        <li>
                            <a href="recommend_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_05.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">新鼎民创新创业基地</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="recommend_list_details.html">
                                <div class="img">
                                    <img src="images/img_03.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">合肥高科电子产业园</h2>

                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="recommend_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_07.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">合肥蜀山国际电子商务产业园</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="recommend_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_09.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">合肥青年电子商务产业园</h2>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="recommend_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/sy_03.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <h2 class="title">动漫基地</h2>

                                </div>
                            </a>
                        </li>

                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="index_nav">
        <div class="w1200 clr">
            <a href="service_list.html">
                <div class="cont">
                    <em class="em_1"></em>
                    <p>金融服务</p>
                </div>
            </a>
            <a href="service_list_1.html">
                <div class="cont">
                    <em class="em_2"></em>
                    <p>电商代运营</p>
                </div>
            </a>
            <a href="service_list_2.html">
                <div class="cont">
                    <em class="em_3"></em>
                    <p>营销推广</p>
                </div>
            </a>
            <a href="service_list_3.html">
                <div class="cont">
                    <em class="em_4"></em>
                    <p>IT/互联网服务</p>
                </div>
            </a>
            <a href="service_list_4.html">
                <div class="cont">
                    <em class="em_5"></em>
                    <p>物流服务</p>
                </div>
            </a>
            <a href="service_list_5.html">
                <div class="cont">
                    <em class="em_6"></em>
                    <p>设计摄影</p>
                </div>
            </a>
        </div>
    </div>
    </div>
    <div class="index_wrap section_2">
        <div class="index_news">
            <div class="w1200 clr">
                <div class="index_news_left fl" id="index_news_left_2">
                    <ul class="clr index_news_left_ul">
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/sfcjt_03.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/img.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                    </ul>
                    <ul class="hd clr"></ul>
                </div>
                <div class="index_news_right">
                    <div class="conts">
                        <div class="recommend_top clr">
                            <div class="name establish_img fl">热点资讯</div>
                            <a href="news_picture.html" class="more fr">查看更多 &gt;</a>
                        </div>
                        <div class="establish_end">
                            <ul>
                                <li>
                                    <a href="news_details_index_1.html" class="clr">
                                        <div class="title">● &nbsp;动静有法联迪商用顺趋势推出QM系列扫码支付终端</div>
                                        <div class="time">2018-02-08</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details.html" class="clr">
                                        <div class="title">● &nbsp;比特币交易平台出海难逃监管：发现一家就关闭一家</div>
                                        <div class="time">2018-02-12</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details.html" class="clr">
                                        <div class="title">● &nbsp;第三方网站代销禁而不止 资管产品监管趋严转卖信托</div>
                                        <div class="time">2018-02-20</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details.html" class="clr">
                                        <div class="title">● &nbsp;互金监管升级：第三方支付及网贷 可能最先纳入MPA</div>
                                        <div class="time">2018-02-24</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details.html" class="clr">
                                        <div class="title">● &nbsp;银行砸钱竞争移动支付人民日报：不如减免年费短信费</div>
                                        <div class="time">2018-02-26</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details.html" class="clr">
                                        <div class="title">● &nbsp;从三四线到县镇村 京东苏宁继续打渠道战</div>
                                        <div class="time">2018-02-28</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details.html" class="clr">
                                        <div class="title">● &nbsp;【农村淘宝做了些啥？让它被写进中央一号文件</div>
                                        <div class="time">2018-03-10</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_product">
            <div class="w1200">
                <div class="index_end_tab clr">
                    <div class="name demonstration fl">示范创建&nbsp;&nbsp;|</div>
                    <div class="tab fl clr">
                        <div class="list c_0 on">电商公共服务中心</div>
                        <div class="list c_0">电商产业园区</div>
                        <div class="list c_0">电商示范企业</div>
                    </div>
                    <a href="industrial_park.html" class="more c_0">查看更多 &gt;</a>
                </div>
                <div class="product_list">
                    <div class="list">
                        <ul class="clr">
                            <li class="establish_li">
                                <a href="http://anqing.mofcom.gov.cn/" target="_blank">
                                    <div class="cont" style="background: url(images/zxt_1.jpg) left center no-repeat;">
                                        安庆市电子商务公共服务平台
                                    </div>
                                </a>
                            </li>
                            <li class="establish_li">
                                <a href="http://www.jzncds.com/" target="_blank">
                                    <div class="cont" style="background: url(images/zxt_2.jpg) left center no-repeat;">
                                        六安市电子商务公共服务平台
                                    </div>
                                </a>
                            </li>
                            <li class="establish_li">
                                <a href="http://www.ahwhkjs.com/" target="_blank">
                                    <div class="cont" style="background: url(images/zxt_3.jpg) left center no-repeat;">
                                        芜湖市电子商务公共服务平台
                                    </div>
                                </a>
                            </li>
                            <li class="establish_li">
                                <a href="http://tl.bcpcn.com/" target="_blank">
                                    <div class="cont" style="background: url(images/zxt_4.jpg) left center no-repeat;">
                                        铜陵市电子商务公共服务平台
                                    </div>
                                </a>
                            </li>
                            <li class="establish_li">
                                <a href="http://anqing.mofcom.gov.cn/" target="_blank">
                                    <div class="cont" style="background: url(images/zxt_1.jpg) left center no-repeat;">
                                        安庆市电子商务公共服务平台
                                    </div>
                                </a>
                            </li>
                            <li class="establish_li">
                                <a href="http://www.jzncds.com/" target="_blank">
                                    <div class="cont" style="background: url(images/zxt_2.jpg) left center no-repeat;">
                                        六安市电子商务公共服务平台
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="images/img_03.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">合肥高科电子产业园</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_03.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">动漫基地</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_05.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">新鼎民创新创业基地</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_07.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">合肥蜀山国际电子商务产业园</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_09.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">合肥青年电子商务产业园</h2>

                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li>
                                <a href="training_base_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_05.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">新鼎民创新创业基地</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="images/img_03.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">合肥高科电子产业园</h2>

                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_07.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">合肥蜀山国际电子商务产业园</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_09.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">合肥青年电子商务产业园</h2>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="industrial_park_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/sy_03.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <h2 class="title">动漫基地</h2>

                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="index_wrap section_3">
        <div class="index_news">
            <div class="w1200 clr">
                <div class="index_news_left fl" id="index_news_left_3">
                    <ul class="clr index_news_left_ul">
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/dsfwt_03.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/img.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                    </ul>
                    <ul class="hd clr"></ul>
                </div>
                <div class="index_news_right">
                    <div class="service_recommend clr">
                        <div class="service_tj">
                            <div class="text_con">
                                <div class="tit">推荐服务商</div>
                                <div class="service_list">
                                    <div class="list">
                                        <a href="service_list.html" class="name">金融服务</a>
                                        <a href="service_list_details.html" class="text">个人经营性贷款</a>
                                    </div>
                                    <div class="list">
                                        <a href="service_list.html" class="name">电商代运营</a>
                                        <a href="service_list_details.html" class="text">合肥肥肥网络科技有限公司</a>
                                    </div>
                                    <div class="list">
                                        <a href="service_list.html" class="name">营销推广</a>
                                        <a href="service_list_details.html" class="text">合肥新云晖科技有限公司</a>
                                    </div>
                                    <div class="list">
                                        <a href="service_list.html" class="name">金融服务</a>
                                        <a href="service_list_details.html" class="text">安徽招财宝金融科技有限公司</a>
                                    </div>
                                    <div class="list">
                                        <a href="service_list.html" class="name">IT/互联网服务</a>
                                        <a href="service_list_details.html" class="text">合肥迪科数码科技有限公司</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="service_btn clr">
                            <a href="javascript:void(0)" class="btn_1 register">
                                <div class="cont">
                                    <div class="text">入驻申请</div>
                                </div>
                            </a>
                            <a href="enterprise_commodity_release.html" target="_blank" class="btn_2">
                                <div class="cont">
                                    <div class="text">发布服务</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_product">
            <div class="w1200">
                <div class="index_end_tab clr">
                    <div class="name demonstration fl">热门服务产品&nbsp;&nbsp;|</div>
                    <div class="tab fl clr">
                        <div class="list on">金融服务</div>
                        <div class="list">电商代运营</div>
                        <div class="list">营销推广</div>
                        <div class="list">设计摄影</div>
                        <div class="list">物流服务</div>
                        <div class="list">IT互联网服务</div>
                    </div>
                    <a href="service_list.html" class="more">查看更多 &gt;</a>
                </div>
                <div class="product_list">
                    <div class="list">
                        <ul class="clr">
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_03.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">个人经营性贷款</h2>
                                            <div class="brief">
                                                是交通银行向集聚在商圈内经营，从事批发、零售等商品流通贸易的个体工商...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_05.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">创业一站通</h2>
                                            <div class="brief">
                                                商业微电影服务：创意类微电影、企业广 告宣传片、产品宣传片、影视专题片...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_07.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">小微企业政府采购贷</h2>
                                            <div class="brief">
                                                为商家提供全托代运营服务，包括店铺 运营、美工设计、售前客服、仓储...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_12.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">中小企业携手增信营“助保贷”</h2>
                                            <div class="brief">
                                                中小企业携手增信营“助保贷”业务是指建行向“中小企业携手增信营”中的企...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_13.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">融资服务信息</h2>
                                            <div class="brief">
                                                商业微电影服务：创意类微电影、企业广 告宣传片、产品宣传片、影视专题片...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_14.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">贸易融资担保</h2>
                                            <div class="brief">
                                                为商家提供全托代运营服务，包括店铺 运营、美工设计、售前客服、仓储...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_05.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">快牛电商</h2>
                                            <div class="brief">
                                                快牛电商成立于2017年以企业电子商务领域为中心，专注研究“企业电商技术运营”服务系列，为企业发展电商提供运营技术咨询服务。当前很多传统企业发展电商，缺乏很有效的整体运营规划，企业发展电商需要团队和技术的支持！但是很多传统企业这两方面都很匮乏，特别是电商运营方面没有经验，运营能力也不足。导致很多有实力的传统企业在于新兴企业竞争时，屡屡落败！需要有一家专业研究企业电商发展的公司来协助传统企业发展电商商务，提供电商运营技术服务！助传统企业发展电商一臂之力！...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/dsfw_13.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">万途营销</h2>
                                            <div class="brief">
                                                合肥万途营销是由一帮地产营销老人共同组成的一家地产营销新兵，2011年，踏着国家地产宏观调控的步伐，迎着地产营销的困境应运而生，凭着敏锐的市场拓展、快速的市场应对以及不断提升的服务理念，构筑起了一家业内最年轻、成长最快的房地产营销策划代理机构。千里之途，始于足下；以跬步之微，行万里之途！...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/chifsj.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">赤风视觉</h2>
                                            <div class="brief">
                                                合肥赤风商业摄影是一家专业提供商业摄影，淘宝摄影，产品拍摄，视频拍摄制作，全景航拍制作，商业广告摄影，商务人像，画册服装拍摄，菜谱建筑拍照的摄影公司，为企业提供专业的视觉服务。...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/wlt.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">百科物流</h2>
                                            <div class="brief">
                                                合肥长江批发市场百科货物配载服务部（简称：合肥百科物流公司），公司原则
                                                1、严格遵守安全生产法律法规及工作规范，严肃执行安全生产操作规程，落实各项安全生产工作制度，组织开展安全生产活动和安全知识学习，提高全员安全生产意识。...
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="list">
                        <ul class="clr">
                            <li class="service_li">
                                <a href="service_list_details.html" class="clr">
                                    <div class="img fl">
                                        <img src="/homeStatic/images/images/logo.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="cont">
                                            <h2 class="title">新云晖科技</h2>
                                            <div class="brief">
                                                新云晖（X-Cloud）是国内领先的互联网+咨询、技术方案和平台运营企业，以国际化的视野引领互联网+商业模式与技术创新，推进中小企业互联网+应用进程，为传统产业和创业公司构筑企业发展的新动力。
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="index_wrap section_4">
        <div class="index_news">
            <div class="w1200 clr">
                <div class="index_news_left fl" id="index_news_left_4">
                    <div class="recommend_lb">
                        <ul class="clr index_news_left_ul">
                            <li>
                                <a href="news_details_index_2.html">
                                    <div class="img">
                                        <img src="images/mytjt.jpg" width="100%" height="100%">
                                    </div>
                                    <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                                </a>
                            </li>
                            <li>
                                <a href="news_details_index_2.html">
                                    <div class="img">
                                        <img src="images/img.jpg" width="100%" height="100%">
                                    </div>
                                    <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                                </a>
                            </li>
                        </ul>
                        <ul class="hd clr"></ul>
                    </div>
                    <div class="entrance clr">
                        <a href="javascript:void(0)" class="register settled fl"><i>入驻申请</i></a>
                        <a href="enterprise_commodity_release.html" class="release fr"><i>发布产品</i></a>
                    </div>
                </div>

                <div class="index_news_right">
                    <div class="conts recommend_conts">
                        <div class="recommend_top clr">
                            <div class="name fl">电商名企</div>
                            <a href="recommend_list.html" class="more fr">查看更多 &gt;</a>
                        </div>
                        <div class="recommend_end">
                            <ul class="clr">

                                <li>
                                    <a href="recommend_list_details.html">
                                        <div class="img">
                                            <img src="/homeStatic/images/images/mytj_07.jpg" width="100%" height="100%">
                                        </div>
                                        <h2>安徽熊孩子食品</h2>
                                    </a>
                                </li>
                                <li>
                                    <a href="recommend_list_details.html">
                                        <div class="img">
                                            <img src="/homeStatic/images/images/mytj_09.jpg" width="100%" height="100%">
                                        </div>
                                        <h2>芜湖三只松鼠</h2>
                                    </a>
                                </li>
                                <li>
                                    <a href="recommend_list_details.html">
                                        <div class="img">
                                            <img src="/homeStatic/images/images/mytj_15.jpg" width="100%" height="100%">
                                        </div>
                                        <h2>南国食品</h2>
                                    </a>
                                </li>
                                <li>
                                    <a href="recommend_list_details.html">
                                        <div class="img">
                                            <img src="/homeStatic/images/images/mytj_16.jpg" width="100%" height="100%">
                                        </div>
                                        <h2>汤圆妞妞食品</h2>
                                    </a>
                                </li>
                                <li>
                                    <a href="recommend_list_details.html">
                                        <div class="img">
                                            <img src="/homeStatic/images/images/mytj_17.jpg" width="100%" height="100%">
                                        </div>
                                        <h2>合肥春光食品</h2>
                                    </a>
                                </li>
                                <li>
                                    <a href="recommend_list_details.html">
                                        <div class="img">
                                            <img src="/homeStatic/images/images/mytj_18.jpg" width="100%" height="100%">
                                        </div>
                                        <h2>芜湖国圣食品</h2>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_recommend">
            <div class="w1200">
                <div class="index_end_tab clr">
                    <div class="name famous fl">名优商品</div>
                    <a href="commodity_list.html" class="more fr">查看更多 &gt;</a>
                </div>
                <div class="index_recommend_end">
                    <ul class="clr">
                        <li>
                            <a href="commodity_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/mytjxm_07.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <div class="brief">纯手工莲子酥喜糖100g</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="commodity_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/mytjxm_03.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <div class="brief">双塔红薯粉条400g山东特产方便酸辣粉地瓜螺旋粉条</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="commodity_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/mytjxm_05.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <div class="brief">【岱山特产】蓬莱仙芝茶罐装125克</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="commodity_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/mytjxm_09.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <div class="brief">【岱山特产】艾草青团50g</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="commodity_list_details.html">
                                <div class="img">
                                    <img src="/homeStatic/images/images/mytjxm_11.jpg" width="100%" height="100%">
                                </div>
                                <div class="text">
                                    <div class="brief">【岱山特产】沙洋花生250gx6袋</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="index_wrap section_5">
        <div class="index_news">
            <div class="w1200 clr">
                <div class="index_news_left fl" id="index_news_left_5">
                    <ul class="clr index_news_left_ul">
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/rcfw_03.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/img.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                    </ul>
                    <ul class="hd clr"></ul>
                </div>
                <div class="index_news_right">
                    <div class="conts">
                        <div class="recommend_top clr">
                            <div class="name rcfw_img fl">人才政策信息</div>
                            <a href="personnel_list.html" class="more fr">查看更多 &gt;</a>
                        </div>
                        <div class="establish_end">
                            <ul>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;【政策解读】商务部:农村电子商务人才如何培养?</div>
                                        <div class="time">2018-02-20</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;人大代表梁倩娟:加大电商扶贫政策扶持力</div>
                                        <div class="time">2018-02-24</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;安徽人才政策解读二:“泛3315计划”政策的“含金量</div>
                                        <div class="time">2018-03-10</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;电商人才舞台!江门将举办一个潜力巨大的职业竞赛</div>
                                        <div class="time">2018-03-21</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;安徽出台重磅引才政策人才最高安家补助可达200万</div>
                                        <div class="time">2018-03-27</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;2018全国两会,这些内容值得电商人关心</div>
                                        <div class="time">2018-04-01</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="news_details_4.html" class="clr">
                                        <div class="title">● &nbsp;合肥出台重磅引才政策人才最高安家补助可达200万</div>
                                        <div class="time">2018-05-05</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="index_product">
            <div class="w1200">
                <div class="index_end_tab clr">
                    <div class="name personnel fl">人才服务&nbsp;&nbsp;|</div>
                    <div class="tab fl clr">
                        <div class="list on">人才信息</div>
                        <div class="list">企业招聘</div>
                    </div>
                    <a href="information_list.html" class="more">查看更多 &gt;</a>
                </div>
                <div class="product_list">
                    <div class="list">
                        <div class="list_table">
                            <dl class="dl_rc">
                                <dd class="clr">
                                    <a class="w10" href="information_details.html">**珊</a>
                                    <a class="w15" href="information_details.html">学历：本科</a>
                                    <a class="w20" href="information_details.html">毕业院校：安徽三联学院</a>
                                    <a class="w20" href="information_details.html">专业：会计电算化</a>
                                    <a class="w15" href="information_details.html">工作年限：2年</a>
                                    <a class="w20" href="information_details.html">求职岗位：主办会计</a>
                                </dd>
                                <dd class="clr">
                                    <a class="w10" href="information_details.html">**程</a>
                                    <a class="w15" href="information_details.html">学历：本科</a>
                                    <a class="w20" href="information_details.html">毕业院校：合肥工业大学</a>
                                    <a class="w20" href="information_details.html">专业：土木工程</a>
                                    <a class="w15" href="information_details.html">工作年限：3年</a>
                                    <a class="w20" href="information_details.html">求职岗位：工程项目主管</a>
                                </dd>
                                <dd class="clr">
                                    <a class="w10" href="information_details.html">**松</a>
                                    <a class="w15" href="information_details.html">学历：本科</a>
                                    <a class="w20" href="information_details.html">毕业院校：安徽财经大学</a>
                                    <a class="w20" href="information_details.html">专业：会计电算化</a>
                                    <a class="w15" href="information_details.html">工作年限：应届毕业生</a>
                                    <a class="w20" href="information_details.html">求职岗位：会计</a>
                                </dd>
                                <dd class="clr">
                                    <a class="w10" href="information_details.html">**珊</a>
                                    <a class="w15" href="information_details.html">学历：本科</a>
                                    <a class="w20" href="information_details.html">毕业院校：安徽三联学院</a>
                                    <a class="w20" href="information_details.html">专业：会计电算化</a>
                                    <a class="w15" href="information_details.html">工作年限：2年</a>
                                    <a class="w20" href="information_details.html">求职岗位：主办会计</a>
                                </dd>
                                <dd class="clr">
                                    <a class="w10" href="information_details.html">**程</a>
                                    <a class="w15" href="information_details.html">学历：本科</a>
                                    <a class="w20" href="information_details.html">毕业院校：合肥工业大学</a>
                                    <a class="w20" href="information_details.html">专业：土木工程</a>
                                    <a class="w15" href="information_details.html">工作年限：3年</a>
                                    <a class="w20" href="information_details.html">求职岗位：工程项目主管</a>
                                </dd>
                                <dd class="clr">
                                    <a class="w10" href="information_details.html">**松</a>
                                    <a class="w15" href="information_details.html">学历：本科</a>
                                    <a class="w20" href="information_details.html">毕业院校：安徽财经大学</a>
                                    <a class="w20" href="information_details.html">专业：会计电算化</a>
                                    <a class="w15" href="information_details.html">工作年限：应届毕业生</a>
                                    <a class="w20" href="information_details.html">求职岗位：会计</a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="list">
                        <div class="list_table">
                            <dl class="clr">
                                <dd>
                                    <a href="enterprise_details.html">
                                        <div class="title">底薪3400急聘首批滴滴出行客服</div>
                                        <div class="dl_list clr">
                                            <div class="dd">工作地点：合肥</div>
                                            <div class="dd">学历要求：初中</div>
                                            <div class="dd">性别要求：不限</div>
                                            <div class="dd">专业要求：无</div>
                                            <div class="dd">薪资：4000—5000元</div>
                                        </div>
                                    </a>
                                </dd>
                                <dd>
                                    <a href="enterprise_details.html">
                                        <div class="title">高薪招聘双休销售人员</div>
                                        <div class="dl_list clr">
                                            <div class="dd">工作地点：合肥</div>
                                            <div class="dd">学历要求：大专</div>
                                            <div class="dd">性别要求：不限</div>
                                            <div class="dd">专业要求：无</div>
                                            <div class="dd">薪资：3000—4000元</div>
                                        </div>
                                    </a>
                                </dd>
                                <dd>
                                    <a href="enterprise_details.html">
                                        <div class="title">底薪3400急聘首批滴滴出行客服</div>
                                        <div class="dl_list clr">
                                            <div class="dd">工作地点：合肥</div>
                                            <div class="dd">学历要求：初中</div>
                                            <div class="dd">性别要求：不限</div>
                                            <div class="dd">专业要求：无</div>
                                            <div class="dd">薪资：4000—5000元</div>
                                        </div>
                                    </a>
                                </dd>
                                <dd>
                                    <a href="enterprise_details.html">
                                        <div class="title">高薪招聘双休销售人员</div>
                                        <div class="dl_list clr">
                                            <div class="dd">工作地点：合肥</div>
                                            <div class="dd">学历要求：大专</div>
                                            <div class="dd">性别要求：不限</div>
                                            <div class="dd">专业要求：无</div>
                                            <div class="dd">薪资：3000—4000元</div>
                                        </div>
                                    </a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="index_wrap section_6">
        <div class="index_news">
            <div class="w1200 clr">
                <div class="index_news_left fl" id="index_news_left_6">
                    <ul class="clr index_news_left_ul">
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/pxkct.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                        <li>
                            <a href="news_details_index_2.html">
                                <div class="img">
                                    <img src="images/img.jpg" width="100%" height="100%">
                                </div>
                                <h2>2018安徽省电商创业大赛报名正式开始！</h2>
                            </a>
                        </li>
                    </ul>
                    <ul class="hd clr"></ul>
                </div>
                <div class="index_news_right">
                    <div class="mechanism clr">
                        <div class="mechanism_left">
                            <div class="contss">
                                <div class="tit clr">
                                    <div class="name fl">热门电商培训机构</div>
                                    <a href="mechanism_list.html" class="more fr">更多 &gt;</a>
                                </div>
                                <div class="list">
                                    <a href="news_details_5.html">● &nbsp;合肥云聚职业培训学校</a>
                                    <a href="news_details_5.html">● &nbsp;吉易跨境电商学院</a>
                                    <a href="news_details_5.html">● &nbsp;青岛众智电商培训机构</a>
                                    <a href="news_details_5.html">● &nbsp;幕思城专业的电商培训机构</a>
                                    <a href="news_details_5.html">● &nbsp;合肥红杰尔电商学院网</a>
                                    <a href="news_details_5.html">● &nbsp;合肥逐鹿电商学院</a>
                                </div>
                            </div>
                        </div>
                        <div class="mechanism_right">
                            <div class="contss">
                                <div class="tit clr">
                                    <div class="name zjzk fl">专家智库</div>
                                    <a href="expert_list.html" class="more fr">更多 &gt;</a>
                                </div>
                                <div class="ren_list">
                                    <a href="expert_details.html" class="clr">
                                        <div class="img fl">
                                            <img src="images/sb.jpg" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <div class="cont">
                                                <h2>孙恺<i>| 大朴网 CEO</i></h2>
                                                <p>2007年创办库巴网，带领团队从0做到20亿规模。</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="expert_details.html" class="clr">
                                        <div class="img fl">
                                            <img src="/homeStatic/images/images/rt_03.jpg" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <div class="cont">
                                                <h2>赵迎光<i>| 韩都衣社 CEO</i></h2>
                                                <p>集团旗下拥有女装、男装、童装等20个子品牌</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="expert_details.html" class="clr">
                                        <div class="img fl">
                                            <img src="/homeStatic/images/images/rt_07.jpg" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <div class="cont">
                                                <h2>林琛<i>| 拍拍网运营副总裁</i></h2>
                                                <p>原银泰网CEO。后任拍拍网副总裁</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_product">
            <div class="w1200">
                <div class="index_end_tab clr">
                    <div class="name jpkc fl">精品课程</div>
                    <a href="curriculum_list.html" class="more">查看更多 &gt;</a>
                </div>
                <div class="product_list">
                    <div class="list">
                        <ul class="clr">
                            <li class="video_li">
                                <div class="video">
                                    <video class="video-js vjs-default-skin" controls preload="none" width="100%"
                                           height="100%" poster="/homeStatic/images/images/spt_03.jpg" data-setup="{}">
                                        <source src="scripts/mp4.mp4" type='video/mp4'/>
                                    </video>
                                </div>
                                <a href="curriculum_details.html">
                                    <div class="title">《十天学好电商》20161129期</div>
                                    <div class="brief">零基础，低学历一样学好电商</div>
                                    <div class="time">12月06日 13:34</div>
                                </a>
                            </li>
                            <li class="video_li">
                                <div class="video">
                                    <video class="video-js vjs-default-skin" controls preload="none" width="100%"
                                           height="100%" poster="/homeStatic/images/images/spt_05.jpg" data-setup="{}">
                                        <source src="scripts/mp4.mp4" type='video/mp4'/>
                                    </video>
                                </div>
                                <a href="curriculum_details.html">
                                    <div class="title">这些年关于电商那些事</div>
                                    <div class="brief">信息社会，电商那些事你怎能不知道</div>
                                    <div class="time">12月06日 13:34</div>
                                </a>
                            </li>
                            <li class="video_li">
                                <div class="video">
                                    <video class="video-js vjs-default-skin" controls preload="none" width="100%"
                                           height="100%" poster="/homeStatic/images/images/spt_07.jpg" data-setup="{}">
                                        <source src="scripts/mp4.mp4" type='video/mp4'/>
                                    </video>
                                </div>
                                <a href="curriculum_details.html">
                                    <div class="title">《快速学习电商》20161205期</div>
                                    <div class="brief">电商课程名师课堂走进合肥</div>
                                    <div class="time">12月06日 13:34</div>
                                </a>
                            </li>
                            <li class="video_li">
                                <div class="video">
                                    <video class="video-js vjs-default-skin" controls preload="none" width="100%"
                                           height="100%" poster="/homeStatic/images/images/spt_09.jpg" data-setup="{}">
                                        <source src="scripts/mp4.mp4" type='video/mp4'/>
                                    </video>
                                </div>
                                <a href="curriculum_details.html">
                                    <div class="title">《十天学好电商》20161215期</div>
                                    <div class="brief">带你深度了解电商，离成功更进一步</div>
                                    <div class="time">12月06日 13:34</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
{% endblock %}