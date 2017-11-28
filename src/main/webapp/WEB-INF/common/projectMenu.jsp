<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common.jsp"%>
<div class="left_box navbg1">

    <div class="blue_bg "></div>

    <div class="left_box_con or">
        <div class="top or wu">
            <dl>
                <dd>
                    <img src="../../staticfile/images/ren.jpg" width="80">
                </dd>
                <dt>陈政</dt>
            </dl>

        </div>
        <!--top-->
        <div class="bottom">
            <ul>
                <li class='<c:if test="${type == 1}">on</c:if>'><a href="#"><i class="d1"></i>我的项目</a> </li>
                <li class="<c:if test="${type == 2}">on</c:if>"><a href="#"><i class="d2"></i>关注项目</a></li>
                <li class="<c:if test="${type == 3}">on</c:if>"><a href="#"><i class="d3"></i>参与项目</a></li>
                <li class="<c:if test="${type == 4}">on</c:if>"><a href="#"><i class="d4"></i>下属项目</a></li>
                <li class="<c:if test="${type == 5}">on</c:if>"><a href="#"><i class="d5"></i>全部项目</a></li>
            </ul>
        </div>
        <!--bottom-->
    </div>
</div>