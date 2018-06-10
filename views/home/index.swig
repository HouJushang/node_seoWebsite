{% extends 'indexLayout.swig'  %}
{% macro imgSlide(data) %}
    <ul class="clr index_news_left_ul">
        {% for key, val in data %}
            <li>
                <a href="{{ val.link }}">
                    <div class="img">
                        <img src="{{ val.image }}" width="100%" height="100%">
                    </div>
                    <h2>{{ val.title }}</h2>
                </a>
            </li>
        {% endfor %}
    </ul>
    <ul class="hd clr"></ul>
{% endmacro %}
{% block content %}
    <div class="wapper">
        <div class="index_wrap section_1">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_1">
                        {{ imgSlide(slide10) }}
                    </div>
                    <div class="index_news_right">
                        {% include './indexComponent/newsSlide.swig' %}
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
                        <a href="/category/19" class="more c_index">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">

                        <div class="list">
                            <ul class="clr">
                                {% for key, val in yuanqu %}
                                    <li>
                                        <a href="/content/17/{{ val.id }}">
                                            <div class="img">
                                                <img src="{{ val.thumb }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <h2 class="title">{{ val.title }}</h2>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in qiye %}
                                    <li>
                                        <a href="/content/18/{{ val.id }}">
                                            <div class="img">
                                                <img src="{{ val.thumb }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <h2 class="title">{{ val.title }}</h2>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div class="index_nav">
                <div class="w1200 clr">
                    <a href="/service/金融服务">
                        <div class="cont">
                            <em class="em_1"></em>
                            <p>金融服务</p>
                        </div>
                    </a>
                    <a href="/service/电商代运营">
                        <div class="cont">
                            <em class="em_2"></em>
                            <p>电商代运营</p>
                        </div>
                    </a>
                    <a href="/service/营销推广">
                        <div class="cont">
                            <em class="em_3"></em>
                            <p>营销推广</p>
                        </div>
                    </a>
                    <a href="/service/IT互联网服务">
                        <div class="cont">
                            <em class="em_4"></em>
                            <p>IT互联网服务</p>
                        </div>
                    </a>
                    <a href="/service/物流服务">
                        <div class="cont">
                            <em class="em_5"></em>
                            <p>物流服务</p>
                        </div>
                    </a>
                    <a href="/service/设计摄影">
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
                        {{ imgSlide(slide11) }}
                    </div>
                    <div class="index_news_right">
                        <div class="conts">
                            <div class="recommend_top clr">
                                <div class="name establish_img fl">热点资讯</div>
                                <a href="/category/1" class="more fr">查看更多 &gt;</a>
                            </div>
                            <div class="establish_end">
                                <ul>
                                    {% for key, val in position1 %}
                                        <li>
                                            <a href="/content/{{ val.categoryId }}/{{ val.id }}" class="clr">
                                                <div class="title">● &nbsp;{{ val.title }}</div>
                                                <div class="time">{{ val['createdAt'] | date('Y-m-d') }}</div>
                                            </a>
                                        </li>
                                    {% endfor %}
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
                        <a href="/category/19" class="more c_0">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in category19 %}
                                    <li class="establish_li">
                                        <a href="{{ val.link }}" target="_blank">
                                            <div class="cont" style="background: url({{ val.image }}) left center no-repeat; background-size: 50px 50px !important;" >{{ val.title }}</div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in category17 %}
                                <li>
                                    <a href="/content/{{ val.categoryId }}/{{ val.id }}">
                                        <div class="img">
                                            <img src="{{ val.thumb }}" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <h2 class="title">{{ val.title }}</h2>
                                        </div>
                                    </a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in category18 %}
                                <li>
                                    <a href="/content/{{ val.categoryId }}/{{ val.id }}">
                                        <div class="img">
                                            <img src="{{ val.thumb }}" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <h2 class="title">{{ val.title }}</h2>

                                        </div>
                                    </a>
                                </li>
                                {% endfor %}
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
                        {{ imgSlide(slide12) }}
                    </div>
                    <div class="index_news_right">
                        <div class="service_recommend clr">
                            <div class="service_tj">
                                <div class="text_con">
                                    <div class="tit">推荐服务商</div>
                                    <div class="service_list">
                                        <div class="list">
                                            <a href="/service/金融服务" class="name">金融服务</a>
                                            <a href="/companyContent/{{ servicePosition4.id }}" class="text">{{ servicePosition4.companyName }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/电商代运营" class="name">电商代运营</a>
                                            <a href="/companyContent/{{ servicePosition5.id }}" class="text">{{ servicePosition5.companyName }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/营销推广" class="name">营销推广</a>
                                            <a href="/companyContent/{{ servicePosition6.id }}" class="text">{{ servicePosition6.companyName }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/物流服务" class="name">物流服务</a>
                                            <a href="/companyContent/{{ servicePosition8.id }}" class="text">{{ servicePosition7.companyName }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/IT互联网服务" class="name">IT/互联网服务</a>
                                            <a href="/companyContent/{{ servicePosition9.id }}" class="text">{{ servicePosition9.companyName }}</a>
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
                                <a href="/account/info" target="_blank" class="btn_2">
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
                        <a href="/service/金融服务" class="more">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList4.rows %}
                                <li class="service_li">
                                    <a href="/serviceContent/{{ val.id }}" class="clr">
                                        <div class="img fl">
                                            <img src="{{ val.image }}" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <div class="cont">
                                                <h2 class="title">{{ val.title }}</h2>
                                                <div class="brief">
                                                    {{ val.description }}</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList5.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList6.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList7.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList8.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList9.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
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
                            {{ imgSlide(slide15) }}
                            <ul class="hd clr"></ul>
                        </div>
                        <div class="entrance clr">
                            <a href="javascript:void(0)" class="register settled fl"><i>入驻申请</i></a>
                            <a href="/account/info" class="release fr"><i>发布产品</i></a>
                        </div>
                    </div>

                    <div class="index_news_right">
                        <div class="conts recommend_conts">
                            <div class="recommend_top clr">
                                <div class="name fl">电商名企</div>
                                <a href="/companyds" class="more fr">查看更多 &gt;</a>
                            </div>
                            <div class="recommend_end">
                                <ul class="clr">
                                    {% for key,val in companyList.rows %}
                                    <li>
                                        <a href="/companyContent/{{ val.id }}">
                                            <div class="img">
                                                <img src="{{ val.logo }}" width="100%" height="100%">
                                            </div>
                                            <h2>{{ val.companyName }}</h2>
                                        </a>
                                    </li>
                                    {% endfor %}
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
                        <a href="/product" class="more fr">查看更多 &gt;</a>
                    </div>
                    <div class="index_recommend_end">
                        <ul class="clr">
                            {% for key,val in productList.rows %}
                            <li>
                                <a href="/productDetail/{{ val.id }}">
                                    <div class="img">
                                        <img src="{{ val.image }}" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="brief">{{ val.title }}</div>
                                    </div>
                                </a>
                            </li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_wrap section_5">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_5">
                        {{ imgSlide(slide13) }}
                    </div>
                    <div class="index_news_right">
                        <div class="conts">
                            <div class="recommend_top clr">
                                <div class="name rcfw_img fl">人才政策信息</div>
                                <a href="/category/26" class="more fr">查看更多 &gt;</a>
                            </div>
                            <div class="establish_end">
                                <ul>
                                    {% for key,val in category26 %}
                                    <li>
                                        <a href="content/26/{{ val.id }}" class="clr">
                                            <div class="title">● &nbsp;{{ val.title }} </div>
                                            <div class="time">{{ val['createdAt'] | date('Y-m-d') }}</div>
                                        </a>
                                    </li>
                                    {% endfor %}
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
                                    {% for key,val in resumeList.rows %}
                                    <dd class="clr">
                                        <a class="w10" href="/resume/{{ val.id }}">{{ val.name }}</a>
                                        <a class="w20" href="/resume/{{ val.id }}">学校：{{ val.school }}</a>
                                        <a class="w15" href="/resume/{{ val.id }}">学历：{{ val.xueli }}</a>
                                        <a class="w20" href="/resume/{{ val.id }}">专业：{{ val.zhuanye }}</a>
                                        <a class="w15" href="/resume/{{ val.id }}">工作年限：{{ val.jiangyan }}</a>
                                        <a class="w20" href="/resume/{{ val.id }}">求职岗位：{{ val.zhiwei }}</a>
                                    </dd>
                                    {% endfor %}
                                </dl>
                            </div>
                        </div>
                        <div class="list">
                            <div class="list_table">
                                <dl class="clr">
                                    {% for key,val in jobList.rows %}
                                    <dd>
                                        <a href="enterprise_details.html">
                                            <div class="title">{{ val.title }}</div>
                                            <div class="dl_list clr">
                                                <div class="dd">工作地点：{{ val.address }}</div>
                                                <div class="dd">学历要求：{{ val.xueli }}</div>
                                                <div class="dd">工作性质：{{ val.xingzhi }}</div>
                                                <div class="dd">招聘人数：{{ val.renshu }}</div>
                                                <div class="dd">薪资：{{ val.xinchou }}</div>
                                            </div>
                                        </a>
                                    </dd>
                                    {% endfor %}
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
                        {{ imgSlide(slide14) }}
                    </div>
                    <div class="index_news_right">
                        <div class="mechanism clr">
                            <div class="mechanism_left">
                                <div class="contss">
                                    <div class="tit clr">
                                        <div class="name fl">热门电商培训机构</div>
                                        <a href="/companyps" class="more fr">更多 &gt;</a>
                                    </div>
                                    <div class="list">
                                        {% for key,val in hotDs %}
                                            <a href="/companyContent/{{ val.id }}">● &nbsp;{{ val.companyName }}</a>
                                        {% endfor %}
                                    </div>
                                </div>
                            </div>
                            <div class="mechanism_right">
                                <div class="contss">
                                    <div class="tit clr">
                                        <div class="name zjzk fl">专家智库</div>
                                        <a href="/category/23" class="more fr">更多 &gt;</a>
                                    </div>
                                    <div class="ren_list">
                                        {% for key,val in category23 %}
                                        <a href="/content/23/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.thumb }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2>{{ val.title }}<i>| {{ val.company }}</i></h2>
                                                    <p>{{ val.description }}</p>
                                                </div>
                                            </div>
                                        </a>
                                        {% endfor %}
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
                        <a href="/category/20" class="more">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <ul class="clr">
                                {% for key,val in category20 %}
                                <li class="video_li">
                                    <div class="video">
                                        <img src="{{ val.thumb }}" width="100%" height="100%" alt="">
                                    </div>
                                    <a href="/content/20/{{ val.id }}">
                                        <div class="title">{{ val.title }}</div>
                                        <div class="brief">{{ val.description }}</div>
                                        <div class="time">{{ val['createdAt'] | date('Y-m-d') }}</div>
                                    </a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}