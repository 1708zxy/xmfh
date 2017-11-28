<%--
  Created by IntelliJ IDEA.
  User: CGB 1L
  Date: 2017/11/27
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link type="text/css" rel="stylesheet" href="${ctx}/css/common.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/css/login.css">
    <script type="text/javascript" src="${ctx}js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="${ctx}js/common.js"></script>

</head>

<body>

<div class="header bgf">

    <div class="con">
        <div class="logo"><a href="#"></a></div>
        <!--<img src="images/logo.png">-->
        <!-- <a href="#" class="dl">登 录</a>-->
    </div>

</div>
<!--header-->

<div class="login_bg"></div>

<div class="establish bgf">
    <div class="con">
        <dl class="chengg">
            <dd><img src="images/cg.jpg"></dd>
            <dt><h2>恭喜您，注册成功</h2></dt>
            <!--<dt><p>您尚未创建，<a href="#">立即创建用户</a></p></dt>-->
            <dt><!--<a href="#" class="bt">--><meta http-equiv="refresh" content="5;url=${ctx}/Login/login">5秒后,进入登录页面!<!--</a>--></dt>
        </dl>
    </div>
    <!--con-->
</div>
<!--establish-->


<!--<div class="foot">
 <p>地址：北京 昌平 霍营 国风美唐2-913  手机：18813146300  座机：（+86）010-57281080</p>
 <p>Copyright © 2015 nicedesign 京ICP备15000202号-5</p>
</div> -->

</body>

</html>
