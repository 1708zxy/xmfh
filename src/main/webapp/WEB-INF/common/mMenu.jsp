<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<script type="text/javascript">
<!--

//-->
</script>
<div class="menubtn">
 <a href="${basePath}/mindex/index.action" <c:if test='${fn:contains(pageContext.request.requestURI,"index")}'>class='on'</c:if>><i class="b1"></i>首页</a>
 <a href="${basePath}/muser/appCenter.action" <c:if test='${fn:contains(pageContext.request.requestURI,"appCenter")}'>class='on'</c:if>><i class="b2"></i>应用</a>
<!--  <a href="javascript:void(0);"><i class="b3"></i>通讯录</a>  -->
 <a href="${basePath}/muser/myCenter.action" <c:if test='${fn:contains(pageContext.request.requestURI,"my")}'>class='on'</c:if>
 <c:if test='${fn:contains(pageContext.request.requestURI,"flow")}'>class='on'</c:if>><i class="b4"></i>我的</a> 
</div>