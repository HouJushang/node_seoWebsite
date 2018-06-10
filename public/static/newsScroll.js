$(function(){
        $("#news_rolling").Scroll({line:1,speed:400,timer:2000,up:"news_rolling_up",down:"news_rolling_down"});
		//可定义一次滚动的行数 滚动速度 时间延迟 还有向上滚动按钮 向下滚动按钮
});

(function(jQuery){
var flag = "up";
jQuery.fn.extend({
        Scroll:function(opt,callback){
                //参数初始化
                if(!opt) var opt={};
                var _btnUp = jQuery("#"+ opt.up);//Shawphy:向上按钮
                var _btnDown = jQuery("#"+ opt.down);//Shawphy:向下按钮
                var timerID;
                var _this=this.eq(0).find("ul:first");
                var     lineH=_this.find("li:first").height(), //获取行高
                        line=opt.line?parseInt(opt.line,10):parseInt(this.height()/lineH,10), //每次滚动的行数，默认为一屏，即父容器高度
                        speed=opt.speed?parseInt(opt.speed,10):500; //卷动速度，数值越大，速度越慢（毫秒）
                        timer=opt.timer //?parseInt(opt.timer,10):3000; //滚动的时间间隔（毫秒）
                if(line==0) line=1;
                var upHeight=0-line*lineH;
                //滚动函数
                var scrollUp=function(){
						flag = "up";
                        _btnUp.unbind("click",scrollUp); //Shawphy:取消向上按钮的函数绑定
                        _this.animate({
                                marginTop:upHeight
                        },speed,function(){
                                for(i=1;i<=line;i++){
                                        _this.find("li:first").appendTo(_this);
                                }
                                _this.css({marginTop:0});
                                _btnUp.bind("click",scrollUp); //Shawphy:绑定向上按钮的点击事件
                        });
                }
                //Shawphy:向下翻页函数
                var scrollDown=function(){
						flag = "down";
                        _btnDown.unbind("click",scrollDown);
                        for(i=1;i<=line;i++){
                                _this.find("li:last").show().prependTo(_this);
                        }
                        _this.css({marginTop:upHeight});
                        _this.animate({
                                marginTop:0
                        },speed,function(){
                                _btnDown.bind("click",scrollDown);
                        });
                }
               //Shawphy:自动播放
                var autoPlay = function(){
                        if(timer)timerID = window.setInterval(function(){
							if (flag=="up"){
								scrollUp();
							}else{
								scrollDown();	
							}											   
						},timer);
                };
                var autoStop = function(){
                        if(timer)window.clearInterval(timerID);
                };
                 //鼠标事件绑定
                _this.hover(autoStop,autoPlay).mouseout();
                _btnUp.css("cursor","pointer").click( scrollUp ).hover(autoStop,autoPlay);//Shawphy:向上向下鼠标事件绑定
                _btnDown.css("cursor","pointer").click( scrollDown ).hover(autoStop,autoPlay);
        }       
})
})(jQuery);


// 右侧跟随
SidebarFollow = function() {

	this.config = {
		element: null, // 处理的节点
		distanceToTop: 0 // 节点上边到页面顶部的距离
	};

	this.cache = {
		originalToTop: 0, // 原本到页面顶部的距离
		prevElement: null, // 上一个节点
		parentToTop: 0, // 父节点的上边到顶部距离
		placeholder: jQuery('<div>') // 占位节点
	}
};

SidebarFollow.prototype = {

	init: function(config) {
		this.config = config || this.config;
		var _self = this;
		var element = jQuery(_self.config.element);

		// 如果没有找到节点, 不进行处理
		if(element.length <= 0) {
			return;
		}

		// 获取上一个节点
		var prevElement = element.prev();
		while(prevElement.is(':hidden')) {
			prevElement = prevElement.prev();
			if(prevElement.length <= 0) {
				break;
			}
		}
		_self.cache.prevElement = prevElement;

		// 计算父节点的上边到顶部距离
		var parent = element.parent();
		var parentToTop = parent.offset().top;
		var parentBorderTop = parent.css('border-top');
		var parentPaddingTop = parent.css('padding-top');
		_self.cache.parentToTop = parentToTop + parentBorderTop + parentPaddingTop;

		// 滚动屏幕
		jQuery(window).scroll(function() {
			_self._scrollScreen({element:element, _self:_self});
		});

		// 改变屏幕尺寸
		jQuery(window).resize(function() {
			_self._scrollScreen({element:element, _self:_self});
		});
	},

	/**
	 * 修改节点位置
	 */
	_scrollScreen: function(args) {
		var _self = args._self;
		var element = args.element;
		var prevElement = _self.cache.prevElement;

		// 获得到顶部的距离
		var toTop = _self.config.distanceToTop;

		// 如果 body 有 top 属性, 消除这些位移
		var bodyToTop = parseInt(jQuery('body').css('top'), 10);
		if(!isNaN(bodyToTop)) {
			toTop += bodyToTop;
		}

		// 获得到顶部的绝对距离
		var elementToTop = element.offset().top - toTop;

		// 如果存在上一个节点, 获得到上一个节点的距离; 否则计算到父节点顶部的距离
		var referenceToTop = 0;
		if(prevElement && prevElement.length === 1) {
			referenceToTop = prevElement.offset().top + prevElement.outerHeight();
		} else {
			referenceToTop = _self.cache.parentToTop - toTop;
		}

		// 当节点进入跟随区域, 跟随滚动
		if(jQuery(document).scrollTop() > elementToTop) {
			// 添加占位节点
			var elementHeight = element.outerHeight();
			_self.cache.placeholder.css('height', elementHeight).insertBefore(element);
			// 记录原位置
			_self.cache.originalToTop = elementToTop;
			// 修改样式
			element.css({
				top: toTop + 'px',
				position: 'fixed'
			});

		// 否则回到原位
		} else if(_self.cache.originalToTop > elementToTop || referenceToTop > elementToTop) {
			// 删除占位节点
			_self.cache.placeholder.remove();
			// 修改样式
			element.css({
				position: 'static'
			});
		}
	}
};
// 触发
$(function(){
(new SidebarFollow()).init({
	element: jQuery('#sidebar-follow'),
	distanceToTop: 0
});
})

//换一批推荐新闻
function divrefresh(){
   var m1=document.getElementById('movie1');
   var m2=document.getElementById('movie2');
   var m3=document.getElementById('movie3');
   if(m1.style.display=='block'){
      m1.style.display='none';
      m2.style.display='block';
   }else if(m2.style.display=='block'){
      m2.style.display='none';
      m3.style.display='block';
   }else{
      m3.style.display='none';
      m1.style.display='block';
   }
}
//换一批相关产品
function cpdivrefresh(){
   var m1=document.getElementById('cp1');
   var m2=document.getElementById('cp2');
   var m3=document.getElementById('cp3');
   if(m1.style.display=='block'){
      m1.style.display='none';
      m2.style.display='block';
   }else if(m2.style.display=='block'){
      m2.style.display='none';
      m3.style.display='block';
   }else{
      m3.style.display='none';
      m1.style.display='block';
   }
}