<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>

<!--top-->

<div class="bottom">
  <ul>
  <shiro:hasAnyPermission name="report_contact:view,report_contact:export,report_empwokplan:view,report_empwokplan:export,report_departmentwork:view,report_departmentwork:export,report_borrow:export,report_borrow:view">
    <li <c:if test="${BillType == 1}"> class='on'</c:if>><input type='hidden' value="1"/><a href="${basePath}/cborrow/jumpAnalysis.action.action?query"><i class="d6"></i>嘀嗒数据</a> <span>${a0}</span></li>
  </shiro:hasAnyPermission>
  <shiro:hasAnyPermission name="operative_department:view,operative_department:export,operative_department:add,operative_department:edit,operative_department:delete">
    <li <c:if test="${BillType == 499}"> class='on'</c:if>><input type='hidden' value="401"/> <a href="${basePath}/departbudget/departbudgetHome.action?area=operate&query"><i class="dd111"></i>部门预算</a><span>${a1}</span></li>
  </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="operative_invioce:add,operative_invioce:edit,operative_invioce:delete,operative_invioce:view,operative_invioce:export">
      <li <c:if test="${BillType== 402}"> class='on'</c:if>><input type='hidden' value="402"/><a href="${basePath}/Cinvoicebill/jumpCinvoicebillHome.action?query&FBillStatus=0"><i class="dd13"></i>发票管理</a><span>${a2}</span></li>
    </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="operative_gather:edit,operative_gather:delete,operative_gather:view,operative_gather:export,operative_gather:add">
   <li <c:if test="${BillType == 403}"> class='on'</c:if>><input type='hidden' value="403"/><a href="${basePath}/creceivingbill/jumpCreceivingbillHome.action?FBillStatus=0"><i class="dd14"></i>收款管理</a><span>${a3}</span></li>
    </shiro:hasAnyPermission>
  <shiro:hasAnyPermission name="operative_repay:export,operative_repay:add,operative_repay:edit,operative_repay:delete,operative_repay:view">
    <li <c:if test="${BillType == 40203}"> class='on'</c:if>><input type='hidden' value="40203"/><a href="${basePath}/cborrowreturn/list.action?FBillStatus=0&query"><i class="dd110"></i>还款管理</a><span>${a3}</span></li>
  </shiro:hasAnyPermission>
  
<%--    <c:if test="${user.FIsprojcwh == 1}"> --%>
	   <li class="last">
		    <ul>
                <shiro:hasAnyPermission name="basedata_expensetype:add,basedata_expensetype:edit,basedata_expensetype:delete,basedata_expensetype:view">
		     <li <c:if test="${classtype == 'cost'}"> class='on'</c:if> ><a href="${basePath}/cexpenseclass/list.action?FFullName=&thtype=yunying"><i class="k10"></i>费用类别</a></li>
                </shiro:hasAnyPermission>
                <shiro:hasAnyPermission name="basedata_assist:manage">
		     <li <c:if test="${classtype == 'database'}"> class='on'</c:if> ><a href="${basePath}/submessage/databaselist.action?type=202&thtype=yunying"><i class="k7"></i>基础数据</a></li>
                </shiro:hasAnyPermission>
		     </ul>
	   </li>
<%--    </c:if> --%>
  </ul>
 </div>
 <!--bottom-->