%--
  Created by IntelliJ IDEA.
  User: CGB 1L
  Date: 2017/11/26
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<html lang="zh-CN">
<head>
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no,minimal-ui"  />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta name="format-detection" content="telephone=no">
    <meta content="email=no" name="format-detection" />
    <title>嘀嗒</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/common.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/css/top.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/css/index.css">
    <script type="text/javascript" src="${ctx}/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/common.js"></script>
    <script type="text/javascript" src="${ctx}/js/jQselect.js"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
    <script>

        $(function(){
            $('.part').find('a').click(function(){

                $('.part').find('a').attr('class','');
                $('.project').find('.boxgbig').css('display','none');
                $(this).attr('class','active');
                $('.project').find('.boxgbig').eq( $(this).index() ).css('display','block');

            });

        });
    </script>



</head>

<body>

<div class="header">

    <p class="first"><a href="#">奈思科技<i></i></a></p>

    <div class="menu">
        <ul>
            <li><a href="#"><i class="b1"></i>首页</a></li>
            <li class="on"><a href="#"><i class="b2"></i>项目</a></li>
            <li><a href="#"><i class="b3"></i>客户</a></li>
            <li><a href="#"><i class="b4"></i>工作圈</a></li>
            <li><a href="#"><i class="b5"></i>管理</a></li>
        </ul>
    </div>
    <!--menu-->

    <div class="right_cor fr">
        <div class="row"><input type="text" placeholder="搜索工作、同事、附件"><i></i></div>
        <div class="news_b"><i></i><a href="#">消息</a><em>5</em></div>
        <div class="man"><a href="#">陈政<i></i></a></div>
    </div>
    <!--right_cor-->
</div>
<!--header-->

