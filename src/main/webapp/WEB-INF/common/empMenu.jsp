<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<script type="text/javascript" src="${staticPath}/static/lib/jquery-1.12.0.min.js${staticSuffix}"></script>
<script type='text/javascript' src='${staticPath}/static/lib/jquery-ui.min.js'></script>
<div class="place">
	<a href="${basePath}/emp/workingCycle.action?type=1&empType=1" class="back">&lt; 返回工作圈列表</a>
	<div class="so">
		<i></i> <input type="text" placeholder="搜索伙伴切换伙伴" id="emp">
	</div>
</div>
<!--place-->
<script type="text/javascript">
	$(document).ready(function(){
		if($("#isatt").val()=='' || $("#isatt").val()==null){
			$("#gzz").css('display','none');
		}else{
			$("#gz").css('display','none'); 
		} 
	});
</script>

<script type="text/javascript">
$(document).ready(function() {
//取消关注
$("#gzz").click(function(){
		 $.ajax({ 
			async:false, 	
			url:'${basePath}/Attention/AttentionEmp.action',
			data:{attentionId:$("#FUserID").val(),type:"3",FTenantID:$("#tenantID").val()},
			type:'post',
			dataType:'json',
			success:function(datas){
				//0代表取消关注，1代表关注
				if(datas.msg == 0){
					$("#gz").css('display','block');
					$("#gzz").css('display','none');
				}
			}});
	});
	//添加关注
	$("#gz").click(function(){
		$.ajax({
			async:false, 	
			url:'${basePath}/Attention/AttentionEmp.action',
			data:{attentionId:$("#FUserID").val(),type:"3",FTenantID:$("#tenantID").val()},
			type:'post',
			dataType:'json',
			success:function(datas){
				if(datas.msg ==1){//0取消关注，1添加关注
					$("#gzz").css('display','block');
					$("#gz").css('display','none');
				}
			}
		});
	});
	
	$("#emp").autocomplete({
		source : function(request, response){
			$.ajax({
				type : "POST",
				url : "${basePath}/emp/selectLikeEmp.action",
				dataType : "json",
				cache : false,
				data : {
					FName : $("#emp").val(),
				},
				success : function(json){
					if(json.length!=0){	
						response($.map(json.list, function(item){
									return {
										label : "<span class='search_con1'>"+item.fName +"</span>",
										value : item.fName,
										url:'${basePath}/emp/selectByID.action?FUserID='+item.fUserID+"&FHiLevel="+item.fHiLevel+"&FTenantID="+item.fTenantID,
										/* type : item.type */
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
	
	$("#headImg").click(function(){
		window.location.href="${basePath}/tuser/updateImage.action";
	});
	
});
</script>
<script type="text/javascript">
<!--

//-->
</script>
<div class="projectbox">

	<div class="projectbox_left navbg2">
		<div class="worktop">
			<div class="worktopbg"></div>
			<dl>
				<dt>
					<img src="${imgUrl}?rid=${empCount.head.headImage}" width="80" id="headImg">
				</dt>
				<dd>
					<h1>${empCount.emp.FName }</h1>
				</dd>
				<dd>
					<p>
						<c:if test="${empCount.msg ==1}">在职</c:if>
						<c:if test="${empCount.msg ==0}">离职</c:if>
					</p>
				</dd>
			</dl>

		</div>
		<!--top-->
		<div class="con bgf or" id="workbartop">
			<a href="javascript:;" class="guanzhu" id="gzz">关注中</a> <a
				href="javascript:;" class="guanzhu" id="gz">未关注</a> <input type="hidden" value="${empCount.head.attID }" id="isatt"> <input
				type="hidden" value="${FHiLevel }" id="FHiLevel">
			<ul>
				<li <c:if test="${thtype == 'jiben'}">class = "on"</c:if>><a
					href='${basePath}/emp/selectByID.action?FUserID=${FUserID}&FHiLevel=${FHiLevel }&FTenantID=${FTenantID}'><i
						class="c1"></i>基本信息</a></li>
				<li <c:if test="${thtype == 'empDynamic'}">class = "on"</c:if>><a
					href="${basePath}/emp/empDynamic.action?tctype=1&FUserID=${FUserID }&FHiLevel=${FHiLevel }&FTenantID=${FTenantID}"><i
						class="c2"></i>动态</a></li>
				<%-- <li <c:if test="${thtype == 'empTask'}">class = "on"</c:if>><a
					href="${basePath}/emp/getCommonTaskListByEmp.action?statusType=1&FUserID=${FUserID }&FHiLevel=${FHiLevel }&FTenantID=${FTenantID}"><i
						class="c3"></i>任务</a></li> --%>
				<li <c:if test="${thtype == 'project'}">class = "on"</c:if>><a
					href="${basePath}/emp/selectProject.action?statusType=1&FUserID=${FUserID }&FHiLevel=${FHiLevel }&FTenantID=${FTenantID}"><i
						class="c4"></i>项目</a></li>
				<li <c:if test="${thtype == 'customer'}">class = "on"</c:if>><a
					href="${basePath}/emp/customerEmp.action?statusType=1&FUserID=${FUserID }&FHiLevel=${FHiLevel }&FTenantID=${FTenantID}"><i
						class="c5"></i>客户</a></li>
				<li <c:if test="${thtype == 'empfile'}">class = "on"</c:if>><a
					href="${basePath}/emp/selectEmpFile.action?FUserID=${FUserID }&FHiLevel=${FHiLevel }&FTenantID=${FTenantID}"><i
						class="c4"></i>文档</a></li>
				<li><a href="javascript:void(0);"><i class="c6"></i>分析</a></li>
				<li><a href="javascript:void(0);"><i class="c7"></i>记录</a></li>
			</ul>
		</div>
	</div>