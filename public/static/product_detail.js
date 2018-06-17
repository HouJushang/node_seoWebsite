
function ShowBigA(imghref){//设置取大图图片
	var intwidth=0;
    var intheight=0;
	var BigA = document.getElementById("imgbig");//imgbig 这儿名为大图链接 a标签 id
	if(BigA!=null)
	{
		var Yuanimghref=imghref;//原图路径
		try{
			var Paths = imghref.split('/');
			if(Paths!=null && Paths.length>0){
				var picName=Paths[Paths.length-1];
				if(picName.length>0){
				Yuanimghref=imghref.replace(picName,("0"+picName.substring(1,picName.length)));
				}
			}
		}catch(ex){}
		BigA.href=Yuanimghref;//链接为原图
		var imgs = BigA.getElementsByTagName("img");
		if(imgs!=null && imgs.length>0){
			imgs[0].src=imghref;
			//intwidth=imgs[0].width;
			//intheight=imgs[0].height;
			//alert(intheight);
			
			var image=new Image();//因为在IE 里如直接获取 图 大小还是原来大小，则这里创建大小图获取大小
            image.src=imghref;
            intwidth = image.width;
            intheight = image.height;
		}
		//setTimeout(SetDetailImg(intwidth,intheight),1000);//慢一秒钟执行 ，不确定什么原因 IE里有些东西没加载完
		SetDetailImg(intwidth,intheight);
	}
}
function SetDetailImg(intwidth,intheight){//设置放大中的 div
	$('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();//这里产品详细页 放大图 重新加载下
	if(document.getElementById("wrap")!=null){
		var divs = document.getElementById("wrap").getElementsByTagName("div");
		for(var i=0;i<divs.length;i++){
		    divs[i].style.height=intheight+"px";
		    divs[i].style.width=intwidth+"px";
		}
    }
}