<div class="main">

    <div class="left_box navbg1">


        <div class="blue_bg "></div>

        <div class="left_box_con or">
            <div class="top or wu">
                <dl>
                    <dd><img src="images/ren.jpg" width="80"></dd>
                    <dt>陈政</dt>
                </dl>

            </div>
            <!--top-->

            <div class="bottom">
                <ul>
                    <li><a href="#"><i class="d1"></i>我的项目</a> <span>28</span></li>
                    <li class="on"><a href="#"><i class="d2"></i>关注项目</a><span>15</span></li>
                    <li><a href="#"><i class="d3"></i>参与项目</a><span>36</span></li>
                    <li><a href="#"><i class="d4"></i>下属项目</a><span>152</span></li>
                    <li><a href="#"><i class="d5"></i>全部项目</a><span>268</span></li>
                    <li><a href="#"><i class="d6"></i>嘀嗒数据</a></li>
                    <li class="last">
                        <ul>
                            <li><a href="#"><i class="d7"></i>项目类别</a></li>
                            <li><a href="#"><i class="d8"></i>产品类别</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--bottom-->

        </div>
        <!--left_box_con-->

    </div>
    <!--left_box-->

    <div class="project_right">

        <div class="condition bgf navbg1">
            <div class="top">

                <h1>关注项目</h1>
                <div class="serch">
                    <input type="text" class="text" placeholder="请输入项目名称">
                    <input type="submit" value="" class="submit">
                </div>
                <!--serch-->
                <a href="javascript:;" class="senior">高级搜索</a>

                <div class="right_bt">
                    <a href="javascript:;" class="jian">新建项目</a>
                    <a href="#">导出项目</a>
                </div>
                <!--right_bt-->
            </div>
            <!--top-->

            <div class="bottom or">
                <ul>
                    <li class="on"><a href="#">执行中<span>5</span></a></li>
                    <li><a href="#">未启动<span>7</span></a></li>
                    <li><a href="#">暂停中<span>3</span></a></li>
                    <li><a href="#">终止<span>2</span></a></li>
                    <li><a href="#">完成<span>5</span></a></li>
                    <li><a href="#">归档<span>7</span></a></li>
                    <li><a href="#">全部<span>82</span></a></li>
                </ul>

                <div class="part">
                    <a class="" href="JavaScript:;"></a>
                    <a class="active" href="JavaScript:;"></a>
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
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="54" width="8%"><strong>项目名称</strong></td>
                            <td width="45%" align="left"><input type="text" class="txt w1" placeholder="请输入项目名称"></td>
                            <td width="10%"><strong>项目简称</strong></td>
                            <td width="37%"><input type="text" class="txt w1" placeholder="请输入项目简称"></td>
                        </tr>
                        <tr>
                            <td height="54"><strong>项目类别</strong></td>
                            <td align="left">

                                <select id="dj1" style="display: none">
                                    <option>请选择项目类别</option>
                                    <option>请选择项目类别1</option>
                                    <option>请选择项目类别2</option>
                                    <option>请选择项目类别3</option>
                                </select>


                            </td>
                            <td><strong>项目经理</strong></td>
                            <td>
                                <select id="dj2" style="display: none">
                                    <option>请选择项目经理</option>
                                    <option>请选择项目类别1</option>
                                    <option>请选择项目类别2</option>
                                    <option>请选择项目类别3</option>
                                </select>
                            </td>
                        </tr>
                        <tr height="54">
                            <td><strong>开始日期</strong></td>
                            <td align="left">
                                <input type="text" class="Wdate txt w1" id="d4331" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4332\',{M:-3,d:-2})||$dp.$DV(\'2020-4-3\',{M:-3,d:-2})}'})"/>
                            </td>
                            <td><strong>截止日期</strong></td>
                            <td><input type="text" class="Wdate txt w1" id="d4332" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4331\',{M:3,d:2});}',maxDate:'2020-4-3'})"/></td>
                        </tr>
                        <tr height="54">
                            <td><strong>项目客户</strong></td>
                            <td colspan="3" align="left">

                                <select id="dj3" style="display: none">
                                    <option>请选择关联客户</option>
                                    <option>请选择关联客户1</option>
                                    <option>请选择关联客户2</option>
                                    <option>请选择关联客户3</option>
                                </select>

                            </td>
                        </tr>
                        <tr height="54">
                            <td><strong>项目成员</strong></td>
                            <td colspan="3" align="left"><input type="text" class="txt w2" placeholder="请输入项目简称"></td>
                        </tr>
                        <tr>
                            <td height="50">&nbsp;</td>
                            <td colspan="3"><input type="submit" value="搜 索" class="btn1"> <input type="button" value="取 消" class="btn2 close"></td>
                        </tr>

                    </table>
                    <script type=text/javascript>
                        $(document).ready(function() {
                            $("#dj1").selectbox();
                            $("#dj2").selectbox();
                            $("#dj3").selectbox();
                        });
                    </script>
                </div>
                <!--con_cor-->

            </div>
            <!--popover-->


        </div>
        <!--condition-->

        <div class="project">



            <div class="boxgbig or">

                <div class="bge">

                    <div  class="theadd">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="18%">项目名称</td>
                                <td width="10%">编码</td>
                                <td width="16%">客户名称</td>
                                <td width="11%">项目类别</td>
                                <td width="9%">部门</td>
                                <td width="11%">项目经理</td>
                                <td width="10%">开始日期</td>
                                <td width="12%">计划/实际人天</td>
                                <td width="3%">&nbsp;</td>
                            </tr>
                        </table>
                    </div>

                    <div class="nie">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a1"></a></td>
                            </tr>
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>
                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>

                            <tr>
                                <td width="18%">金蝶云创设计项目</td>
                                <td width="10%">KB001</td>
                                <td width="16%">金蝶云创</td>
                                <td width="11%">执行中</td>
                                <td width="9%">设计部</td>
                                <td width="11%">张大利</td>
                                <td width="10%">2016-10-20</td>
                                <td width="12%">30/22</td>
                                <td width="3%"><a href="#" class="zan a2"></a></td>
                            </tr>


                        </table>

                    </div>
                    <!--nie-->


                </div>
                <!--bge-->
            </div>
            <!--boxgbig-->

            <div class="boxgbig"  style="display:block;">

                <div class="list">
                    <div class="pic"><img src="images/ka_03.jpg"></div>
                    <div class="titie">
                        <h1>金蝶云创设计项目</h1>
                        <a href="#" class="zan z1"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress">
                            <p style="width:60%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list">
                    <div class="pic"><img src="images/ka_05.jpg"></div>
                    <div class="titie">
                        <h1>云创科研</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress red">
                            <p style="width:80%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list last">
                    <div class="pic"><img src="images/ka_07.jpg"></div>
                    <div class="titie">
                        <h1>金蝶孵化器</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress ye">
                            <p style="width:90%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->


                <div class="list">
                    <div class="pic"><img src="images/ka_03.jpg"></div>
                    <div class="titie">
                        <h1>金蝶云创设计项目</h1>
                        <a href="#" class="zan z1"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress">
                            <p style="width:60%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list">
                    <div class="pic"><img src="images/ka_05.jpg"></div>
                    <div class="titie">
                        <h1>云创科研</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress red">
                            <p style="width:80%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list last">
                    <div class="pic"><img src="images/ka_07.jpg"></div>
                    <div class="titie">
                        <h1>金蝶孵化器</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress ye">
                            <p style="width:90%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->


                <div class="list">
                    <div class="pic"><img src="images/ka_03.jpg"></div>
                    <div class="titie">
                        <h1>金蝶云创设计项目</h1>
                        <a href="#" class="zan z1"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress">
                            <p style="width:60%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list">
                    <div class="pic"><img src="images/ka_05.jpg"></div>
                    <div class="titie">
                        <h1>云创科研</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress red">
                            <p style="width:80%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list last">
                    <div class="pic"><img src="images/ka_07.jpg"></div>
                    <div class="titie">
                        <h1>金蝶孵化器</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress ye">
                            <p style="width:90%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->


                <div class="list">
                    <div class="pic"><img src="images/ka_03.jpg"></div>
                    <div class="titie">
                        <h1>金蝶云创设计项目</h1>
                        <a href="#" class="zan z1"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress">
                            <p style="width:60%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list">
                    <div class="pic"><img src="images/ka_05.jpg"></div>
                    <div class="titie">
                        <h1>云创科研</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress red">
                            <p style="width:80%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

                <div class="list last">
                    <div class="pic"><img src="images/ka_07.jpg"></div>
                    <div class="titie">
                        <h1>金蝶孵化器</h1>
                        <a href="#" class="zan z2"></a>
                    </div>

                    <div class="con or">
                        <h2>金蝶云创  <span>●</span>  执行中</h2>

                        <div class="progress ye">
                            <p style="width:90%;"></p>
                        </div>
                        <!--progress-->

                        <ul>
                            <li><a href="#"><i></i>张大利</a></li>
                            <li class="r">实际/计划 <span>15/30</span></li>
                        </ul>

                    </div>
                </div>
                <!--list-->

            </div>

            <!--boxgbig-->

            <div class="more"><a href="#">加载更多…</a></div>

        </div>
        <!--project-->
    </div>
    <!--project_right-->


