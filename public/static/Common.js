//去掉最后一个下划线样式
$(function() {
    //导航最后一个span的下划线$(".ejfl span:last").css("border","none");
    $(".news_list_n_box li:last").css("border", "none"); //左侧推荐新闻列表
    $("#list_none li:last").css("border", "none");
    $("#list_none2 li:last").css("border", "none");
    $("#list_none_a li:last").css("border", "none");
    $(".ejfl span:last").css("border", "none");
    $(".qalist dd:last").css("border", "none");
    $(".block_box .jz_list:last").css("border", "none");
    $(".news_pic_list .picture_list:last").css("border", "none"); //客户见证列表
    $(".y3_right_01 .picture_list:last").css("border", "none"); //新闻列表
})


function SubmitKeyClickCpSearch(evt) 
{    
   evt = evt?evt:window.event;   
   if (evt.keyCode == 13) 
   { 
	 //document.getElementById("imgBtnProductSearch").click();
	 return searchForm();
	 return false;
   }   
}

function tabPro(_id,no,tno)
{
    for(var i=1;i<=tno;i++)
    {
        if(i==no)
        {
            document.getElementById(_id+"_"+i).style.display="block";
            document.getElementById("li_"+_id+"_"+i).className="dq";
        }
        else
        {
            document.getElementById(_id+"_"+i).style.display="none";
            document.getElementById("li_"+_id+"_"+i).className="";
        }
    }
}
//listid 子 id，
		//childdiv 子 标签名 如div li,子标签只有一个
		//MyparentId 父 id
		//Myparentdiv 父 标签名 如div li,子标签只有一个
		//inum 索引值			
		function buylistset(listid,childdiv,MyparentId,Myparentdiv,inum){
			var childlists = document.getElementById(listid).getElementsByTagName(childdiv);
			var parentlists = document.getElementById(MyparentId).getElementsByTagName(Myparentdiv);
			if(childlists!=null && parentlists!=null){
				for(var i=0;i<childlists.length;i++){
					childlists[i].style.display="none";
				}
//				$("#"+listid+">"+childdiv+"").each(function(){
//					$(this).hide();
//				});
				if(childlists.length>inum){
					childlists[inum].style.display="block";
				}				
				for(var i=0;i<parentlists.length;i++){
					parentlists[i].className="";
				}
				//$("#"+MyparentId+">"+Myparentdiv+"").each(function(){
//					$(this).attr("className","");
//				});
				if(parentlists.length>inum){
					parentlists[inum].className="dq";
				}
			}
		}

function onblur1()
{
    if(document.getElementById("txtKeyWord").value=="")
    {
        document.getElementById("txtKeyWord").value="请输入产品关键词";
    }
}

function sxdbfocus()
{
  if(document.getElementById("txtKeyWord").value=='请输入产品关键词')
  { 
    document.getElementById("txtKeyWord").value='';
  } 
}

function sxdbblur()
{
    if(document.getElementById("txtKeyWord").value=='' || document.getElementById("txtKeyWord").value==null)
    {
      document.getElementById("txtKeyWord").value='请输入产品关键词';
    }	  
}


//function disableEnter(event)
//{ 
//    var keyCode = event.keyCode?event.keyCode:event.which?event.which:event.charCode; 
//    if (keyCode ==13)
//    { 
//        //onSearchPro();
//        //searchForm();
//    }
//}
//$(function(){
//    //搜索框响应回车
//    $("#keyword").keydown(function(event){
//        var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode; 
//        if (keyCode ==13){
//            searchForm();
//            return false;
//        }
//    });
//});

function GetUserInfo_ID(){
    var UserInfo_ID=0;
    if(document.getElementById("UserInfo_ID")!=null){
        UserInfo_ID = document.getElementById("UserInfo_ID").value;
        var Ids = UserInfo_ID.split(",");
        if(Ids.lenght>1){UserInfo_ID=Ids[0];}
    }
    return UserInfo_ID;
}


