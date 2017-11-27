<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>


 <!--top-->
 <fmt:parseNumber value="${indexCount[0].COUNT}" var="a1"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[1].COUNT}" var="b1"></fmt:parseNumber>
<%--  <fmt:parseNumber value="${indexCount[2].COUNT}" var="c1"></fmt:parseNumber>--%>
 <fmt:parseNumber value="${indexCount[2].COUNT}" var="d1"></fmt:parseNumber>
 <%-- <fmt:parseNumber value="${indexCount[4].COUNT}" var="e1"></fmt:parseNumber> --%>
 <fmt:parseNumber value="${indexCount[3].COUNT}" var="g1"></fmt:parseNumber> 
 <fmt:parseNumber value="${indexCount[4].COUNT}" var="f1"></fmt:parseNumber>
 
 <div class="bottom">
  <ul>
  <shiro:hasAnyPermission name="report_contact:view,report_contact:export">
   <li <c:if test="${type == 88}"> class='tlmenu on'</c:if>><a href="${basePath}/contractbill/contractbillAnaly.action?query"><i class="d6" ></i>嘀嗒数据</a><span></span>
   </li>
  </shiro:hasAnyPermission>
  <shiro:hasAnyPermission name="contact_base:add,contact_base:edit,contact_base:delete,contact_base:view,contact_base:export">
      <li <c:if test="${type == 301}"> class='tlmenu on'</c:if>><a href="${basePath}/contractbill/contractbillManage.action?query&owner=me&status=3"><i class="d3" ></i>我的合同</a><span></span>
   </li>
  </shiro:hasAnyPermission>
      <shiro:hasAnyPermission name="basedata_customer:export,basedata_customer:add,basedata_customer:edit,basedata_customer:delete,basedata_customer:view">
          <li <c:if test="${type == 1}"> class='tlmenu on'</c:if>><input type='hidden' value="1"/><a href="${basePath}/customer/list.action?type=1&statusType=1&query"><i class="d1"></i>我的客户</a> <span>${a1}</span></li>
   <li <c:if test="${type == 2}"> class='tlmenu on'</c:if>><input type='hidden' value="2"/><a href="${basePath}/customer/list.action?type=2&statusType=1&query"><i class="d2"></i>关注的客户</a><span>${b1}</span></li>
   <%-- <li <c:if test="${type == 3}"> class='tlmenu on'</c:if>><input type='hidden' value="3"/><a href="${basePath}/customer/list.action?type=3&statusType=1&query"><i class="d4"></i>下属的客户</a><span>${c1}</span></li>--%>
   <li <c:if test="${type == 4}"> class='tlmenu on'</c:if>><input type='hidden' value="4"/><a href="${basePath}/customer/list.action?type=4&statusType=1&query"><i class="k1"></i>共享的客户</a><span>${d1}</span></li>
<%--    <li <c:if test="${type == 5}"> class='tlmenu on'</c:if>><input type='hidden' value="5"/><a href="${basePath}/customer/list.action?type=5&statusType=1&query"><i class="k2"></i>公海客户</a><span>${e1}</span></li>
 --%>   <li <c:if test="${type == 6}"> class='tlmenu on'</c:if>><input type='hidden' value="6"/><a href="${basePath}/customer/list.action?type=6&statusType=1&query"><i class="k3"></i>全部客户</a><span>${g1}</span></li>
      </shiro:hasAnyPermission>
   <!-- <li><a href="javascript:void(0);"><i class="d6"></i>嘀嗒数据</a></li> -->
   <li class="last">
    <ul>
    <shiro:hasAnyPermission name="basedata_contact:add,basedata_contact:edit,basedata_contact:delete,basedata_contact:view,basedata_contact:export">
        <li <c:if test="${classtype == 'contacts'}"> class='on'</c:if>><a href="${basePath}/contacts/list.action?contactsType=1"><i class="k4"></i>联系人</a><span>${f1}</span></li>
    </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="basedata_customertype:manage">
        <li <c:if test="${classtype == 'custClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=101"><i class="k5"></i>客户类别</a></li>
    </shiro:hasAnyPermission>
        <%-- 	     <li <c:if test="${classtype == 'tradeClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=103"><i class="k6"></i>行业</a></li> --%>
<%-- 	     <li <c:if test="${classtype == 'regionIDClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=104"><i class="k7"></i>区域</a></li> --%>
    <shiro:hasAnyPermission name="basedata_productdata:manage">
     <li <c:if test="${classtype == 'icitem'}"> class='on'</c:if> ><a href="${basePath}/icitem/getAllIcitem.action"><i class="k9"></i>产品维护</a></li>
    </shiro:hasAnyPermission>
        <shiro:hasAnyPermission name="basedata_productdata:manage">
     <li <c:if test="${classtype == 'books'}"> class='on'</c:if> ><a href="${basePath}/books/getAllIcitem.action"><i class="k9"></i>软著维护</a></li>
    </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="basedata_goods:manage">
        <li <c:if test="${classtype == 'goods'}"> class='on'</c:if> ><a href="${basePath}/goods/getGoodsList.action"><i class="k12"></i>商品维护</a></li>
    </shiro:hasAnyPermission>
        <shiro:hasAnyPermission name="basedata_unit:manage">
        <li <c:if test="${classtype == 'jiliang'}"> class='on'</c:if> ><a href="${basePath}/unit/getAllUnit.action"><i class="k8"></i>计量单位</a></li>
    </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="basedata_expensetype:add,basedata_expensetype:edit,basedata_expensetype:delete,basedata_expensetype:view">
        <li <c:if test="${classtype == 'cost'}"> class='on'</c:if> ><a href="${basePath}/cexpenseclass/list.action?FFullName=&thtype=hetong"><i class="k10"></i>费用类别</a></li>
    </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="basedata_assist:manage">
     <li <c:if test="${classtype == 'database'}"> class='on'</c:if> ><a href="${basePath}/submessage/databaselist.action?type=202&thtype=hetong"><i class="k7"></i>基础数据</a></li>
    </shiro:hasAnyPermission>
    <shiro:hasAnyPermission name="basedata_stone:manage">
     <li <c:if test="${classtype == 'milestone'}"> class='on'</c:if> ><a href="${basePath}/milestone/milestoneList.action"><i class="k11"></i>里程碑</a></li>
    </shiro:hasAnyPermission>
    </ul>
   </li>
   
  </ul>
 </div>
 <!--bottom--> 