</div>
<!--main-->
<script  type="text/javascript">
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
            <form id="save" action="tosave">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">

                <tr>
                    <td height="54"><strong><em>*</em>项目编码</strong></td>
                    <td width="45%"><input type="text" class="txt w1" placeholder="请输入编码" name="Fnumber"></td>
                    <td height="54" ><strong><em>*</em>项目名称</strong></td>
                    <td width="45%"><input type="text" class="txt w1" placeholder="请输入项目名称"name="Fname"></td>
                </tr>
                <tr>
                    <td height="54"><strong><em>*</em>项目经理</strong></td>
                    <td align="left">
                        <select name="parentUserId.FUserId">
                            <option>请选择负责经理</option>
                           <c:forEach items="${list}" var="d">
                               <option value="${FUserId}">${d.FName}</option>
                           </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
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
                </tr>
                <tr height="54">
                    <td><strong><em>*</em>创建日期</strong></td>
                <td><input type="date" name="FcreateTime" /></td>
                    </td>
                </tr>
                <tr height="54">
                    <td><strong><em>*</em>项目状态</strong></td>
                    <td>
                        <input type="radio" name="Fstatus" value="0"/>未执行
                        <input type="radio" name="Fstatus" value="1"/>完成
                        <input type="radio" name="Fstatus" value="2"/>执行中
                    </td>
                </tr>
                <tr height="100">
                    <td valign="top"><strong style="margin-top:5px; display:block;">项目说明</strong></td>
                    <td colspan="3" align="left">
     <textarea placeholder="请输入项目说明……" class="txt w3" name="Fdescribe">
     </textarea>
                    </td>
                </tr>
            </table>
            </form>
            <ul>
                <td height="50">&nbsp;</td>
                <a class="submint" onclick="document.getElementById('save').submit();return false">
                    <td colspan="3"><input type="submit" value="发 布" class="btn1"></a>

                <input type="button" value="取 消" class="btn2 close1"></td>
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
        </div>
        <!--con_cor-->
    </div>

</div>
<!--elt-->
</body>

</html>