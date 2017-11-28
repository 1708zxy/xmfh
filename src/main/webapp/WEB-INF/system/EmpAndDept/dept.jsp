<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>

<html lang="zh-CN">
<head>
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no,minimal-ui"  />
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
    <script type="text/javascript" src="${ctx}/staticfile/js/jQselect.js"></script>

    <script type="text/javascript" src="${ctx}/staticfile/js/mousewheel.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/js/easyscroll.js"></script>

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

    </script>
    <script>

        $(function(){



            //获取第一级

            /*function creatfjUl(){

              for( var m=0;m<vt;m++){
                if(zNodes[m].pId==0){
                  fjstr+='<li class="folder"><a href="#" ref="#">'+zNodes[m].name+'</a></li>';
                  createjUl(zNodes[m].id);
                }

              }
              return fjstr;
            }

            //获取第二级
            function createjUl(id){
              fjstr+='<ul show="true">';
              for(var n=0;n<vt;n++){
                if(zNodes[n].pId==id){
                   fjstr+='<li class="er folder"><a href="#" ref="#">'+zNodes[n].name+'</a></li>';
                   creatsjUl(zNodes[n].id);
                }
              }
              fjstr+='</ul>';
              return fjstr;
            }

            //获取第三级
            function creatsjUl(cid){
              fjstr+='<ul class="san">';
              for(var i=0;i<vt;i++){
                if(zNodes[i].pId==cid){
                   fjstr+='<li><a href="#" ref="#">'+zNodes[i].name+'</a><a href="javascript:;" class="set">设置</a></li>';

                }
              }
               fjstr+='</ul>';
               return fjstr;
            }*/






            $("#dj1").selectbox();
            $("#dj2").selectbox();
            $("#dj3").selectbox();
            $("#dj4").selectbox();
            $("#dj5").selectbox();
            $("#dj6").selectbox();
            $("#dj7").selectbox();
            //确定停止部门
            $(document).on('click', '.stopbm', function() {
                $('.theme-mask').fadeIn();
                $('.stopbmbox').slideDown();
            })
            $('.close').click(function(){
                $('.stopbmbox').slideUp();
            })

            //添加部门
            $('.addbmlink').click(function(){
                $('.theme-mask').fadeIn();
                $('.addbmbox').slideDown();
            })
            $('.close').click(function(){
                $('.addbmbox').slideUp();
            })
            //添加员工
            $('.addyglink').click(function(){
                $('.theme-mask').fadeIn();
                $('#addyg').slideDown();
            })
            $('.close').click(function(){
                $('#addyg').slideUp();
            })
            //查看员工
            $('.seeyglink').click(function(){


                $('#seeyg').slideDown();
            })
            $('.close').click(function(){
                $('#seeyg').slideUp();
            })



            //编辑部门
            $(document).on('click', '.editbm', function() {
                $('.theme-mask').fadeIn();
                $('.editbmbox').slideDown();
            })
            $('.close').click(function(){
                $('.editbmbox').slideUp();
            })
            //添加平级部门
            $(document).on('click', '.addpjbm', function() {
                $('.theme-mask').fadeIn();
                $('.addpjbmbox').slideDown();
            })
            $('.close').click(function(){
                $('.addpjbmbox').slideUp();
            })
            //添加下级部门
            $(document).on('click', '.addxjbm', function() {
                $('.theme-mask').fadeIn();
                $('.addxjbmbox').slideDown();
            })
            $('.close').click(function(){
                $('.addxjbmbox').slideUp();
            })


            //添加参与者
            $('.addcyspan2').click(function(e){
                e.stopPropagation();
                $('.zjcybox').fadeIn();
                $('.uploadbox').scroll_absolute({arrows:true});
            })
            $('.zjcybox dl dd label input').click(function(){
                var val = $(this).val();
                var str = val+'<a href="javascript:void(0)" class="delfw"></a>';
                $(this).attr('checked');
                $('.zjcybox dl dd label').removeClass('checked');
                $('.zjcybox dl dd label input').removeAttr('checked');
                $(this).parent().addClass('checked');
                $('#addcybox3 .fwb').html(str);
                $('#addcybox3 .fwb').fadeIn();
            })

            $('#addcybox2').on("click",'a',function(){
                $(this).parent().remove();

            })

            $('.closelady a').click(function(){
                $('.ladaybox').fadeOut();
            })
            $(document).bind("click",function(e){
                var target  = $(e.target);
                if(target.closest(".ladaybox").length == 0){
                    $(".ladaybox").hide();
                };
                e.stopPropagation();
            })

            //修改
            $('.update').click(function(){
                $("[readonly='true']").val("10");
                $("[readonly='true']").attr("style","border:0.5px solid #378888");
                $("[readonly='true']").removeAttr("readonly");

            })









            var zNodes =[
                { id:1, pId:0, name:"父节点1", open:true},
                { id:11, pId:1, name:"父节点11"},
                { id:111, pId:11, name:"叶子节点111"},
                { id:112, pId:11, name:"叶子节点112"},
                { id:1112, pId:111, name:"叶子节点111-1"},
                { id:12, pId:1, name:"父节点12"},
                { id:121, pId:12, name:"叶子节点121"},
                { id:122, pId:12, name:"叶子节点122"},
                { id:123, pId:12, name:"叶子节点123"},
                { id:124, pId:12, name:"叶子节点124"},
                { id:13, pId:1, name:"父节点13 - 没有子节点", isParent:true},
                { id:2, pId:0, name:"父节点2"},
                { id:21, pId:2, name:"父节点21", open:true},
                { id:211, pId:21, name:"叶子节点211"},
                { id:212, pId:21, name:"叶子节点212"},
                { id:213, pId:21, name:"叶子节点213"},
                { id:214, pId:21, name:"叶子节点214"},
                { id:22, pId:2, name:"父节点22"},
                { id:221, pId:22, name:"叶子节点221"},
                { id:222, pId:22, name:"叶子节点222"},
                { id:223, pId:22, name:"叶子节点223"},
                { id:224, pId:22, name:"叶子节点224"},
                { id:23, pId:2, name:"父节点23"},
                { id:231, pId:23, name:"叶子节点231"},
                { id:232, pId:23, name:"叶子节点232"},
                { id:233, pId:23, name:"叶子节点233"},
                { id:234, pId:23, name:"叶子节点234"},
                { id:3, pId:0, name:"父节点3 - 没有子节点", isParent:true}
            ];
            var fjstr='';
            var vt = zNodes.length;
            var haschild = true;
            $('#treebm').html(creatfjUl());

            function creatfjUl(){

                for( var m=0;m<vt;m++){
                    if(zNodes[m].pId==0){
                        fjstr+='<li class="folder"><a href="#" ref="#">'+zNodes[m].name+'</a></li>';
                        creatsunUl(zNodes[m].id);
                    }

                }
                return fjstr;
            }

            function creatsunUl(id){
                if(haschild == true){
                    fjstr+='<ul show="" class="sunul">';
                    for(var n=0;n<vt;n++){
                        if(zNodes[n].pId==id){
                            fjstr+='<li class="er folder"><a href="#" ref="http://www.baidu.com">'+zNodes[n].name+'</a><span class="set">设置</span></li>';
                            creatsunUl(zNodes[n].id);
                            haschild = true;
                        }

                    }
                    fjstr+='</ul>';
                }
                else{
                    for(var n=0;n<vt;n++){
                        if(zNodes[n].pId==id){
                            fjstr+='<li class="er folder"><a href="#" ref="#">'+zNodes[n].name+'</a></li>';
                            creatsunUl(zNodes[n].id);
                            haschild = true;
                        }

                    }
                }



                return fjstr;
            }


            $('.set').click(function(){
            })

            $('.san li').hover(function(){

                $(this).removeAttr('ondab');
                $('.setbox').remove();



            })

        })
    </script>