//关键词查询
function searchForm()//关键词查询
{
	var UserInfo_ID="0";
//	if(document.getElementById("UserInfo_ID")!=null){
//	    UserInfo_ID=document.getElementById("UserInfo_ID").value;
//	    var Ids = UserInfo_ID.split(",");//说明可能页面弄了多个userInfo_ID 则只取一个就可以
//	    if(Ids!=null && Ids.length>1){UserInfo_ID=Ids[0];}
//	}
    UserInfo_ID=GetUserInfo_ID();
	if(UserInfo_ID<=0){UserInfo_ID=0;}
	var keyword = document.getElementById("keyword");
	var class1Value=null;//一级分类
	var CorpProductClass1_ID = document.getElementById("CorpProductClass1_ID");
	var class2Value=null;//二级分类
	var CorpProductClass2_ID = document.getElementById("CorpProductClass2_ID");
	
	if(keyword==null)
	{
	    return false;
	}
	
	if (keyword.value =="" || keyword.value == "请输入产品关键词"  || keyword.value == "请输入关键词")
	{		
		alert("请输入关键词!");
		return false;
	}
	if(CorpProductClass1_ID!=null){
	    class1Value= CorpProductClass1_ID.value;
	}
	if(class1Value==null || class1Value==""){
	    class1Value="0";
	}
	if(CorpProductClass2_ID!=null){
	    class2Value= CorpProductClass2_ID.value;
	}
	if(class2Value==null || class2Value==""){
	    class2Value="0";
	}	

	var pathurl="/cn/product-" + UserInfo_ID + "-0-0-0-0-1-"+keyword.value+".html";
	
	window.location.href = pathurl;
	return false;
}


function getdata(Url,DivValue)
{

   //此判断可测试 DivValue 同一次页面，只加载一次 减少与数据的查询
   //非常奇怪，Firefox 为空，但长度是 37
   //IE测试则为 0;
   //可能是两种浏览器的问题
   
   if(!document.getElementById(DivValue))
   {
     return;
   }
   
   var txt="";
   txt=document.getElementById(DivValue).innerHTML;
   //alert(txt.length);
   txtlength=txt.length
   //0  在IE下使用
   //37 在Firefox 使用
   if (txtlength==0 || txtlength==37)
   {
     //document.write(document.getElementById(DivValue));
     //alert('执行一次');
     $.get(Url,null,function getResult(data)
    {
    $("#"+DivValue).html(data);
     }
    );
    }
}






function StyleDisplay(DivValue)
{
  
  //document.write(document.getElementById(DivValue).innerHTML);
  //DivValue=#DivValue;
  //alert(DivValue.style.display);
  
  if (document.getElementById(DivValue).style.display=="")
    document.getElementById(DivValue).style.display="none";
  else
    document.getElementById(DivValue).style.display="";    
  
}

function ChangeImg(imgObj)
{
  
  //改变图片状态,图片必须使用绝对路径
  ImgTxt=document.getElementById(imgObj).src;
  
  if (ImgTxt.indexOf("+.gif")>0)
  {
     
     ImgTxt=ImgTxt.replace("+.gif","-.gif");
     //alert(ImgTxt);
     document.getElementById(imgObj).src=ImgTxt;
  }
  else
  {
     ImgTxt=ImgTxt.replace("-.gif","+.gif");
     document.getElementById(imgObj).src=ImgTxt;
  }
  
}

function show(DivValue)
{
   //显示  
    document.getElementById(DivValue).style.display="";    
  
}

function vis(DivValue)
{
  //隐藏  
  document.getElementById(DivValue).style.display="none";    
  
}

//$(document).ready(function(){
//	TopCs();	
//});

function MenuMouseover(numId)
{
  document.getElementById(numId).src = document.getElementById("2_" + numId).src;
}

function MenuMouceOut(numId)
{  
  if(numId != curmenuid)
  {
    document.getElementById(numId).src = document.getElementById("1_" + numId).src;
  }  
}

function SearchHighlight(idVal,keyword) 
{ 
    var pucl = document.getElementById(idVal); 
    if("" == keyword) return; 
    var temp=pucl.innerHTML; 
    var htmlReg = new RegExp("\<.*?\>","i"); 
    var arrA = new Array(); 
    //替换HTML标签 
    for(var i=0;true;i++) 
    { 
        var m=htmlReg.exec(temp); 
        if(m) 
        { 
            arrA[i]=m; 
        } 
        else 
        { 
            break; 
        } 
        temp=temp.replace(m,"{[("+i+")]}"); 
    } 
    words = unescape(keyword.replace(/\+/g,' ')).split(/\s+/); 
    //替换关键字 
    for (w=0;w<words.length;w++) 
    { 
        var r = new RegExp("("+words[w].replace(/[(){}.+*?^$|\\\[\]]/g, "\\$&")+")","ig"); 
        temp = temp.replace(r,"<b style='color:Red;'>$1</b>"); 
    } 
    //恢复HTML标签 
    for(var i=0;i<arrA.length;i++) 
    { 
        temp=temp.replace("{[("+i+")]}",arrA[i]); 
    } 
        pucl.innerHTML=temp; 
}

