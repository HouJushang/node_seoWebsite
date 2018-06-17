<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <title>{% block seoTile %}{% endblock %}{{ webInfo.title }}</title>
    <meta name="keywords" content="{{ webInfo.keywords }}">
    <meta name="description" content="{{ webInfo.description }}">
    <link href="/static/css.css" type="text/css" rel="stylesheet">
    <script src="/static/push.js"></script><script type="text/javascript" src="/static/jquery.js"></script>
    <script type="text/javascript" src="/static/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="/static/jquery.min.js"></script>
    <script type="text/javascript" src="/static/superslide.js"></script>
    <script type="text/javascript" src="/static/jcarousellite_1.0.1.js"></script>
    <script type="text/javascript" src="/static/Common.js"></script>
    <script type="text/javascript" src="/static/newsScroll.js"></script>
    <script type="text/javascript" src="/static/top.js"></script>
    <script type="text/javascript" src="/static/top_Menber.js"></script>
    <script type="text/javascript" src="/static/SingleClassImageScroll5.js"></script>
</head>
<body id="body">
<form name="form1" method="post" action="http://y200-2500-27.jz60.com/cn/index-925101.html" id="form1" onsubmit="return false;">
    <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE1Nzk2OTIzMDFkZKMAG9Wx2/V32qfofCwsjE9Jjdz6">
    </div>

    <div>

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DDA18376">
    </div>
    <input type="hidden" id="LanguageVersionColor" name="LanguageVersionColor" value="8"><input type="hidden" id="IssytcUrl" name="Issytc_Url" value="http://jscssimage.jz60.com/y200">
    <div style="display:none;"><input type="text"></div>
    <div id="header">
        <div id="Top1_pl_TOP">
            <div class="logobox">
                <div class="container w1000">
                    <div id="Top1_ctl01_pl_ViewSortClass2" corpsite_valuenum="299" sortclass1_valuenum="10002" data-type="2">
                        <div id="Top1_ctl01_ctl00_toplogo" class="logo" style="float:left;">
                            <div id="Top1_ctl01_ctl00_top_logo"><a title="Logo" href="/w-{{ websiteId }}/index.html" target="_self"><img src="{{ webInfo.logoImg }}" border="0" alt="Logo"></a></div>
                            <div class="remove"></div>
                        </div><div id="Top1_ctl01_ctl01_topright" class="tel" style="float:right;">
                            <div id="Top1_ctl01_ctl01_tel_top"><img src="{{ webInfo.phoneImg }}" border="0" alt="客服热线" title="客服热线"></div>
                        </div>
                    </div>
                </div>
            </div>
            <link href="/static/A.css" rel="stylesheet">
            <div class="topnav">
                <div class="container w1000">
                    <div class="topnav">
                        <ul>
                            <li style="width:98px;" id="index457683233" class="Current"><a style="width:98px;" href="/w-{{ websiteId }}/index.html" title="网站首页">网站首页</a></li>
                            {% for item in topCategory %}
                                <li style="width:98px;" id="index457683233"><a style="width:98px;" href="/w-{{ websiteId }}/{{ item.type }}l-{{ item.id }}.html" title="网站首页">{{ item.name }}</a></li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>

            {% block content %}
            {% endblock %}
            <div id="Bottom1_pl_Bottom">

                <div class="footer_box">
                    <div class="bottom d12">
                        <div class="footer wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s" style="text-align: center">
                            {#<div class="bottom_logo"><img src="/static/0_Y200-2500-27_0_11_20170929175626.gif" border="0" alt="logo"></div>#}
                                <p>
                                    {{ webInfo.copyRight }} {{ webInfo.company }}<br>
                                    咨询热线：{{ webInfo.phone }} 电子邮箱：{{ webInfo.email }}</p>
                                <br>
                            {#<div class="approve"><img src="/static/0_Y200-2500-27_0_13_20170929175626.gif" border="0" alt="二维码"></div>#}
                            <div class="remove"></div>
                        </div>
                        <div class="zk_f wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        </div>
                    </div>
                </div>

            </div>
</form>


<div id="topcontrol" title="TOP" style="position: fixed; bottom: 20px; right: 20px; opacity: 1; cursor: pointer;"><img src="/static/top.jpg" style="width:30px; height:33px"></div></body></html>