</head>

<body>

<div class="header">

    <p class="first"><a href="#">奈思科技<i></i></a></p>

    <div class="menu">
        <ul>
            <li><a href="#"><i class="b1"></i>首页</a></li>
            <li><a href="#"><i class="b2"></i>项目</a></li>
            <li><a href="#"><i class="b3"></i>客户</a></li>
            <li><a href="#"><i class="b4"></i>工作圈</a></li>
            <li class="on"><a href="#"><i class="b5"></i>管理</a></li>
        </ul>
    </div>
    <!--menu-->

    <div class="right_cor fr">
        <div class="row"><input type="text" placeholder="搜索工作、同事、附件"><i></i></div>
        <!--<div class="news_b"><i></i><a href="#">消息</a><em>5</em></div> -->
        <div class="man"><a href="#">陈政<i></i></a></div>
    </div>
    <!--right_cor-->
</div>
<!--header-->

<div class="main">

    <div class="left_box navbg1">

        <div class="user_left or">
            <ul class="J_navlist">
                <li>
                    <h4><a href="javascript:;"><span><em class="c1"></em>基本信息</span><i></i></a></h4>
                    <div class="list-item none">
                        <dl>
                            <dt><a href="#">基本信息</a></dt>
                            <dt><a href="#">平台配置</a></dt>
                        </dl>
                    </div>
                </li>

                <li>
                    <h4><a href="javascript:;"><span><em class="c2"></em>部门与员工</span><i></i></a></h4>
                    <div class="list-item none">
                        <dl>
                            <dt><a href="#" class="active">部门与员工</a></dt>
                            <dt><a href="#">岗位设置</a></dt>
                        </dl>
                    </div>
                </li>

                <li>
                    <h4><a href="javascript:;"><span><em class="c3"></em>权限设置</span><i></i></a></h4>
                    <div class="list-item none">
                        <dl>
                            <dt><a href="#">权限设置</a></dt>
                        </dl>
                    </div>
                </li>

                <li>
                    <h4><a href="javascript:;"><span><em class="c4"></em>系统设置</span><i></i></a></h4>
                    <div class="list-item none">
                        <dl>
                            <dt><a href="#">系统设置</a></dt>
                        </dl>
                    </div>
                </li>

                <li><h4><a href="#"><span><em class="c5"></em>公告管理</span></a></h4></li>
                <li><h4><a href="#"><span><em class="c6"></em>组织日历</span></a></h4></li>
                <li class="on"><h4><a href="#"><span><em class="c7"></em>日志管理</span></a></h4></li>
            </ul>
        </div>
        <!--user_left-->
        <script type="text/javascript">
            navList(12);
        </script>
        <script type="text/javascript">
            $(document).ready(function($){
                $(".department .tab").tabso({
                    cntSelect:".department_con",
                    tabEvent:"click",
                    tabStyle:"fade"
                });
            });


        </script>


    </div>
    <!--left_box-->
    <script type="text/javascript" src="js/SimpleTree.js"></script>
    <script type="text/javascript">
        $(function(){

            $(".st_tree").SimpleTree({

                /*
                click:function(a){
                    if($(a).attr("hasChild"))
                        alert($(a).attr("ref"));
                }
                */

            });

        });
    </script>
    <div class="manage bgf">
        <div class="top">

            <h1>部门与员工</h1>

        </div>
        <!--top-->

        <div class="con">
            <div class="manage_left">

                <div class="title">
                    <h1>组织架构</h1>
                    <a href="javascript:;" class="addbmlink">添加部门</a>
                </div>
                <!--title-->

                <div class="department">
                    <div class="tab">
                        <a href="#" class="current">在职</a>
                        <a href="#">已停用</a>
                    </div>
                    <!--tab-->

                    <div class="department_con">
                        <div class="sublist">

                            <div class="st_tree">
                                <ul id="treebm">

                                </ul>
                            </div>

                        </div>
                        <div class="sublist">
                            <div class="st_tree">
                                <ul>
                                    <li><a href="#" ref="#">销售部</a></li>
                                    <ul show="true">
                                        <li class="er"><a href="#" ref="#">销售部一组</a></li>
                                        <ul class="san">
                                            <li><a href="#" ref="#">销售代表A组</a></li>
                                            <li><a href="#" ref="#">销售代表B组</a></li>
                                        </ul>

                                        <li class="er"><a href="#" ref="#">销售部二组</a></li>
                                        <ul class="san">
                                            <li><a href="#" ref="#">销售代表A组</a></li>
                                            <li><a href="#" ref="#">销售代表B组</a></li>
                                        </ul>

                                        <li class="er"><a href="#" ref="#">销售部三组</a></li>
                                        <ul show="true" class="san">
                                            <li><a href="#" ref="#">销售代表A组</a></li>
                                            <li><a href="#" ref="#">销售代表B组</a><a href="#" class="set">设置</a></li>
                                        </ul>
                                    </ul>

                                    <li><a href="#" ref="#">设计部</a></li>
                                    <ul>
                                        <li  class="er"><a href="#" ref="#">设计部一组</a></li>
                                    </ul>
                                    <li><a href="#" ref="#">客服部门</a></li>
                                    <ul>
                                        <li  class="er"><a href="#" ref="#">客服一组</a></li>
                                        <li  class="er"><a href="#" ref="#">客服二组</a></li>
                                        <li  class="er"><a href="#" ref="#">客服三组</a></li>
                                    </ul>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <!--department_con-->
                </div>
                <!--department-->

                <a href="#" class="wei">未分配部门的员工</a>

            </div>
            <!--manage_left-->

            <div class="manage_right">

                <div class="ding">

                    <h1>销售部</h1>
                    <div class="right_cor">
                        <a href="#" class="addyglink">添加员工</a>
                        <a href="#">导出员工</a>
                        <select>
                            <option>全部员工</option>
                            <option>全部员工</option>
                        </select>
                        <div class="serch">
                            <input type="text" class="text" placeholder="搜索">
                            <input type="submit" value="" class="submit">
                        </div>
                        <!--serch-->
                    </div>
                    <!--right_cor-->

                </div>
                <!--ding-->

                <div class="bge">

                    <div  class="theadd">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="10%">姓名</td>
                                <td width="11%">性别</td>
                                <td width="11%">编号</td>
                                <td width="11%">手机号</td>
                                <td width="11%">上级</td>
                                <td width="11%">部门</td>
                                <td width="11%">邮箱</td>
                                <td width="11%">状态</td>
                              </tr>
                        </table>
                    </div>
                    <div class="nie">

                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <c:forEach items="${empList}" var="e">
                            <tr>
                                <td width="12%"><a class="seeyglink">${e.FName}</a></td>
                                <td width="12%">${e.FSex}</td>
                                <td width="12%" >${e.FJobNum}</td>
                                <td width="14%">${e.FMobile}</td>
                                <td width="11%">${e.FHiLevel.FName}</td>
                                <td width="11%">${e.dept.FName}</td>
                                <td width="17%">${e.FEmail}</td>
                                <c:if test="${e.FState==0}">
                                    <td width="18%"align="left"><em class="b2"></em></td>
                                </c:if>
                                <c:if test="${e.FState==1}">
                                    <td width="18%"align="left"><em class="b1"></em></td>
                                </c:if>

                            </tr>
                            </c:forEach>
                        </table>




                    </div>
                    <!--nie-->
                    <div class="fenye bgf">
                        <p> <span><em class="b1"></em> 正常</span> <span><em class="b2"></em> 禁止登录</span> </p>
                        <div>共132项，共11页 <a href="#">&lt;</a><input type="text" value="2"><a href="#">&gt;</a></div></div>

                </div>
                <!--bge-->

            </div>
            <!--manage_right-->
        </div>
        <!--con-->
    </div>
    <!--manage-->