function getImage3()      
{      
    var didi = Math.floor(Math.random()*1000); 				
    document.getElementById("code").src = "/Cn/checkCode.aspx?thd ="+didi;     
}
	
function getImage4()      
{      
    var didi = Math.floor(Math.random()*1000); 				
    document.getElementById("code1").src = "/cn/checkCode.aspx?thd ="+didi;     
}

function resetBtn(fm){
    fm.reset();
    return false;
}

function openUrl(url)
{   
    var objxml;
    if (window.ActiveXObject)
    {
        objxml=new ActiveXObject("Microsoft.XMLHttp");
        objxml.open("GET",url,false); 
        objxml.send(); 
    }
    else
    {
        objxml = new XMLHttpRequest();
        objxml.open("GET",url,false); 
        objxml.send(); 
    }
    retInfo=objxml.responseText; 
    //return retInfo;
    if (objxml.status=="200")
    { 
        return retInfo; 
    } 
    else
    { 
        return "-2"; 
    }
}


function click_index()
{
    var RealName = document.getElementById("RealName").value;
    if(RealName=="")
    {
        alert("姓名不能为空，请输入姓名！");
        document.getElementById("RealName").focus();
        return false;
    }
    var Telephone = document.getElementById("Telephone").value;
    if(Telephone=="")
    {
        alert("电话不能为空，请输入电话！");
        document.getElementById("Telephone").focus();
        return false;
    }
    var Address = document.getElementById("Address").value;
    if(Address=="")
    {
        alert("详细地址不能为空，请输入详细地址！");
        document.getElementById("Address").focus();
        return false;
    }
    var Email = document.getElementById("Email").value;
    if(Email=="")
    {
        alert("邮箱不能为空，请输入邮箱！");
        document.getElementById("Email").focus();
        return false;
    }
    var Content = document.getElementById("Content").value;
    if(Content=="")
    {
        alert("备注信息不能为空，请输入备注信息！");
        document.getElementById("Content").focus();
        return false;
    }
    var CheckCode = document.getElementById("CheckCode").value;
    if(CheckCode=="")
    {
        alert("验证码不能为空，请输入验证码！");
        document.getElementById("CheckCode").focus();
        return false;
    }
    
    var userinfo_idindex = document.getElementById("userinfo_idindex").value;
    
    myurl=encodeURI("/Cn/Ajax/GuestBook.aspx?GuestBookValueNum=1&RealName="+RealName+"&Telephone="+Telephone+"&Address="+Address+"&Email="+Email+"&Content="+Content+"&CheckCode="+CheckCode+"&UserInfo_ID="+userinfo_idindex);
    retCode=openUrl(myurl);
    var result = retCode.split('|');
    
    alert(result[1]);
    if(result[0]==1) //在线留言成功,// 刷新一下验证码 清空
    {
        getImage3();//刷新一下验证码
        if(document.getElementById("Content")!=null){
            document.getElementById("Content").value = "";
        }
        if(document.getElementById("CheckCode")!=null){
            document.getElementById("CheckCode").value = "";
        }
        if(document.getElementById("RealName")!=null){
            document.getElementById("RealName").value = "";
        }
        if(document.getElementById("Telephone")!=null){
            document.getElementById("Telephone").value = "";
        }
        if(document.getElementById("Address")!=null){
            document.getElementById("Address").value = "";
        }
        if(document.getElementById("Email")!=null){
            document.getElementById("Email").value = "";
        }
    }else if(result[0]==2){//验证码错误
        getImage3();//刷新一下验证码
        document.getElementById("CheckCode").value="";
        document.getElementById("CheckCode").focus();
    }
}

