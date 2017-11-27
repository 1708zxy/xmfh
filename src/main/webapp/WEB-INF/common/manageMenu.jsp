<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<script type="text/javascript">
function navList(id) {
    var $obj = $(".J_navlist");
     $obj.find("h4").click(function () {
        var $div = $(this).siblings(".list-item");
        if ($(this).parent().hasClass("selected")) {
            $div.slideUp(600);
            $(this).parent().removeClass("selected");
        }
        if ($div.is(":hidden")) {
            $(".J_navlist li").find(".list-item").slideUp(600);
            $(".J_navlist li").removeClass("selected");
            $(this).parent().addClass("selected");
            $div.slideDown(600);

        } else {
            $div.slideUp(600);
        }
    });
}
$(function(){
	$(".J_navlist").find("li").each(function(){
		var ret = $(this).find("a").hasClass("active");
		if(ret){
			$(this).addClass("selected");
			$(this).find("div").show();
		}
	});
})

</script>
<div class="left_box navbg1">
 
 <div class="user_left or">
  <ul class="J_navlist">
   <li > 
    <h4><a href="javascript:;"><span><em class="c1"></em>基本信息</span><i></i></a></h4>
    <div class="list-item none">
      <dl>
        <dt><a href="${basePath}/manage/initOrganization.action"  <c:if test="${manageMenu=='baseinfo' }" > class="active"</c:if>>基本信息</a></dt>
        <dt><a href="${basePath}/manage/initPlatformConfig.action" <c:if test="${manageMenu=='config' }" > class="active"</c:if>>平台配置</a></dt>
       </dl>	 
    </div>
   </li>
   
   <li> 
    <h4><a href="javascript:;"><span><em class="c2"></em>部门与员工</span><i></i></a></h4>
    <div class="list-item none">
      <dl>
        <dt><a href="${basePath}/manage/postManage.action" <c:if test="${manageMenu=='post' }" > class="active"</c:if>>岗位管理</a></dt>
        <dt><a href="${basePath}/jobLevel/initJobLevel.action" <c:if test="${manageMenu=='jobLevel' }" > class="active"</c:if>>级别设置</a></dt>
        <dt><a href="${basePath}/manage/initDepmAndEmp.action?query" <c:if test="${manageMenu=='emp' }" > class="active"</c:if>>部门与员工</a></dt>
     </dl>	 
    </div>
   </li>
   
   <li> 
    <h4><a href="javascript:;"><span><em class="c3"></em>权限设置</span><i></i></a></h4>
    <div class="list-item none">
      <dl>
        <dt><a href="${basePath}/permission/roleList.action" <c:if test="${manageMenu=='permission' }" > class="active"</c:if>>系统权限</a></dt>
        <dt><a href="${basePath}/sysprofile/dailyPermission.action" <c:if test="${manageMenu=='daily' }" > class="active"</c:if>>嘀嗒权限</a></dt>
<%--         <dt><a href="${basePath}/sysprofile/taskPermission.action" <c:if test="${manageMenu=='task' }" > class="active"</c:if>>任务权限</a></dt> --%>
<%--         <dt><a href="${basePath}/sysprofile/sharePermission.action" <c:if test="${manageMenu=='share' }" > class="active"</c:if>>分享权限</a></dt> --%>
     </dl>	 
    </div>
   </li>
   
   <li> 
    <h4><a href="javascript:;"><span><em class="c4"></em>系统设置</span><i></i></a></h4>
    <div class="list-item none">
      <dl>
        <dt><a href="${basePath}/sysprofile/baseManage.action" <c:if test="${manageMenu=='baseManage' }" > class="active"</c:if>>基本设置</a></dt>
        <dt><a href="${basePath}/sysprofile/customSet.action?type=2" <c:if test="${manageMenu=='pset' }" > class="active"</c:if>>项目设置</a></dt>
        <dt><a href="${basePath}/sysprofile/customSet.action?type=1" <c:if test="${manageMenu=='cset' }" > class="active"</c:if>>合同设置</a></dt>
        <dt><a href="${basePath}/sysprofile/customSet.action?type=3" <c:if test="${manageMenu=='wset' }" > class="active"</c:if>>工作圈设置</a></dt>
        <dt><a href="${basePath}/sysprofile/customSet.action?type=4" <c:if test="${manageMenu=='yset' }" > class="active"</c:if>>运营设置</a></dt>
     </dl>	 
    </div>
   </li>
   
    <li> 
    <h4><a href="javascript:;"><span><em class="c999"></em>流程管理</span><i></i></a></h4>
    <div class="list-item none">
      <dl>
        <dt><a href="${basePath}/manage/flowConfig.action" <c:if test="${manageMenu=='fconf' }" > class="active"</c:if>>流程配置</a></dt>
        <dt><a href="${basePath}/manage/flowControl.action" <c:if test="${manageMenu=='fcont' }" > class="active"</c:if>>流程监控</a></dt>
     </dl>	 
    </div>
   </li>
   
 
   <li <c:if test="${manageMenu=='notice' }" > class="on"</c:if>><h4><a href="${basePath}/notice/noticeManage.action" <c:if test="${manageMenu=='notice' }" > class="active"</c:if>><span><em class="c5"></em>公告管理</span></a></h4></li>
   <li <c:if test="${manageMenu=='workDay' }" > class="on"</c:if>><h4><a href="${basePath}/workday/workDayInfo.action?query" <c:if test="${manageMenu=='workDay' }" > class="active"</c:if>><span><em class="c6"></em>组织日历</span></a></h4></li>
   <li <c:if test="${manageMenu=='log' }" > class="on"</c:if>><h4><a href="${basePath}/log/logManage.action" <c:if test="${manageMenu=='log' }" > class="active"</c:if>><span><em class="c7"></em>日志管理</span></a></h4></li>
    <li <c:if test="${manageMenu=='log' }" > class="on"</c:if>><h4><a href="${basePath}/policyfile/policyfileManage.action" <c:if test="${manageMenu=='log' }" > class="active"</c:if>><span><em class="c8"></em>政策文件</span></a></h4></li>
  </ul>
 </div> 
 <!--user_left-->
 <script type="text/javascript">
  navList(12);
 </script> 
</div>