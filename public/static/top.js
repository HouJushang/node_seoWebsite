function ZkAddFavorite(obj, url, title) {

    var e = window.event || arguments.callee.caller.arguments[0];
    var B = {
        IE: /MSIE/.test(window.navigator.userAgent) && !window.opera
        , FF: /Firefox/.test(window.navigator.userAgent)
        , OP: !!window.opera
    };
    obj.onmousedown = null;

    if (B.FF) {
        obj.setAttribute("rel", "sidebar"), obj.title = title, obj.href = url;
    } else if (B.OP) {
        var a = document.createElement("a");
        a.rel = "sidebar", a.title = title, a.href = url;
        obj.parentNode.insertBefore(a, obj);
        a.appendChild(obj);
        a = null;
    } else {
        if (B) {
            try {
                window.external.addFavorite(url, title);
            }
            catch (e) {
                try {
                    window.sidebar.addPanel(title, url, "");
                }
                catch (e) {
                    alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
                }
            }
        }
    }
}


function SetHome(obj, url) {
    try {
        obj.style.behavior = 'url(#default#homepage)';
        //obj.setHomePage('http://www.baidu.com/');
        obj.setHomePage(url);


    } catch (e) {
        if (window.netscape) {
            try {
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            }
            catch (e) {
                alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置为'true'");
            }
        } else {
            alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【" + url + "】设置为首页。");
        }
    }
} 


//** jQuery Scroll to Top Control script- (c) Dynamic Drive DHTML code library: http://www.dynamicdrive.com.
//** Available/ usage terms at http://www.dynamicdrive.com (March 30th, 09')
//** v1.1 (April 7th, 09'):
//** 1) Adds ability to scroll to an absolute position (from top of page) or specific element on the page instead.
//** 2) Fixes scroll animation not working in Opera.


var scrolltotop = {
    //startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
    //scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).

    setting: { startline: 100, scrollto: 0, scrollduration: 1000, fadeduration: [500, 100] },
    //controlHTML: '<img src="/cn/images/4/lanren_top.jpg" style="width:30px; height:33px" />', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
    controlattrs: { offsetx: 20, offsety: 20 }, //offset of control relative to right/ bottom of window corner
    anchorkeyword: '#top', //Enter href value of HTML anchors on the page that should also act as "Scroll Up" links

    state: { isvisible: false, shouldvisible: false },

    scrollup: function() {
        if (!this.cssfixedsupport) //if control is positioned using JavaScript
            this.$control.css({ opacity: 0 }) //hide control immediately after clicking it
        var dest = isNaN(this.setting.scrollto) ? this.setting.scrollto : parseInt(this.setting.scrollto)
        if (typeof dest == "string" && jQuery('#' + dest).length == 1) //check element set by string exists
            dest = jQuery('#' + dest).offset().top
        else
            dest = 0
        this.$body.animate({ scrollTop: dest }, this.setting.scrollduration);
    },

    keepfixed: function() {

        var $window = jQuery(window)
        var controlx = $window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
        var controly = $window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
        this.$control.css({ left: controlx + 'px', top: controly + 'px' })
    },

    togglecontrol: function() {
        var scrolltop = jQuery(window).scrollTop()
        if (!this.cssfixedsupport)
            this.keepfixed()
        this.state.shouldvisible = (scrolltop >= this.setting.startline) ? true : false
        if (this.state.shouldvisible && !this.state.isvisible) {
            this.$control.stop().animate({ opacity: 1 }, this.setting.fadeduration[0])
            this.state.isvisible = true
        }
        else if (this.state.shouldvisible == false && this.state.isvisible) {
            this.$control.stop().animate({ opacity: 0 }, this.setting.fadeduration[1])
            this.state.isvisible = false
        }
    },

    init: function() {
        jQuery(document).ready(function($) {
            var LanguageVersionColor = document.getElementById("LanguageVersionColor").value;
            var IssytcUrl = "";
            if (document.getElementById("IssytcUrl") != null) {
                IssytcUrl = document.getElementById("IssytcUrl").value;
            }
            var mainobj = scrolltotop
            var iebrws = document.all
            mainobj.cssfixedsupport = !iebrws || iebrws && document.compatMode == "CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
            mainobj.$body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body')
            //mainobj.$control=$('<div id="topcontrol">'+mainobj.controlHTML+'</div>')


            mainobj.$control = $('<div id="topcontrol"><img src="' + IssytcUrl + '/cn/images/' + LanguageVersionColor + '/top.jpg" style="width:30px; height:33px" /></div>')
				.css({ position: mainobj.cssfixedsupport ? 'fixed' : 'absolute', bottom: mainobj.controlattrs.offsety, right: mainobj.controlattrs.offsetx, opacity: 0, cursor: 'pointer' })
				.attr({ title: 'TOP' })
				.click(function() { mainobj.scrollup(); return false })
				.appendTo('body')
            if (document.all && !window.XMLHttpRequest && mainobj.$control.text() != '') //loose check for IE6 and below, plus whether control contains any text
                mainobj.$control.css({ width: mainobj.$control.width() }) //IE6- seems to require an explicit width on a DIV containing text
            mainobj.togglecontrol()
            $('a[href="' + mainobj.anchorkeyword + '"]').click(function() {
                mainobj.scrollup()
                return false
            })
            $(window).bind('scroll resize', function(e) {
                mainobj.togglecontrol()
            })
        })
    }
}

scrolltotop.init()