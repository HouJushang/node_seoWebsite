function GetUserInfo_ID(){
    var UserInfo_ID=0;
    if(document.getElementById("UserInfo_ID")!=null){
        UserInfo_ID = document.getElementById("UserInfo_ID").value;
        var Ids = UserInfo_ID.split(",");
        if(Ids.lenght>1){UserInfo_ID=Ids[0];}
    }
    return UserInfo_ID;
}

function delcart(abq,productID){//删除购物车对应产品
    var userinfo_id = GetUserInfo_ID();
    if(userinfo_id<=0){
        alert("缺少userinfo_id!");
        return false;
    }
    if(productID<=0){
        alert("删除购物车失败!");
        return false;
    }
    
    $.ajax({ 
    method: "post",
    url: "/cn/ajax/cartdel.aspx?userinfo_id="+userinfo_id+"&id="+productID,
    dataType: "html",
    success: function(data){
        //alert(data);alert("aa");
        var result = data.split('|');
        if(result[0]==1){//成功
            $(abq).parent().parent().parent().parent("li").html("");//当前标签 父标签找到li有几级用多少个parent
            $("#cartnum").text(result[1]);
            if($("#iscart")!=null && $("#iscart").val()==1){
                location.reload();//说明当前页面是购物车页面 页面刷新下
            }
        }else{
            alert(result[1]);
        }
    },
    error: function(err){alert(err);}
    });
}