</div>
<!--main-->
<script  type="text/javascript">
    $(".navbg1").capacityFixed1();
</script>


<div class="elt">
    <div class="theme-mask"></div>
    <div class="stopbmbox">

        <div class="tc stopdes">确认停用该部门</div>
        <div class="stopsubmit tc"><a class="stopturesubmit" href="#">确认停用</a> <a href="#" class="close">取消</a></div>
    </div>
    <!--stopbmbox-->
    <div class="addbmbox controllbox">
        <div class="top_cor or">
            <h1>添加部门</h1>
            <a class="close gb" href="#"> ╳</a>
        </div>
        <!--top_cor-->

        <div class="con_cor">
            <table width="100%" border="0">
                <tr>
                    <td width="100" height="54" align="right"><label>上级部门</label></td>
                    <td align="left">
                        <div class="bmselectbox">
                            <select id="dj1" style="display: none">
                                <option>请选择</option>
                                <option>请选择项目类别1</option>
                                <option>请选择项目类别2</option>
                                <option>请选择项目类别3</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="54" align="right"><label>部门名称</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="请输入"></td>
                </tr>
                <tr>
                    <td  height="54" align="right"><label>部门观察者</label></td>
                    <td align="left" style="position:relative;">

                        <div id="addcybox3" class="txt w1"><b class="fwb"></b><span class="addcyspan2">点击选择</span></div>
                        <!--添加参与者 开始-->
                        <div class="ladaybox zjcybox radiobox" style="top:50px; width:378px;">
                            <div class="ladayboxtop">
                                <div class="ladayboxleft">
                                    <ul>
                                        <li><a href="#" class="curent">近期常用</a></li>
                                        <li><a href="#">同事</a></li>
                                        <li><a href="#">部门</a></li>
                                    </ul>
                                </div>
                                <div class="ladayboxtopsearch">
                                    <input type="text" placeholder="搜索" class="search-text"><input type="submit" value="" class="searchbnt">
                                </div>
                                <div class="closelady">
                                    <a href="#" title="关闭"></a>
                                </div>
                            </div>

                            <div class="ladaycont" style="width:368px;">
                                <div class="uploadbox">

                                    <dl>
                                        <dt>C</dt>
                                        <dd><a href="#"><label><input value="陈郑" type="checkbox"><span></span><i>陈郑</i></label></a></dd>
                                        <dd><a href="#"><label><input value="程咬金" type="checkbox"><span></span><i>程咬金</i></label></a></dd>
                                        <dd><a href="#"><label><input value="曹阿满" type="checkbox"><span></span><i>曹阿满</i></label></a></dd>
                                    </dl>
                                    <dl>
                                        <dt>M</dt>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>麦基</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>马苏梅</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>马艳丽</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>麦基</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>毛杰</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>马艳丽</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>麦基</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>马苏梅</i></label></a></dd>
                                        <dd><a href="#"><label><input type="checkbox"><span></span><i>马艳丽</i></label></a></dd>
                                    </dl>

                                </div>
                            </div>
                        </div>
                        <!--添加参与者 结束-->

                    </td>
                </tr>
                <tr>
                    <td  height="54" align="right"><label>部门编码</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="请输入"></td>
                </tr>

            </table>
            <div class="stopsubmit">
                <input type="submit" class="submint" value="完成"> <a href="#" class="close">取消</a>
            </div>
        </div>
        <!--con_cor-->
    </div>
    <!--添加部门-->


    <div class="editbmbox controllbox">
        <!--con_cor-->
    </div>
    <!--编辑部门-->

    <div class="addpjbmbox controllbox">
        <div class="top_cor or">
            <h1>添加平级部门</h1>
            <a class="close gb" href="#"> ╳</a>
        </div>
        <!--top_cor-->

        <div class="con_cor">
            <table width="100%" border="0">
                <tr>
                    <td width="100" height="54" align="right"><label>上级部门</label></td>
                    <td align="left">
                        <div class="bmselectbox">
                            <select id="dj3" style="display: none">
                                <option>请选择</option>
                                <option>请选择项目类别1</option>
                                <option>请选择项目类别2</option>
                                <option>请选择项目类别3</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="54" align="right"><label>部门名称</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="请输入"></td>
                </tr>
                <tr>
                    <td  height="54" align="right"><label>部门观察者</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="点击选择"></td>
                </tr>
                <tr>
                    <td  height="54" align="right"><label>部门编码</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="请输入"></td>
                </tr>

            </table>
            <div class="stopsubmit">
                <input type="submit" class="submint" value="完成"> <a href="#" class="close">取消</a>
            </div>
        </div>
        <!--con_cor-->
    </div>
    <!--添加平级部门-->

    <div class="addxjbmbox controllbox">
        <div class="top_cor or">
            <h1>添加下级部门</h1>
            <a class="close gb" href="#"> ╳</a>
        </div>
        <!--top_cor-->

        <div class="con_cor">
            <table width="100%" border="0">
                <tr>
                    <td width="100" height="54" align="right"><label>上级部门</label></td>
                    <td align="left">
                        <div class="bmselectbox">
                            <select id="dj4" style="display: none">
                                <option>请选择</option>
                                <option>请选择项目类别1</option>
                                <option>请选择项目类别2</option>
                                <option>请选择项目类别3</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="54" align="right"><label>部门名称</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="请输入"></td>
                </tr>
                <tr>
                    <td  height="54" align="right"><label>部门观察者</label></td>
                    <td align="left">

                    </td>
                </tr>
                <tr>
                    <td  height="54" align="right"><label>部门编码</label></td>
                    <td align="left"><input type="text" class="txt w1" placeholder="请输入"></td>
                </tr>

            </table>
            <div class="stopsubmit">
                <input type="submit" class="submint" value="完成"> <a href="#" class="close">取消</a>
            </div>
        </div>
        <!--con_cor-->
    </div>
    <!--添加下级部门-->

    <div id="addyg" class="controllbox">
        <div class="top_cor or">
            <h1>添加员工</h1>
            <a class="close gb" href="#"> ╳</a>
        </div>
        <!--top_cor-->
        <form action="add" id="sub">
        <table class="mytablebox" width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <input type="hidden" name="Fid" value="value">
                <td width="15%" align="right"><span>*</span>姓名</td>
                <td width="35%" align="left"><input type="text" class="txinput" name="FName"></td>
                <td width="8%" align="right"><span>*</span>性别</td>
                <td width="35%" align="left"><input type="radio" name="FSex" value="n"><label>男</label><input type="radio" name="FSex" value="v"><label>女</label></td>

            </tr>
            <tr>
                <td align="right" >员工编号</td>
                <td align="left"><input type="text" class="txinput" name="FJobNum"></td>
                <td align="right"><span>*</span>手机号</td>
                <td align="left"><input type="text" class="txinput" name="FMobile"></td>
            </tr>
            <tr>
                <td align="right"><span>*</span>所属部门</td>
                <td align="left">
                    <select name="dept.FDeptID">
                        <option>-无-</option>
                        <c:forEach items="${deptList}" var="d">
                            <option value ="${d.FID}">${d.FName}</option>
                        </c:forEach>
                </select>
                </td>
                <td align="right">所属上级</td>
                <td align="left">
                    <select name="FHiLevel">
                        <option>-无-</option>
                    <c:forEach items="${empList}" var="e">
                        <option value ="${e.FUserID}">${e.FName}</option>
                    </c:forEach>
                </select>
                </td>
            </tr>
            <tr>
                <td align="right">邮箱</td>
                <td align="left"><input type="text" class="txinput" name="FEmail"></td>
                <td align="right">状态</td>

                <td width="15%" align="left">
                    <input type="radio" name="FState" value="1" />启用
                    <input type="radio" name="FState"  value="0" />关闭
            </td>
            </tr>

        </table>
            <div class="stopsubmit">
                <a class="submint" onclick="document.getElementById('sub').submit();return false">保存</a>
                <a href="#" class="close">取消</a>
            </div>
        </form>


        <!--con_cor-->
    </div>
    <!--添加员工-->



