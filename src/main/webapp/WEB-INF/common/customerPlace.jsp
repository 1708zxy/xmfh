<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<script type='text/javascript' src='${staticPath}/static/lib/jquery-ui.min.js'></script>
<link rel="shortcut icon" href="${staticPath}/static/images/icon.ico" type="image/x-icon">
<style>
.projectbox_left ul li a i.k4{ background-position:-22px -365px; vertical-align:-4px;}
.projectbox_left ul li a:hover i.k4{ background-position:0 -365px; vertical-align:-4px;}
.projectbox_left ul li.on a i.k4{ background-position:0 -365px; vertical-align:-4px;}
</style>
<script type="text/javascript">
$(document).ready(function(){
	 $(".guanzhu").hover(
			   function(){$(this).text("取消关注")},
			   function(){$(this).text("关注中")}
			 );
});
</script>
 
<div class="main">
<div class="place">
 <a href="${basePath}/customer/list.action?type=1&statusType=1" id="back" class="back">&lt; 返回客户列表</a>
 <div class="so"><i></i> <input type="text" id="customerChange" placeholder="切换客户"></div>
</div>
 <!--place-->
<div class="projectbox"> 

<div class="projectbox_left navbg2" id="khtop">
 <div class="worktop">
 <dl style="top: 0px;">
   <dt>
  <%--   <c:choose>
	  	<c:when test="${not empty mapDetail.Path}"> <img style="height: 90px;width: 214px;" src="${imgUrl}?rid=${mapDetail.Path}"/>   </c:when>
	  	<c:otherwise><img src="${staticPath}/static/images/xz_03.jpg"></c:otherwise>
  	</c:choose>  --%>
  	<c:choose>
  	<c:when test="${mapDetail.Path == '1'}"> <img style="height: 90px;width: 214px;" src="${staticPath}/static/images/custz_03.jpg"/> </c:when>
  	<c:when test="${mapDetail.Path == '2'}">  <img style="height: 90px;width: 214px;" src="${staticPath}/static/images/custz_04.jpg"/> </c:when>
  	<c:when test="${mapDetail.Path == '3'}"> <img style="height: 90px;width: 214px;" src="${staticPath}/static/images/custz_05.jpg"/> </c:when>
  	<c:when test="${mapDetail.Path == '4'}"> <img style="height: 90px;width: 214px;" src="${staticPath}/static/images/custz_06.jpg"/> </c:when>
  	<c:when test="${mapDetail.Path == '5'}">  <img style="height: 90px;width: 214px;" src="${staticPath}/static/images/custz_07.jpg"/> </c:when>
  	<c:otherwise><img style="height: 90px;width: 214px;" src="${imgUrl}?rid=${mapDetail.Path}"/> </c:otherwise>
  </c:choose>
  
   </dt>
   <dd><h1 title="${mapCustomerCount.customerName}">
   <c:choose>  
	    <c:when test="${fn:length(mapCustomerCount.customerName) > 10}">  
	        <c:out value="${fn:substring(mapCustomerCount.customerName, 0, 12)}..." />  
	    </c:when>  
	   <c:otherwise>  
	      <c:out value="${mapCustomerCount.customerName}" />  
	    </c:otherwise>  
	</c:choose> 
   </h1></dd>
   <dd><p>${mapCustomerCount.custClassName}</p></dd>
 </dl>

