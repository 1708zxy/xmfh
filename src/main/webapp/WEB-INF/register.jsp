<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/common/common.jsp"%>
<html lang="zh-CN">
<head>
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no,minimal-ui"  />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta name="format-detection" content="telephone=no">
    <meta content="email=no" name="format-detection" />
    <title></title>
    <link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/common.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/login.css">
    <script type="text/javascript" src="${ctx}/staticfile/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/js/common.js"></script>

    <link rel="stylesheet" href="${ctx}/staticfile/validator/jquery.validator.css">
    <script type="text/javascript" src="${ctx}/staticfile/validator/jquery.validator.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/validator/local/zh-CN.js"></script>

    <script type="text/javascript">
//       function selectByName(){
//            var name = $("input[name=FName]").val();
//            $.ajax({
//                url:"/register/selectByName",
//                dataType:"json",   //返回格式为json
//                data:{"name":name},
//                success:function(req){
//                    //请求成功时处理
//                    alert(req);
//                    if(req == "0"){
//                        $("#demo1").submit;
//                    }else{
//                        alert("用户名已存在！")
//                    }
//                }
//
//            });
//        };
    </script>

</head>

<body>

<div class="header bgf">

    <div class="con">
        <div class="logo"><a href="#"><img src=""></a></div>
        <a href="#" class="dl">登 录</a>
    </div>

</div>
<!--header-->

<div class="login_bg"></div>

<form id="demo1" method="post" autocomplete="off" data-validator-option="{theme:'yellow_top'}" action="/register/save">
    <div class="establish bgf">
        <div class="con">
            <h1>注册</h1>
            <ul>
                <li><input type="text"  name="FName" data-rule="用户名:required;FName"  class="txt" placeholder="请输入用户名"></li>
                <li><input type="password" name="FPassword" data-rule="密码: required;FPassword;"  class="txt" placeholder="请输入密码"></li>
                <li><input type="password" name="againPwd" data-rule="确认密码: required;match(FPassword);" class="txt" placeholder="请确认密码"></li>
                <li><input type="text" name="FPhone" placeholder="请输入电话号码" class="txt"
                           data-rule="电话号码:required;FPhone"></li>
                <li><input type="text" class="txt" placeholder="请输入昵称" name="FNickname"
                           data-rule="昵称:required;FNickname" ></li>
                <li><input type="text" class="txt" placeholder="请输入邮箱"  name="FEmail"
                           data-rule="邮箱: required; email;"
                           data-msg-email="{0}邮箱" placeholder="邮箱"></li>
                <%--<li>--%>
                    <%--<input type="text" class="txt" placeholder="请输入验证码" data-rule="验证码: required;Idf" >--%>
                <%--</li>--%>
                <%--<li style="text-align: center">--%>
                    <%--<img onclick="changeImage(this)" src="${ctx}/ValiImage" width="" height="" alt="" />--%>
                    <%--<script>--%>
                        <%--function changeImage(thisobj) {--%>
                            <%--thisobj.src ="${ctx}/ValiImage?a="+new Date().getTime();--%>
                        <%--}--%>
                    <%--</script>--%>
                <%--</li>--%>
                <li><input type="submit" onclick="selectByName();" class="btn" value="完成注册"  ></li>
            </ul>
        </div>
        <!--con-->
    </div>
    <!--establish-->
</form>


<div class="foot">
    <!--<p>地址：北京 昌平 霍营 国风美唐2-913  手机：18813146300  座机：（+86）010-57281080</p>
    <p>Copyright © 2015 nicedesign 京ICP备15000202号-5</p>-->
</div>

</body>

</html>