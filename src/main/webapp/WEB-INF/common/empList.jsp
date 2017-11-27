<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>

<!--top-->
 <fmt:parseNumber value="${indexCount[0].COUNT}" var="a0"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[1].COUNT}" var="a1"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[2].COUNT}" var="a2"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[3].COUNT}" var="a3"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[4].COUNT}" var="a4"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[5].COUNT}" var="a5"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[6].COUNT}" var="a6"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[7].COUNT}" var="a7"></fmt:parseNumber>
<div class="bottom">
  <ul>
   <li <c:if test="${BillType == 400}"> class='on'</c:if>><input type='hidden' value="400"/><a href="${basePath}/workflow/center.action?query"><i class="dd1"></i>流程中心</a> <span>${a0}</span></li>
   <li <c:if test="${BillType == 401}"> class='on'</c:if>><input type='hidden' value="401"/> <a href="${basePath}/cbusapp/jumpCbusapp.action?area=working"><i class="dd3"></i>购票申请</a><span>${a1}</span></li>
  <li <c:if test="${BillType == 4011}"> class='on'</c:if>><input type='hidden' value="4011"/> <a href="${basePath}/cbusapp/jumpCbusappTz.action?area=working"><i class="ddd112"></i>购票台账</a><span>${a1}</span></li>
   <li <c:if test="${BillType== 402}"> class='on'</c:if>><input type='hidden' value="402"/><a href="${basePath}/cborrow/list.action?FBillStatus=0&query"><i class="dd4"></i>借款单</a><span>${a2}</span></li>
   <li <c:if test="${BillType == 403}"> class='on'</c:if>><input type='hidden' value="403"/><a href="${basePath}/cexpensereim/cexpensereimHome.action?query&FBillType=403&area=working"><i class="dd5"></i>费用报销</a><span>${a3}</span></li>
   <li <c:if test="${BillType == 404}"> class='on'</c:if>><input type='hidden' value="404"/><a href="${basePath}/cpuchaseapp/cpuchaseappHome.action?query&FBillType=404&FBillStatus=0"><i class="dd6"></i>采购(日常)申请</a><span>${a4}</span></li>
   <li <c:if test="${BillType == 405}"> class='on'</c:if>><input type='hidden' value="405"/><a href="${basePath}/cpuchasepay/list.action?query&FBillType=405&FBillStatus=0"><i class="dd7"></i>采购(日常)付款</a><span>${a5}</span></li>
<%--    <li <c:if test="${BillType == 406}"> class='on'</c:if>><input type='hidden' value="406"/> <a href="${basePath}/departbudget/departbudgetHome.action"><i class="dd111"></i>部门预算</a><span>${a1}</span></li> --%>
<li <c:if test="${BillType == 499}"> class='on'</c:if>><input type='hidden' value="401"/> <a href="${basePath}/departbudget/departbudgetHome.action?area=working&query"><i class="dd111"></i>部门预算</a><span>${a1}</span></li>
   
 
 
	<li class="last">
    <ul>
<%-- 	   <li class='tlmenu <c:if test="${type == 1}"> on</c:if>'><input type='hidden' value="1"/><a href="${basePath}/emp/workingCycle.action?type=1&empType=1"><i class="d1"></i>我的伙伴</a><span>${mapCountList[0].count2}</span></li> --%>


	 <%--<li class='tlmenu <c:if test="${type == 4}"> on</c:if>'><input type='hidden' value="4"/><a href="${basePath}/emp/workingCycle.action?type=4&empType=1"><i class="k4"></i>通讯录</a><span>${mapCountList[3].count2}</span></li>--%>

	   <li class='tlmenu <c:if test="${BillType == 666}"> on</c:if>'><input type='hidden' value="4"/><a href="${basePath}/policyfile/showPolicyfile.action"><i class="k44"></i>共享文件</a><span></span></li>
  </ul>
	</li>
 
  
<%--    <c:if test="${user.FIsprojcwh == 1}"> --%>
<!-- 	   <li class="last"> -->
<!-- 		    <ul> -->
<%-- 		     <li <c:if test="${classtype == 'projectClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=1101"><i class="d7"></i>项目类别</a></li> --%>
<%-- 		     <li <c:if test="${classtype == 'productClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=1102"><i class="d8"></i>产品类别</a></li> --%>
<!-- 		    </ul> -->
<!-- 	   </li> -->
<%--    </c:if> --%>
  </ul>
 </div>
 <!--bottom-->