</div>
<!--top-->
<div class="con bgf or" id="workbartop">
<input type="hidden" value ="${mapDetail.attID }" id="isatt">
<a href="javascript:;" class="guanzhu">关注中</a>
<a href="javascript:;" class="guanzhu1">关  注</a>
 
 <div class="kehulist">
   <dl>
     <dt>${mapCustomerCount.projectNum}</dt>
     <dd>项目</dd>
   </dl>
   <div class="lineli"></div>
   <dl>
   
     <dt>${mapCustomerCount.dailynum}</dt>
     <dd>日志</dd>
   </dl>
   <div class="lineli"></div>
   <dl>
     <dt>${mapCustomerCount.sharenum}</dt>
     <dd>分享</dd>
   </dl>
   
 </div>

 <ul>
   <li <c:if test="${customer == 'detail' }">class = "on" </c:if> ><a href="${basePath}/customer/findById.action?FID=${FID }&type=1&statusType=1"><i class="c1"></i>基本信息</a></li>
   <%--<li <c:if test="${customer == 'dynamic' }">class = "on" </c:if> ><a href="${basePath}/customer/cusDynamic.action?FID=${FID }&type=1&statusType=1&tctype=1"><i class="c2"></i>客户动态</a></li>--%>
   <li <c:if test="${customer == 'project' }">class = "on" </c:if> ><a href="${basePath}/customer/findProject.action?FID=${FID }&statusType=1"><i class="c3"></i>客户项目</a></li>
   <li <c:if test="${customer == 'file' }">class = "on" </c:if> ><a href="${basePath}/customer/selectCustFilePage.action?FID=${FID }&filetype=1"><i class="c4"></i>客户文档</a></li>
   <li <c:if test="${customer == 'member' }">class = "on" </c:if> ><a href="${basePath}/customer/getCustshare.action?FID=${FID }"><i class="c5"></i>共享成员</a></li>
   <li <c:if test="${customer == 'contacts' }">class = "on" </c:if>><a href="${basePath}/customer/custcontacts.action?FID=${FID }"><i class="k4"></i>联系人</a></li>

   <!-- <li><a href="javascript:void(0);"><i class="c6"></i>客户分析</a></li>  -->
   <li <c:if test="${customer == 'log' }">class = "on" </c:if>><a href="${basePath}/customer/getLogByCust.action?FID=${FID }"><i class="c7"></i>操作记录</a></li>

 </ul>  
</div> 

</div>
<!--projectbox_left-->

<script  type="text/javascript"> 
$(".navbg2").capacityFixed2();
</script>
 
<div class="projectbox_right">

 <div class="entry bgf or">
     <shiro:hasAnyPermission name="basedata_customer:delete">
 <c:if test="${(user.FUserID == mapDetail.custManager || user.FUserID == mapDetail.FCreateUser)&& empty listCust }">
 	<a href="javascript:void(0);" class="del" id="delCust">删除</a>
 </c:if>
     </shiro:hasAnyPermission>
 <fmt:parseNumber value="${mapCustomerCount.customerShijiDay }" var="a1" ></fmt:parseNumber>
 <fmt:parseNumber value="${mapCustomerCount.planDay }" var="b1" ></fmt:parseNumber>
 <fmt:formatNumber value="${(a1/b1)*100}" maxFractionDigits="0" var="c1"></fmt:formatNumber>
 
 <div class="entry_bottom or">
  <div class="left_cor fl">
   <h1>投入进度 </h1> 
  <div class="mov">
  
   <div class="progress" <c:if test="${((a1/b1)*100)>=100}">red</c:if>
	   <c:if test="${((a1/b1)*100)<100 && ((a1/b1)*100) >=80}">ye</c:if>>
	  <p style="width:<c:if test="${b1==0}">0</c:if><c:if test="${b1 !=0}">${c1}</c:if>%;"></p>
   </div>
    <span><em><c:if test="${b1==0}">0</c:if><c:if test="${b1 !=0}">${c1}</c:if></em>%</span>
 
  </div>
  <!--mov-->
   
  <div class="txt">客户经理：${mapCustomerCount.managerName}</div> 
  </div>
  <!--left_cor-->
  <fmt:parseNumber value="${mapCustomerFileCountList[0].COUNT}" var="a"></fmt:parseNumber>
  <fmt:parseNumber value="${mapCustomerFileCountList[1].COUNT}" var="b"></fmt:parseNumber>
  <fmt:parseNumber value="${mapCustomerFileCountList[2].COUNT}" var="c"></fmt:parseNumber>
  <fmt:parseNumber value="${mapCustomerFileCountList[3].COUNT}" var="d"></fmt:parseNumber>
  <fmt:parseNumber value="${a+b+c+d}" var="e"></fmt:parseNumber>
  
  <div class="right_cor fr">
   <dl>
    <dd>${mapCustomerCount.customerShijiDay}</dd>
    <dt>实际人天</dt>
   </dl>
   
   <dl>
    <dd>${mapCustomerCount.planDay}</dd>
    <dt>计划人天</dt>
   </dl>
   
   <dl>
    <dd>${mapCustomerCount.projectNum}</dd>
    <dt>项目</dt>
   </dl>
   
   <dl>
    <dd>${e}</dd>
    <dt>文档</dt>
   </dl>
   <input type="hidden" value="${mapDetail.FID}" id="mapDetailFID"> 
  </div>
  <!--right_cor-->
 </div>
 <!--entry_bottom-->
 </div>