function click_pro()
{
    var Content = document.getElementById("Content").value;
    if(Content=="")
    {
        alert("评论内容不能为空，请输入评论内容！");
        document.getElementById("Content").focus();
        return false;
    }
    
    var CheckCode = document.getElementById("CheckCode").value;
    if(CheckCode=="")
    {
        alert("验证码不能为空，请输入验证码！");
        document.getElementById("CheckCode").focus();
        return false;
    }
    
    var userinfo_id = document.getElementById("userinfo_idpro").value;
    var corpproduct_id = document.getElementById("corpproduct_idpro").value;
    
    myurl=encodeURI("/Cn/Ajax/GuestBook.aspx?GuestBookValueNum=2&Content="+Content+"&CheckCode="+CheckCode+"&CorpProduct_ID="+corpproduct_id+"&UserInfo_ID="+userinfo_id);
    retCode=openUrl(myurl);
    var result = retCode.split('|');
    
    alert(result[1]);
    if(result[0]==1) //提交成功 刷新一下验证码
    {
        getImage3();//刷新一下验证码
        document.getElementById("Content").value = "";
        document.getElementById("CheckCode").value = "";
    }else if(result[0]==2){//验证码错误
        getImage3();//刷新一下验证码
        document.getElementById("CheckCode").value="";
        document.getElementById("CheckCode").focus();
    }
}

function click_order()
{
    var RealName = document.getElementById("RealName").value;
    if(RealName=="")
    {
        alert("姓名不能为空，请输入姓名！");
        document.getElementById("RealName").focus();
        return false;
    }
    var Telephone = document.getElementById("Telephone").value;
    if(Telephone=="")
    {
        alert("手机或电话不能为空，请输入手机或电话！");
        document.getElementById("Telephone").focus();
        return false;
    }
    var Email = document.getElementById("Email").value;
    if(Email=="")
    {
        alert("邮箱不能为空，请输入邮箱！");
        document.getElementById("Email").focus();
        return false;
    }
    var Content = document.getElementById("Content1").value;
    if(Content=="")
    {
        alert("采购意向描述不能为空，请输入采购意向描述！");
        document.getElementById("Content1").focus();
        return false;
    }
    var CheckCode = document.getElementById("CheckCode1").value;
    if(CheckCode=="")
    {
        alert("验证码不能为空，请输入验证码！");
        document.getElementById("CheckCode1").focus();
        return false;
    }
    
    var userinfo_idorder = document.getElementById("userinfo_idorder").value;
    var corpproduct_idorder = document.getElementById("corpproduct_idorder").value;
    
    
    myurl=encodeURI("/cn/ajax/Order.aspx?OrderValueNum=2&RealName="+RealName+"&Telephone="+Telephone+"&Email="+Email+"&Content="+Content+"&CheckCode="+CheckCode+"&CorpProduct_ID="+corpproduct_idorder+"&UserInfo_ID="+userinfo_idorder);

    retCode=openUrl(myurl);
    var result = retCode.split('|');
    
    alert(result[1]);
    if(result[0]==1) //提交订单成功 // 刷新一下验证码
    {
        getImage4();//刷新一下验证码
        if(document.getElementById("RealName")!=null){
            document.getElementById("RealName").value = "";
        }
        if(document.getElementById("Telephone")!=null){
            document.getElementById("Telephone").value = "";
        }
        if(document.getElementById("Address")!=null){
            document.getElementById("Address").value = "";
        }
        if(document.getElementById("Email")!=null){
            document.getElementById("Email").value = "";
        }
        if(document.getElementById("Content1")!=null){
            document.getElementById("Content1").value = "";
        }
        if(document.getElementById("CheckCode1")!=null){
            document.getElementById("CheckCode1").value = "";
        }
    }
    else if(result[0]==2)
    {//验证码错误
        getImage4();//刷新一下验证码
        document.getElementById("CheckCode1").value="";
        document.getElementById("CheckCode1").focus();
    }
}



