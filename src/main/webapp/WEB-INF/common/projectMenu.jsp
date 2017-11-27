<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>

<!--top-->
 <fmt:parseNumber value="${indexCount[0].COUNT}" var="a1"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[2].COUNT}" var="b1"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[3].COUNT}" var="c1"></fmt:parseNumber>
 <fmt:parseNumber value="${indexCount[4].COUNT}" var="d1"></fmt:parseNumber>
<div class="bottom">
  <ul>
  <shiro:hasAnyPermission name="report_project:view,report_project:export,report_team:export">
    <li <c:if test="${classtype == 'dida'}"> class='on'</c:if> ><a href="${basePath}/project/getProHourAna.action"><i class="d6"></i>嘀嗒数据</a></li>
  </shiro:hasAnyPermission>
  <shiro:hasAnyPermission name="project_base:add,project_base:edit,project_base:delete,project_base:view,project_base:export">
   <li <c:if test="${type == 1}"> class='tlmenu on'</c:if>><input type='hidden' value="1"/><a href="${basePath}/project/list.action?type=1&statusType=1&query"><i class="d1"></i>我的项目</a> <span>${a1}</span></li>
   <li <c:if test="${type == 2}"> class='tlmenu on'</c:if>><input type='hidden' value="2"/> <a href="${basePath}/project/list.action?type=2&statusType=1&query"><i class="d2"></i>关注项目</a><span>${indexCount[1].COUNT}</span></li>
   <li <c:if test="${type == 3}"> class='tlmenu on'</c:if>><input type='hidden' value="3"/><a href="${basePath}/project/list.action?type=3&statusType=1&query"><i class="d3"></i>参与项目</a><span>${b1}</span></li>
   <li <c:if test="${type == 4}"> class='tlmenu on'</c:if>><input type='hidden' value="4"/><a href="${basePath}/project/list.action?type=4&statusType=1&query"><i class="d4"></i>下属项目</a><span>${c1}</span></li>
   <li <c:if test="${type == 5}"> class='tlmenu on'</c:if>><input type='hidden' value="5"/><a href="${basePath}/project/list.action?type=5&statusType=1&query"><i class="d5"></i>全部项目</a><span>${d1}</span></li>
  </shiro:hasAnyPermission>
  <shiro:hasAnyPermission name="basedata_projecttype:manage,basedata_expensetype:add,basedata_expensetype:edit,basedata_expensetype:delete,basedata_expensetype:view">
   <li class="last">
        <ul>
            <shiro:hasAnyPermission name="basedata_projecttype:manage">
            <li <c:if test="${classtype == 'projectClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=1101"><i class="d7"></i>项目类别</a></li>
            </shiro:hasAnyPermission>
                <%-- 		     <li <c:if test="${classtype == 'productClass'}"> class='on'</c:if> ><a href="${basePath}/submessage/list.action?type=1102"><i class="d8"></i>产品类别</a></li> --%>
             <shiro:hasAnyPermission name="basedata_expensetype:add,basedata_expensetype:edit,basedata_expensetype:delete,basedata_expensetype:view">
            <li <c:if test="${classtype == 'cost'}"> class='on'</c:if> ><a href="${basePath}/cexpenseclass/list.action?FFullName=&thtype=project"><i class="k10"></i>费用类别</a></li>
             </shiro:hasAnyPermission>
        </ul>
   </li>
  </shiro:hasAnyPermission>
  </ul>
 </div>
 <!--bottom-->