<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport"
		  content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no,minimal-ui" />
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<meta name="format-detection" content="telephone=no">
	<meta content="email=no" name="format-detection" />
	<title>嘀嗒</title>
	<link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/common.css">
	<link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/top.css">
	<link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/index.css">
	<script type="text/javascript" src="${ctx}/staticfile/js/jquery-1.12.0.min.js"></script>
	<script type="text/javascript" src="${ctx}/staticfile/js/common.js"></script>
	<script type="text/javascript" src="${ctx}/staticfile/./js/jQselect.js"></script>
	<script language="javascript" type="text/javascript"
			src="${ctx}/staticfile/My97DatePicker/WdatePicker.js"></script>
	<script>
        $(function() {
            $('.part').find('a').click(
                function() {

                    $('.part').find('a').attr('class', '');
                    $('.project').find('.boxgbig').css('display', 'none');
                    $(this).attr('class', 'active');
                    $('.project').find('.boxgbig').eq($(this).index()).css(
                        'display', 'block');

                });

        });
	</script>



</head>

<body>

<div class="header">

	<p class="first">
		<a href="#">奈思科技<i></i>
		</a>
	</p>

	<div class="menu">
		<ul>
			<li><a href="#"><i class="b1"></i>首页</a></li>
			<li class="on"><a href="#"><i class="b2"></i>项目</a></li>
			<li><a href="#"><i class="b3"></i>客户</a></li>
			<li><a href="#"><i class="b5"></i>管理</a></li>
		</ul>
	</div>
	<!--menu-->

	<div class="right_cor fr">
		<div class="row">
			<input type="text" placeholder="搜索工作、同事、附件"><i></i>
		</div>
		<div class="news_b">
			<i></i><a href="#">消息</a><em>5</em>
		</div>
		<div class="man">
			<a href="#">陈政<i></i>
			</a>
		</div>
	</div>
	<!--right_cor-->
</div>
<!--header-->

<div class="main">

	<%@ include file="/WEB-INF/common/projectMenu.jsp"%>

	<div class="project_right">

		<div class="condition bgf navbg1">
			<div class="top">

				<h1>全部项目</h1>
				<div class="serch">
					<form method="post" action="/projectController/findByName">
						<input name="FName" type="text" class="text" placeholder="请输入项目名称">
						<input type="submit" value=""class="submit">
					</form>
				</div>
				<!--serch-->
				<a href="javascript:;" class="senior">高级搜索</a>

				<div class="right_bt">
					<a href="javascript:;" class="jian">新建项目</a> <a href="#">导出项目</a>
				</div>
				<!--right_bt-->
			</div>
			<!--top-->

			<div class="bottom or">
				<ul>
					<li><a href="#" >执行中<span>${status[0]}</span>
					</a></li>
					<li><a href="#">未启动<span>${status[1]}</span>
					</a></li>
					<li><a href="#">完成<span>${status[2]}</span>
					</a></li>
					<li class="on"><a href="#">全部<span>${status[3]}</span>
					</a></li>
				</ul>

				<div class="part">

					<a class="" href="JavaScript:;"></a> <a class="active"
															href="JavaScript:;"></a>

				</div>
				<!--part-->
			</div>
			<!--bottom-->

			<div class="popover">

				<div class="top_cor or">
					<h1>高级搜索</h1>
					<a href="JavaScript:;" class="close">╳</a>
				</div>
				<!--top_cor-->

				<div class="con_cor">
					<form method="post" action="/projectController/findServlet">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="54" width="8%"><strong>项目名称</strong></td>
								<td width="45%" align="left">
									<input name="FName" type="text" class="txt w1" placeholder="请输入项目名称" /></td>
							</tr>
							<tr>
								<td height="54" width="8%"><strong>项目经理</strong></td>
								<td width="45%" align="left">
									<%--<input name="FPM"type="text" class="txt w1" placeholder="请输入项目经理" />--%>
									<select name="FPM" id="dj1" style="display: none">
										<option>请选择项目类别</option>
										<option>请选择项目类别1</option>
										<option>请选择项目类别2</option>
										<option>请选择项目类别3</option>
									</select>
								</td>
							<tr>
								<td height="54" width="8%"><strong>项目状态</strong></td>
								<td width="45%" align="left">
									<input name="FStatus"type="text" class="txt w1" placeholder="请输入项目状态（0,1,2）" /></td>

							</tr>


							<tr>
								<td height="50">&nbsp;</td>
								<td colspan="3">
									<input type="submit" value="搜 索"class="btn1">
									<input type="button" value="取 消"class="btn2 close"></td>
							</tr>

						</table>
						<script type=text/javascript>
                            $(document).ready(function() {
                                $("#dj1").selectbox();
                                $("#dj2").selectbox();
                                $("#dj3").selectbox();
                            });
						</script>
					</form>
				</div>
				<!--con_cor-->
			</div>
			<!--popover-->


		</div>
		<!--condition-->

		<div class="project">



			<div class="boxgbig or">

				<div class="bge">

					<div class="theadd">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="18%">项目名称</td>
								<td width="10%">编码</td>
								<td width="11%">项目类别</td>
								<td width="9%">部门ID</td>
								<td width="10%">开始日期</td>
								<td width="12%">计划/实际人天</td>
								<td width="3%">&nbsp;</td>
							</tr>
						</table>
					</div>

					<div class="nie">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<c:forEach items="${pList}" var="p" >
								<tr>
									<td width="18%">${p.FName} </td>
									<td width="10%">${p.FNumber}</td>
									<td width="11%">
										<c:if test="${p.FStatus==0}">未执行</c:if>
										<c:if test="${p.FStatus==1}">完成</c:if>
										<c:if test="${p.FStatus==2}">执行中</c:if>
									</td>
									<td width="9%">${p.FDeptId}</td>
									<td width="10%">${p.FCreateTime}</td>
									<td width="12%">30/22</td>
									<td width="3%"><a href="#" class="zan a1"></a></td>
								</tr>
							</c:forEach>
						</table>

					</div>
					<!--nie-->


				</div>
				<!--bge-->
			</div>
			<!--boxgbig-->

				<div class="boxgbig" style="display: block;">
					<c:forEach items="${pList}" var="p" >
						<div class="list">
							<div class="pic">
								<a href="/projectController/findByNum?FNumber=${p.FNumber}"><img src="../../staticfile/images/ka_03.jpg"></a>
							</div>
							<div class="titie">
								<h1>${p.FName} </h1>
								<%--<a href="#" class="zan z1"></a>--%>
							</div>

							<div class="con or">
								<h2>
										${p.FName} <span>●</span>
									<c:if test="${p.FStatus==0}">未执行</c:if>
									<c:if test="${p.FStatus==1}">完成</c:if>
									<c:if test="${p.FStatus==2}">执行中</c:if>
								</h2>
								<div class="progress">
									<p style="width: 60%;"></p>
								</div>
								<ul>
									<li><a href="#"><i></i>${p.FCname}</a></li>
								</ul>

							</div>
						</div>
					</c:forEach>
					<!--list-->
				</div>

			<!--boxgbig-->

			<%--<div class="more">--%>
				<%--<a href="#">加载更多…</a>--%>
			<%--</div>--%>

		</div>
		<!--project-->
	</div>
	<!--project_right-->