function click_onlineorder()
{    
    var Title = document.getElementById("Order1_Title").value;    
    if(Title=="")
    {
        alert("主题不能为空，请输入主题！");
        document.getElementById("Order1_Title").focus();
        return false;
    }    
    
    var RealName = document.getElementById("Order1_OrderRealName").value;
    if(RealName=="")
    {
        alert("姓名不能为空，请输入姓名！");
        document.getElementById("Order1_OrderRealName").focus();
        return false;
    }
    
    var Telephone = document.getElementById("Order1_OrderTelephone").value;
    if(Telephone=="")
    {
        alert("联系电话不能为空，请输入手机或电话！");
        document.getElementById("Order1_OrderTelephone").focus();
        return false;
    }  
    
    var CheckCode = document.getElementById("CheckCode1").value;
    if(CheckCode=="")
    {
        alert("验证码不能为空，请输入验证码！");
        document.getElementById("CheckCode1").focus();
        return false;
    }  
    
    var userinfo_idorder = document.getElementById("userinfo_idorder").value;
    var corpproduct_idorder = document.getElementById("corpproduct_idorder").value;
    var Email = document.getElementById("Order1_OrderEmail").value;  
    var QQ = document.getElementById("Order1_OICQ").value; 
    var Fax = document.getElementById("Order1_Fax").value; 
    var Msn = document.getElementById("Order1_Msn").value; 
    var Content = document.getElementById("Order1_Content").value;  
    
    var orderinfolistStr = "";
    var orderinfolist = document.getElementsByName("orderinfolist"); 
    for(var checknum = 1;checknum<orderinfolist.length; checknum++)
    {
      if(orderinfolist[checknum].checked == true)
      {
         if(orderinfolistStr == "")
         {
           orderinfolistStr += orderinfolist[checknum].value;
         }
         else
         {
           orderinfolistStr += "，" + orderinfolist[checknum].value;
         }
      }
    }  
    
    myurl=encodeURI("/cn/ajax/Order.aspx?OrderValueNum=1&CheckCode="+CheckCode+"&CorpProduct_ID="+corpproduct_idorder+"&UserInfo_ID="+userinfo_idorder +"&RealName="+RealName+"&QQ="+QQ+"&Fax="+Fax+"&Msn="+Msn+"&Telephone="+Telephone+"&Email="+Email+"&Title="+Title+"&orderinfolistStr="+orderinfolistStr+"&Content="+Content);

    retCode=openUrl(myurl);
    var result = retCode.split('|');
    
    alert(result[1]);
    if(result[0]==1) //提交订单成功 // 刷新一下验证码
    {
        getImage4();//刷新一下验证码
        if(document.getElementById("Order1_OrderRealName")!=null)
        {
            document.getElementById("Order1_OrderRealName").value = "";
        }
        
        if(document.getElementById("Order1_OrderTelephone")!=null)
        {
            document.getElementById("Order1_OrderTelephone").value = "";
        }    
        
        if(document.getElementById("Order1_OrderEmail")!=null)
        {
            document.getElementById("Order1_OrderEmail").value = "";
        }
        
        if(document.getElementById("Order1_OICQ")!=null)
        {
            document.getElementById("Order1_OICQ").value = "";
        }
        
        if(document.getElementById("Order1_Fax")!=null)
        {
            document.getElementById("Order1_Fax").value = "";
        }
        
        if(document.getElementById("Order1_Msn")!=null)
        {
            document.getElementById("Order1_Msn").value = "";
        }
        
        if(document.getElementById("Order1_Content")!=null)
        {
            document.getElementById("Order1_Content").value = "";
        }
        
        if(document.getElementById("CheckCode1")!=null)
        {
            document.getElementById("CheckCode1").value = "";
        }
        
        if(document.getElementsByName("orderinfolist"))
        {
            var orderinfolist2 = document.getElementsByName("orderinfolist"); 
            for(var checknum2 = 1;checknum2<orderinfolist2.length; checknum2++)
            {              
              orderinfolist2[checknum2].checked = false;   
            } 
        } 
        
    }
    else if(result[0]==2)
    {//验证码错误
        getImage4();//刷新一下验证码
        document.getElementById("CheckCode1").value="";
        document.getElementById("CheckCode1").focus();
    }
    
}
//首页产品分类切换
function ChangeProductDesc(descStar,zj,className,descCount,descIndex){
    for(var i=1;i<=descCount;i++){
        $("#"+descStar+"_"+i).hide();
    }
    $("#"+descStar+"_"+descIndex).show();
    $(zj).siblings().removeClass(className);
    $(zj).addClass(className);
}
//首页产品分类切换加more
function ChangeProductDesc(descStar,zj,className,descCount,descIndex,moreById,moreSrc){
    for(var i=1;i<=descCount;i++){
        $("#"+descStar+"_"+i).hide();
    }
    $("#"+descStar+"_"+descIndex).show();
    $(zj).siblings().removeClass(className);
    $(zj).addClass(className);
    
    if(document.getElementById(moreById)!=null && moreSrc!=null && moreSrc!=""){
        document.getElementById(moreById).href=moreSrc;
    }
}
