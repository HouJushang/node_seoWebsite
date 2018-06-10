(function() {var _53code = document.createElement("script");_53code.src = "https://tb.53kf.com/code/code/10173076/1";var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(_53code, s);})();

if(/(iphone|ipad|android|windows phone)/.test(navigator.userAgent.toLowerCase())){
   $('.on_click').click(function(){
        _53App.talk('icon','&zdkf_type=1&kf=&kflist=off');
    }); 
}else{
    $('.on_click').click(function(){
        var api = $53.createApi();
        api.push('cmd', 'kfclient');
        api.push('type', 'popup');
        api.query();
    }); 
};



/** laytpl-v1.1 */
;!function(){"use strict";var f,b={open:"{{",close:"}}"},c={exp:function(a){return new RegExp(a,"g")},query:function(a,c,e){var f=["#([\\s\\S])+?","([^{#}])*?"][a||0];return d((c||"")+b.open+f+b.close+(e||""))},escape:function(a){return String(a||"").replace(/&(?!#?[a-zA-Z0-9]+;)/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/'/g,"&#39;").replace(/"/g,"&quot;")},error:function(a,b){var c="Laytpl Error：";return"object"==typeof console&&console.error(c+a+"\n"+(b||"")),c+a}},d=c.exp,e=function(a){this.tpl=a};e.pt=e.prototype,e.pt.parse=function(a,e){var f=this,g=a,h=d("^"+b.open+"#",""),i=d(b.close+"$","");a=a.replace(/[\r\t\n]/g," ").replace(d(b.open+"#"),b.open+"# ").replace(d(b.close+"}"),"} "+b.close).replace(/\\/g,"\\\\").replace(/(?="|')/g,"\\").replace(c.query(),function(a){return a=a.replace(h,"").replace(i,""),'";'+a.replace(/\\/g,"")+'; view+="'}).replace(c.query(1),function(a){var c='"+(';return a.replace(/\s/g,"")===b.open+b.close?"":(a=a.replace(d(b.open+"|"+b.close),""),/^=/.test(a)&&(a=a.replace(/^=/,""),c='"+_escape_('),c+a.replace(/\\/g,"")+')+"')}),a='"use strict";var view = "'+a+'";return view;';try{return f.cache=a=new Function("d, _escape_",a),a(e,c.escape)}catch(j){return delete f.cache,c.error(j,g)}},e.pt.render=function(a,b){var e,d=this;return a?(e=d.cache?d.cache(a,c.escape):d.parse(d.tpl,a),b?(b(e),void 0):e):c.error("no data")},f=function(a){return"string"!=typeof a?c.error("Template not found"):new e(a)},f.config=function(a){a=a||{};for(var c in a)b[c]=a[c]},f.v="1.1","function"==typeof define?define(function(){return f}):"undefined"!=typeof exports?module.exports=f:window.laytpl=f}();
/*媒体查询*/
if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match(/8./i)=="8.") { !function(a){"use strict";a.matchMedia=a.matchMedia||function(a){var b,c=a.documentElement,d=c.firstElementChild||c.firstChild,e=a.createElement("body"),f=a.createElement("div");return f.id="mq-test-1",f.style.cssText="position:absolute;top:-100em",e.style.background="none",e.appendChild(f),function(a){return f.innerHTML='&shy;<style media="'+a+'"> #mq-test-1 { width: 42px; }</style>',c.insertBefore(e,d),b=42===f.offsetWidth,c.removeChild(e),{matches:b,media:a}}}(a.document)}(this),function(a){"use strict";function b(){v(!0)}var c={};a.respond=c,c.update=function(){};var d=[],e=function(){var b=!1;try{b=new a.XMLHttpRequest}catch(c){b=new a.ActiveXObject("Microsoft.XMLHTTP")}return function(){return b}}(),f=function(a,b){var c=e();c&&(c.open("GET",a,!0),c.onreadystatechange=function(){4!==c.readyState||200!==c.status&&304!==c.status||b(c.responseText)},4!==c.readyState&&c.send(null))},g=function(a){return a.replace(c.regex.minmaxwh,"").match(c.regex.other)};if(c.ajax=f,c.queue=d,c.unsupportedmq=g,c.regex={media:/@media[^\{]+\{([^\{\}]*\{[^\}\{]*\})+/gi,keyframes:/@(?:\-(?:o|moz|webkit)\-)?keyframes[^\{]+\{(?:[^\{\}]*\{[^\}\{]*\})+[^\}]*\}/gi,comments:/\/\*[^*]*\*+([^/][^*]*\*+)*\//gi,urls:/(url\()['"]?([^\/\)'"][^:\)'"]+)['"]?(\))/g,findStyles:/@media *([^\{]+)\{([\S\s]+?)$/,only:/(only\s+)?([a-zA-Z]+)\s?/,minw:/\(\s*min\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/,maxw:/\(\s*max\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/,minmaxwh:/\(\s*m(in|ax)\-(height|width)\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/gi,other:/\([^\)]*\)/g},c.mediaQueriesSupported=a.matchMedia&&null!==a.matchMedia("only all")&&a.matchMedia("only all").matches,!c.mediaQueriesSupported){var h,i,j,k=a.document,l=k.documentElement,m=[],n=[],o=[],p={},q=30,r=k.getElementsByTagName("head")[0]||l,s=k.getElementsByTagName("base")[0],t=r.getElementsByTagName("link"),u=function(){var a,b=k.createElement("div"),c=k.body,d=l.style.fontSize,e=c&&c.style.fontSize,f=!1;return b.style.cssText="position:absolute;font-size:1em;width:1em",c||(c=f=k.createElement("body"),c.style.background="none"),l.style.fontSize="100%",c.style.fontSize="100%",c.appendChild(b),f&&l.insertBefore(c,l.firstChild),a=b.offsetWidth,f?l.removeChild(c):c.removeChild(b),l.style.fontSize=d,e&&(c.style.fontSize=e),a=j=parseFloat(a)},v=function(b){var c="clientWidth",d=l[c],e="CSS1Compat"===k.compatMode&&d||k.body[c]||d,f={},g=t[t.length-1],p=(new Date).getTime();if(b&&h&&q>p-h)return a.clearTimeout(i),i=a.setTimeout(v,q),void 0;h=p;for(var s in m)if(m.hasOwnProperty(s)){var w=m[s],x=w.minw,y=w.maxw,z=null===x,A=null===y,B="em";x&&(x=parseFloat(x)*(x.indexOf(B)>-1?j||u():1)),y&&(y=parseFloat(y)*(y.indexOf(B)>-1?j||u():1)),w.hasquery&&(z&&A||!(z||e>=x)||!(A||y>=e))||(f[w.media]||(f[w.media]=[]),f[w.media].push(n[w.rules]))}for(var C in o)o.hasOwnProperty(C)&&o[C]&&o[C].parentNode===r&&r.removeChild(o[C]);o.length=0;for(var D in f)if(f.hasOwnProperty(D)){var E=k.createElement("style"),F=f[D].join("\n");E.type="text/css",E.media=D,r.insertBefore(E,g.nextSibling),E.styleSheet?E.styleSheet.cssText=F:E.appendChild(k.createTextNode(F)),o.push(E)}},w=function(a,b,d){var e=a.replace(c.regex.comments,"").replace(c.regex.keyframes,"").match(c.regex.media),f=e&&e.length||0;b=b.substring(0,b.lastIndexOf("/"));var h=function(a){return a.replace(c.regex.urls,"$1"+b+"$2$3")},i=!f&&d;b.length&&(b+="/"),i&&(f=1);for(var j=0;f>j;j++){var k,l,o,p;i?(k=d,n.push(h(a))):(k=e[j].match(c.regex.findStyles)&&RegExp.$1,n.push(RegExp.$2&&h(RegExp.$2))),o=k.split(","),p=o.length;for(var q=0;p>q;q++)l=o[q],g(l)||m.push({media:l.split("(")[0].match(c.regex.only)&&RegExp.$2||"all",rules:n.length-1,hasquery:l.indexOf("(")>-1,minw:l.match(c.regex.minw)&&parseFloat(RegExp.$1)+(RegExp.$2||""),maxw:l.match(c.regex.maxw)&&parseFloat(RegExp.$1)+(RegExp.$2||"")})}v()},x=function(){if(d.length){var b=d.shift();f(b.href,function(c){w(c,b.href,b.media),p[b.href]=!0,a.setTimeout(function(){x()},0)})}},y=function(){for(var b=0;b<t.length;b++){var c=t[b],e=c.href,f=c.media,g=c.rel&&"stylesheet"===c.rel.toLowerCase();e&&g&&!p[e]&&(c.styleSheet&&c.styleSheet.rawCssText?(w(c.styleSheet.rawCssText,e,f),p[e]=!0):(!/^([a-zA-Z:]*\/\/)/.test(e)&&!s||e.replace(RegExp.$1,"").split("/")[0]===a.location.host)&&("//"===e.substring(0,2)&&(e=a.location.protocol+e),d.push({href:e,media:f})))}x()};y(),c.update=y,c.getEmValue=u,a.addEventListener?a.addEventListener("resize",b,!1):a.attachEvent&&a.attachEvent("onresize",b)}}(this);}
// rem单位计算
var _viewport=$(window).width();
    _viewport=_viewport>1920?1920:_viewport;
    var per = _viewport>1920?1:_viewport/1920;
    var fontSize=_viewport/19.20;
    window.screenWidth_ = _viewport;
    $("html").css('font-size',fontSize+'px');

//当前访问页面名称
var visitPage = location.pathname.split('/').pop().split('.')[0];
if(visitPage == ''){
  visitPage = 'index';
}
console.log(visitPage);
/*
 * 获取参数
 *
 */
function GetRequest(){
    var url = location.search;
    var theRequest = {}; 
    if(url.indexOf("?") != -1){
        var str = url.substr(1); 
        strs = str.split("&"); 
        for(var i = 0; i < strs.length; i ++) { 
          theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]); 
        }
    }
    return theRequest; 
}
var urlParam = GetRequest();

var home = urlParam.home;

/* 百度上传 */
function uploader(sc_id,sc_suffix,sc_file,sc_size,sc_func){
  
    var uploader = WebUploader.create({
        resize: false,
        auto: true,
        duplicate :true,
        fileSingleSizeLimit: sc_size * 1024 * 1024,
        swf: '../scripts/Uploader.swf',    //swf文件路径
        server: "/ImageHelper/UploadMobile", // 文件接收服务端。
        pick: {// 选择文件的按钮
            id:sc_id,   
        },
        accept: { // 只允许选择图片文件。
            title: 'Images',
            extensions: sc_suffix,
            mimeTypes: sc_file
        }
    });

    uploader.on("error", function (type) {
        if (type == "Q_TYPE_DENIED") {
            motify.log("请上传"+sc_suffix+"格式文件");
        } else if (type == "F_EXCEED_SIZE") {
            motify.log("文件大小不能超过"+sc_size+"M");
        }else {
            motify.log("上传出错！请检查后重新上传！错误代码"+type);
        }  
    });

    uploader.on('fileQueued', function(file,percentage ){
        motify.log("上传中...请稍等","50","10000");
    });

    uploader.on('uploadSuccess', function (file, response) {
        sc_func(response);
        motify.log("上传完成");
    });
    
    uploader.on('uploadError', function(file,reason){
        motify.log('上传失败！请重试。');
    });
};

/* 简单的消息弹出层 */
var motify = {
  timer:null,
  /*shade 为 object调用 show为true显示 opcity 透明度*/
  /*showTop top位置百分比*/
  log:function(msg,showTop,time,shade){
    if(!showTop){
      showTop = 50;
    }
    $('.motifyShade,.motify').hide();
    if(motify.timer) clearTimeout(motify.timer);
    if($('.motify').size() > 0){
      $('.motify').css('top',showTop+'%').show().find('.motify-inner').html(msg);
    }else{
      $('body').append('<div class="motify" style="display:block;top:'+showTop+'%;"><div class="motify-inner">'+msg+'</div></div>');
    }
    if(shade && shade.show){
      if($('.motifyShade').size() > 0){
        $('.motifyShade').css({'background-color':'rgba(0,0,0,'+(shade.opcity ? shade.opcity : '0.3')+')'}).show();
      }else{
        $('body').append('<div class="motifyShade" style="display:block;background-color:rgba(0,0,0,'+(shade.opcity ? shade.opcity : '0.3')+');"></div>');
      }
    }
    if(typeof(time) == 'undefined'){
      time = 3000;
    }
    if(time != 0){
      motify.timer = setTimeout(function(){
        $('.motify').hide();
      }, time);
    }
  }
};

$(function(){
    $(".header .menu").click(function(event){
        event.stopPropagation();
        $(".header .nav").slideToggle();
    });

    $(".header .nav a,.show_search .cont").click(function(event){
        event.stopPropagation();
    });

    $(".sidebar .on_line").click(function(event){
        event.stopPropagation();
        $(".sidebar .on_line").css("right","-50px");
        $(".sidebar .side ul,.sidebar .revert").show();
    });

    $(".sidebar .revert").click(function(event){
        event.stopPropagation();
        $(".sidebar .on_line").css("right","0px");
        $(".sidebar .side ul,.sidebar .revert").hide();
    });

    $(".search .url").click(function(event){
        event.stopPropagation();
        $(".search .url,.header .nav").hide();
        $(".show_search").show();
    });

    $(document).click(function(){
        $(".user_login").hide();
        if(!/(iphone|ipad|android|windows phone)/.test(navigator.userAgent.toLowerCase()) && $(window).width() > 1200){
            $(".header .nav").show();
        }else{
            $(".header .nav").hide();
        };
        $(".search .url").show();
        $(".show_search").hide();
        $(".sidebar .on_line").css("right","0px");
        $(".sidebar .side ul,.sidebar .revert").hide();
    });

    if($(window).width() > 768){
        $(".body").height($(window).height() - $(".header").outerHeight() - $(".footer").outerHeight() - 40).css({"margin-top":$(".header").outerHeight()+40,"margin-bottom":$(".footer").outerHeight()});
    }else{
        $(".body").css({"padding-top":$(".header").outerHeight()});
        console.log(1);
        $(window).scroll(function(){
            if($(this).scrollTop() > 0){
                $(".header").addClass("on");
            }else{
                $(".header").removeClass("on");
            };
        });
    };

    if($(window).width() > 1200){
        $(".nav .nav_list").not(".nav_index").hover(function(){
            var nav = $(this).find(".nav_list_con");
            $(".body").addClass("on");
            nav.show().css("margin-left",-(nav.width()/2)+30);
        },function(){
            $(".body").removeClass("on");
            $(".nav_list_con").hide();
        });
    };
    

    $(".index_bot ul li").hover(function(){
        $(this).find(".cont_block").show();
    },function(){
        $(this).find(".cont_block").hide();
    });

    $(".user_login .pass").click(function(){
        $(this).toggleClass("on");
    });

    // $(".user_login .tit .tit_list").click(function(){
    //     $(this).addClass("on").siblings().removeClass("on");

    // });

    $(".user_login .tit .tit_list").click(function(){
        var index = $(this).index();
        $(this).addClass("on").siblings(".tit_list").removeClass("on");
        $(".cons_list .con_registe").eq(index).show().siblings(".con_registe").hide();
    }).eq(0).trigger('click');


    $(".popup,.sidebar .side ul").click(function(event){
        event.stopPropagation();
    });

    $(".popup .new a").click(function(){
        if($(this).parents(".popup").hasClass("register")){
            $(".user_login .register").hide().siblings(".login").show();
        }else{
            $(".user_login .login").hide().siblings(".register").show();
        };
    });

    $(".search a.login,a.register").click(function(event){
        event.stopPropagation();
        $(".user_login").show();
        if($(this).hasClass("login")){
            $(".user_login .login").show().siblings().hide();
        }else{
            $(".user_login .register").show().siblings().hide();
        };
    });
        
    $(".con_registe .btn").click(function(){
        window.location.href = "personal_account.html";
        return false;
        $(".con_registe").hide();
        $(".complete").show();
    });

    $(".login_cont .btn").click(function(){
        window.location.href = "enterprise_account.html";
        return false;
        $(".login_cont").hide().siblings(".login_back").show();
    });

    $(".login_back .con_1 .btn").click(function(){
        $(".login_back .con_1").hide().siblings(".con_2").show();
    });

    $(".login_back .con_2 .btn").click(function(){
        $(".login_back .con_2").hide().siblings(".con_3").show();
    });

    $(".login_cont .btn").click(function(){
        $(".login_cont").hide().siblings(".login_back").show();
    });

    $(".obtain").click(function(){           
        $(".obtain").hide();
        $(".already").show();
        var time = 60;
        var t = setInterval(function () {
          if (time <= 1) {
            $(".obtain").show();
            $(".already").hide();
            time = 60;
            clearInterval(t);
          } else {
            time = time - 1;
          }
          $(".already").find("em").text(time);
        }, 1000);
    });


    $(".user_login .del").click(function(){
        $(".user_login").hide();
    });
    // $(".nav_list .nav_a.on").siblings(".nav_list_con").find("a").each(function(){
    //     if($(this).data("id") == urlParam.tab){
    //         $(this).addClass("on").siblings("a").removeClass("on");
    //     };
    // });

    

});

