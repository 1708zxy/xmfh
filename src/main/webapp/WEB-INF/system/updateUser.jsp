<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<title>嘀嗒</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/top.css">
<link type="text/css" rel="stylesheet" href="css/index.css">
<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
 
</head>

<body>

<div class="header">
 
 <p class="first"><a href="#">奈思科技<i></i></a></p>
 
 <div class="menu">
  <ul>
   <li><a href="#"><i class="b1"></i>首页</a></li>
   <li class="on"><a href="#"><i class="b2"></i>项目</a></li>
   <li><a href="#"><i class="b3"></i>客户</a></li>
   <li><a href="#"><i class="b4"></i>工作圈</a></li>
   <li><a href="#"><i class="b5"></i>管理</a></li>
  </ul>
 </div>
<!--menu-->

<div class="right_cor fr">
 <div class="row"><input type="text" placeholder="搜索工作、同事、附件"><i></i></div>
 <div class="news_b"><i></i><a href="#">消息</a><em>5</em></div> 
 <div class="man"><a href="#">陈政<i></i></a></div>
</div>
<!--right_cor-->
</div> 
<!--header--> 
 
<div class="main">

<div class="left_box navbg1">
 
 <div class="user_left or">
  <ul>
   <li><a href="#"><i class="u1"></i>修改头像</a></li>
   <li class="on"><a href="#"><i class="u2"></i>修改昵称</a></li>
   <li><a href="#"><i class="u3"></i>修改密码</a></li>
   <li><a href="#"><i class="u4"></i>工作委托</a></li>
  </ul>
 </div> 
 <!--user_left-->
 
</div>
<!--left_box-->
 
 
<div class="user_right bgf or">
 <div class="title"><h1>修改昵称</h1></div>

 <div class="con">
 
  <table width="380" border="0" class="xiugai">
  <tr>
    <td><strong>昵称</strong></td>
    <td><input type="text" class="txt w1" placeholder="请输入"></td>
  </tr>
</table>

 
 </div> 
 <!--con-->

 <div class="btn"><input type="submit" value="保 存"></div> 
 
</div>
<!--user_right-->
</div>  
<!--main-->
<script  type="text/javascript"> 
$(".navbg1").capacityFixed1();
</script>
 
 
</body>

</html>