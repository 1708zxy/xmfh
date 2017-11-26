<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<script type='text/javascript' src='${staticPath}/static/lib/jquery-ui.min.js'></script>


<div class="place">
 <a href="javascript:;" id="back" class="back">&lt; 返回项目列表</a>
 <div class="so"><i></i> <input type="text" id="projectChange" placeholder="搜索项目切换项目"></div>
</div>
 <!--place-->
 <style>
 .ui-autocomplete { width:200px; border:1px solid #ddd; background:#fff; padding:10px;overflow: hidden; margin-left:-35px; }
 </style>
<script type="text/javascript">

$("#projectChange").autocomplete({
	source : function(request, response){
		$.ajax({
			type : "POST",
			url : "${basePath}/project/projectChange.action",
			dataType : "json",
			cache : false,
			data : {
				FName:$("#projectChange").val()
			},
			success : function(json){
				if(json.length!=0){	
					response($.map(json.list, function(item){
								return {
									label : "<div class='change' ><span class='search_con1'>"+item.fName +"</span></div>",
									value : item.fName,
									url:'${basePath}/project/findById.action?FID='+item.fID+'&type=1&statusType=1',
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


</script>