<!--entry-->
 <div class="pop">
 
 <div class="theme-mask"></div>
 <div class="popover2">
  <h1>确认删除客户？客户删除后不可恢复</h1>
  
  <p><a id="projectDel" href="javaScript:;">确认删除</a> <a href="javascript:;" class="close">取 消</a></p>
  
 </div>  
  <div class="popover3">
  <h1>客户已关联嘀嗒或分享，是否禁用？</h1>
  
  <p><a id="CustDel" style="    background: #eb3d00;border: 1px solid #eb3d00;" href="${basePath}/customer/disableCust.action?Fid=${FID}">确认禁用</a> <a href="javascript:;" class="close">取 消</a></p>
  
 </div> 
</div>
 <style>
 .ui-autocomplete { width:150px;height: 18px; border:1px solid #ddd; background:#fff; padding:10px;overflow: hidden; margin-left:-35px; }
 </style>
<script type="text/javascript">

$(document).ready(function(){
	if($("#isatt").val()=='' || $("#isatt").val()==null){
		$(".guanzhu").css('display','none');
	}else{
		$(".guanzhu1").css('display','none');
	}
	//取消关注
	$(".guanzhu").click(function(){
		var FID = $("#mapDetailFID").val();
		var temobj =$(this);
		$.ajax({
			async:false, 
			url:'${basePath}/customer/attention.action',
			data:{FID:FID},
			type:'post',
			dataType:'json',
			success:function(datas){
				if(datas.msg ==0){//0取消关注，1添加关注
					$(".guanzhu1").css('display','block');
					$(".guanzhu").css('display','none');
				}
			}
		});
	});
	//添加关注
	$(".guanzhu1").click(function(){
		var FID = $("#mapDetailFID").val();
		var temobj =$(this);

		$.ajax({
			async:false, 
			url:'${basePath}/customer/attention.action',
			data:{FID:FID},
			type:'post',
			dataType:'json',
			success:function(datas){
				if(datas.msg ==1){//0取消关注，1添加关注
					$(".guanzhu").css('display','block');
					$(".guanzhu1").css('display','none');
				}
			}
		});
	});

	
$("#customerChange").autocomplete({
	source : function(request, response){
		$.ajax({
			type : "POST",
			url : "${basePath}/customer/customerChange.action",
			dataType : "json",
			cache : false,
			data : {
				FName:$("#customerChange").val()
			},
			success : function(json){
				if(json.length!=0){	
					response($.map(json.list, function(item){
								return {
									label : "<div class='change' ><span class='search_con1'>"+item.fName +"</span></div>",
									value : item.fName,
									url:'${basePath}/customer/findById.action?FID='+item.fID+'&type=1&statusType=1',
								}
					}));
				}
			}
		});
	},
	select:function(event, ui){
	window.location.href=(ui.item.url);			
	$("#ind_search").autocomplete("close");
	$("#ind_search").blur();
	$("#ind_btn").addClass("btn");
	$("#ind_search").autocomplete("close");
}
});

$("#delCust").click(function(){
	$('.theme-mask').fadeIn();
	$('.popover2').slideDown();  
});

$('.close').click(function(){
	$('.theme-mask').hide();
	$('.popover2').slideUp(200);

});

$("#projectDel").click(function(){
	var FID = $("#mapDetailFID").val();
	$.ajax({
		url:'${basePath}/customer/deleteCust.action',
		data:{Fid:FID},
		type:'post',
		dataType:'json',
		success:function(datas){
			if(datas.msg ==1){//关联了嘀嗒分享
				$('.theme-mask').hide();
				$('.popover2').slideUp();
				$('.theme-mask').fadeIn();
				$('.popover3').slideDown();
			}
			if(datas.msg ==2){//关联了嘀嗒分享
				window.location.href="${basePath}/customer/list.action?type=1&statusType=1";
			}
		}
	});
});

});
</script>