</div>
<!--main-->
<script type="text/javascript">
    $(".navbg1").capacityFixed1();
</script>

<div class="elt">
	<div class="theme-mask"></div>
	<div class="popover1">
		<div class="top_cor or">
			<h1>新增项目</h1>
			<a class="close1 gb" href=""> ╳</a>
		</div>
		<!--top_cor-->

		<div class="con_cor">
			<form  action="${app}/register/save" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">

					<tr>
						<td height="54"><strong><em>*</em>项目编码</strong></td>
						<td width="45%"><input type="text" class="txt w1" placeholder="请输入编码" name="FNumber"></td>
						<td height="54" ><strong><em>*</em>项目名称</strong></td>
						<td width="45%"><input type="text" class="txt w1" placeholder="请输入项目名称"name="FName"></td>
					</tr>
					<tr>
						<td height="54"><strong><em>*</em>项目经理</strong></td>
						<td width="45%">
							<%--<input type="text" class="txt w1" placeholder="请输入经理" name="FPM">--%>
							<select name="FPM" id="jl3" style="display: none">
								<option>请选择项目经理</option>
								<c:forEach items="${emplist}" var="emp">
									<option value="${emp.FUserID}">${emp.FName}</option>
								</c:forEach>
							</select>
						</td>
						<td height="54" ><strong><em>*</em>项目创建人</strong></td>
						<td width="45%">
							<%--<input type="text" class="txt w1" placeholder="请输入项目创建人"name="FCreateUser">--%>
								<select name="FCreateUser" id="jl2" style="display: none">
									<option>请选择项目创建人</option>
									<c:forEach items="${emplist}" var="emp">
										<option value="${emp.FUserID}">${emp.FName}</option>
									</c:forEach>
								</select>
						</td>
					</tr>
					<%--<tr>
						<td height="54"><strong><em>*</em>项目经理</strong></td>
						<td align="left">
							<select name="parentUserId.FUserId">
								<option>请选择负责经理</option>
								<c:forEach items="${list}" var="d">
									<option value="${FUserId}">${d.FName}</option>
								</c:forEach>
							</select>
						</td>
					</tr>--%>
					<%--<tr>
						<td height="54"><strong><em>*</em>负责部门</strong></td>
						<td align="left">
							<select name="">
								<option>请选择负责部门</option>
							</select>
						</td>
					<tr height="54">
						<td><strong><em>*</em>项目成员</strong></td>
						<td align="left">
							<select name="">
								<option>请选择项目成员</option>
							</select>
					</tr>--%>
					<tr height="54">
						<td><strong><em>*</em>创建日期</strong></td>
						<td><input type="Date" name="FCreateTime" /></td>
						</td>
					</tr>
					<tr height="54">
						<td><strong><em>*</em>项目状态</strong></td>
						<td>
							<input type="radio" name="FStatus" value="0"/>未执行
							<input type="radio" name="FStatus" value="1"/>完成
							<input type="radio" name="FStatus" value="2"/>执行中
						</td>
					</tr>
					<tr height="100">
						<td valign="top"><strong style="margin-top:5px; display:block;">项目说明</strong></td>
						<td colspan="3" align="left">
     <textarea placeholder="请输入项目说明……" class="txt w3" name="FDescribe">
     </textarea>
						</td>
					</tr>
				</table>

			<td><input type="submit" value="新 增" class="btn1">


				<input type="button" value="取 消" class="btn2 close1"></td>

			<ul>
				<td height="50">&nbsp;</td>

			<%--<a class="submint" onclick="document.getElementById('save').submit();this.blur"></a>--%>
			</ul>
			<script type=text/javascript>
                $(document).ready(function() {
                    $("#jl1").selectbox();
                    $("#jl2").selectbox();
                    $("#jl3").selectbox();
                    $("#jl4").selectbox();
                    $("#jl5").selectbox();
                    $("#jl6").selectbox();
                });
			</script>
			</form>
		</div>
		<!--con_cor-->
	</div>

</div>

<!--elt-->

</body>

</html>