</div>
<!--elt-->



<!--查看员工-->
<div id="seeyg" class="controllbox">
    <div class="top_cor or">
        <h1>查看员工</h1>
        <h1 class="update">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改</h1>
        <a class="close gb" href="#"> ╳</a>
    </div>
    <!--top_cor-->
    <table class="mytablebox" width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="15%" align="right"><span>*</span>姓名：</td>
            <td width="35%" align="left"><input type="text" class="abc" value="000" readonly="true" /></td>
        </tr>
        <tr>
            <td width="15%" align="right"><span>*</span>性别：</td>
            <td width="35%" align="left"><input type="text" value="000" /></td>
        </tr>
        <tr>
            <td width="15%" align="right"><span>*</span>工号：</td>
            <td width="35%" align="left"><input type="text" value="000" /></td>
        </tr>
        <tr>
            <td width="15%" align="right"><span>*</span>手机号：</td>
            <td width="35%" align="left"><input type="text" value="000" /></td>
        </tr>
        <tr>
            <td width="15%" align="right"><span>*</span>职务：</td>
            <td width="35%" align="left"><input type="text" value="000" /></td>
        </tr>
        <tr>
            <td width="15%" align="right"><span>*</span>手机：</td>
            <td width="35%" align="left"><input type="text" value="000" /></td>
        </tr>
        <tr>
            <td width="15%" align="right"><span>*</span>微信号：</td>
            <td width="35%" align="left"><input type="text" value="000" /></td>
        </tr>

    </table>
    <div class="stopsubmit">
        <a href="javascript:formSubmit('save','_self')" onclick="save()">完成</a>
        <a class="submint" onsubmit="">完成</a> <a href="#" class="close">取消</a>
    </div>

    <!--con_cor-->
</div>
<!--添加员工-->



</div>
</body>


</html>