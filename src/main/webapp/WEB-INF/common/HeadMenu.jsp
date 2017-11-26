<%@ page import="com.kingdee_yc.yx.webutils.RequestUtils" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>

<script type="text/javascript" src="${staticPath}/static/lib/jquery.cookie.js${staticSuffix}"></script>
<script type="text/javascript">
$(document).ready(function() {
    $(document).on("click","#logout",function(){
        window.location.href="${basePath}/logout.action";
    });
    $(document).on("click","#switch",function(){
        window.location.href="${basePath}/tuser/switchTenant.action";
    });
});
</script>
<% String sq = "1"; %>
 <div class="header">
<%--  ${basePath}/customer/list.action?type=1&statusType=1 --%>
 <p class="first"><a href="javascript:;">${currentSession:getCurrentOrgName()}</a></p>
 <div class="menu">
  <ul>
   <li <c:if test="${thtype == 'index'}">class = "on"</c:if> ><a href="${basePath}/index/index.action"><i class="b1"></i>首页</a></li>
   <li <c:if test="${thtype == 'project'}">class = "on"</c:if> ><a href="${basePath}/project/getProHourAna.action"><i class="b2"></i>项目</a></li>
	<li <c:if test="${thtype == 'hetong'}">class = "on"</c:if> ><a href="${basePath}/contractbill/contractbillAnaly.action?query"><i class="b3"></i>合同</a></li>
<%--    <li <c:if test="${thtype == 'customer'}">class = "on"</c:if> ><a href="${basePath}/customer/list.action?type=1&statusType=1&query"><i class="b3"></i>客户</a></li> --%>
  <li <c:if test="${thtype == 'WorkingCircle'}">class = "on"</c:if>><a href="${basePath}/workflow/center.action"><i class="b4"></i>工作圈</a></li>

	<li <c:if test="${thtype == 'yunying'}">class = "on"</c:if>><a href="${basePath}/cborrow/jumpAnalysis.action?query"><i class="b6"></i>运营</a></li>

    <shiro:hasRole name="001">
	    <li <c:if test="${thtype == 'manage'}">class = "on"</c:if>><a href="${basePath }/manage/initCheckPassWord.action"><i class="b5"></i>管理</a></li>
    </shiro:hasRole>
  </ul>
 </div>
 
 <div class="right_cor fr">
 <div class="row"><input type="text"  value="" placeholder="搜索工作、同事、附件" id="searchAll"><i></i></div>
 <div class="man relave"><a href="javascript:void(0);">
     ${currentSession:getCurrentEmpName()}
     <i></i></a>
   
   <div class="persionbox">
   <ul>
     <li><a href="${basePath}/tuser/updateImage.action" class="prselectpam">个人设置</a></li>
     <c:if test="${cookie.listSize.value ==0}">
      <li style="display: none;"><a href="javascript:;" id="switch">切换组织</a></li>
      </c:if>
      <c:if test="${cookie.listSize.value ==1}">
      <li><a href="javascript:;" id="switch">切换组织</a></li>
      </c:if>
     <li>
     	<a href="javascript:;" id="logout">退出登录</a>
     	<input type="hidden" value="" id="phone">
     	<input type="hidden" value="" id="pass">
     </li>
   </ul>
 </div>
  
   
 </div>
</div>
</div> 

<script >
$(function(){
	//个人设置
	$('.man').click(function(){
	  $('.persionbox').slideDown();
    })
	$('.man').hover(function(){
	  $('.persionbox').slideUp();
	});
	

	$("#searchAll").keyup(function(){
		if($(this).val()!=""){
       		if(event.keyCode == 13){
        		window.location='${basePath}/index/index.action?Fcontent='+$(this).val();
        	}
        }
    });
	
	
	
	
})

</script>