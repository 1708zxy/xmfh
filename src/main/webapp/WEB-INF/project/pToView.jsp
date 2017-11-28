<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link type="text/css" rel="stylesheet" href="${app}/staticfile/css/common.css">
<link type="text/css" rel="stylesheet" href="${app}/staticfile/css/top.css">
<link type="text/css" rel="stylesheet" href="${app}/staticfile/css/index.css">
<script type="text/javascript" src="${app}/staticfile/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="${app}/staticfile/js/common.js"></script>
<script type="text/javascript" src="${app}/staticfile/js/jQselect.js"></script>
<script language="javascript" type="text/javascript" src="${app}/staticfile/My97DatePicker/WdatePicker.js"></script>
<script>
 
$(function(){
	 $('.part').find('a').click(function(){
		
		$('.part').find('a').attr('class','');  		
		$('.project').find('.boxgbig').css('display','none');
		$(this).attr('class','active');
	    $('.project').find('.boxgbig').eq( $(this).index() ).css('display','block');
		
	});
	
});
</script>


 
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
 <div class="man"><a href="#">波波<i></i></a></div>
</div>
<!--right_cor-->
</div> 
<!--header--> 
 
<div class="main">

<div class="left_box navbg1">
 

  <div class="blue_bg "></div>
  
  <div class="left_box_con or">
  <div class="top or wu">
   <dl>
    <dd><img src="../images/ren.jpg" width="80"></dd>
    <dt>波波</dt>
   </dl>
 
  </div>
 <!--top-->
 
 <div class="bottom">
  <ul>
   <li><a href="#"><i class="d1"></i>我的项目</a> <span>28</span></li>
   
   <li><a href="#"><i class="d3"></i>参与项目</a><span>36</span></li>
   <li><a href="#"><i class="d4"></i>下属项目</a><span>152</span></li>
   <li><a href="#"><i class="d5"></i>全部项目</a><span>268</span></li>
</ul>
 </div>
 <!--bottom-->
 
 </div>
<!--left_box_con-->
 
</div>
<!--left_box-->
 
<div class="project_right">

<div class="condition bgf navbg1">
  <div class="top">
  
   <h1>关注项目</h1>

  <div class="right_bt">
   <a href="javascript:;" 
   onclick="window.history.back();">返回</a>
   <a href="#">导出项目</a>
  </div>
  <!--right_bt-->
  </div>

  <div class="popover">
   
   <div class="top_cor or">
     <h1>高级搜索</h1>
     <a href="JavaScript:;" class="close">╳</a>
   </div>

 </div> 

</div> 
<!--condition--> 

<div class="project">


<div class="boxgbig"  style="display:block;">
 <table >
  <tr>
		<td>项目名称：</td>
		<td>${p.FName}</td>
	</tr>
     <tr>
     <td>项目状态：</td>
     <td><c:if test="${p.FStatus==0}">未执行</c:if>
     <c:if test="${p.FStatus==1}">完成</c:if>
     <c:if test="${p.FStatus==2}">执行中</c:if></td>
 </tr>
	<tr>
		<td>项目编号：</td>
		<td>${p.FNumber }</td>
	</tr>
     <tr>
         <td>项目经理：</td>
         <td>${p.FPM}</td>
     </tr>
     <tr>
         <td>部门名称ID：</td>
         <td>${p.FDeptId}</td>
     </tr>
     <tr>
         <td>项目描述：</td>
         <td>${p.FDescribe}</td>
     </tr>
     <tr>
         <td>创建时间：</td>
         <td><fmt:formatDate value="${p.FCreateTime }" pattern="yyyy-MM-dd"/></td>
     </tr>
     <tr>
         <td>创建人：</td>
         <td>${p.FCreateUser }</td>
     </tr>



</table>
  

<!--project-->
</div>
<!--project_right-->


</div>  
</div>
    </div>
</body>

</html>