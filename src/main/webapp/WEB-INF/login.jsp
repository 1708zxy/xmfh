<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="zh-CN">
<head>
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no,minimal-ui"  />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta name="format-detection" content="telephone=no">
    <meta content="email=no" name="format-detection" />
    <title>系统管理</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/common.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/staticfile/css/login.css">
    <script type="text/javascript" src="${ctx}/staticfile/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/js/common.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/js/jquery-hcheckbox.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.establish li').hcheckbox();
        });

        function formSubmit (url,sTarget){
            document.forms[0].target = sTarget
            document.forms[0].action = url;
            document.forms[0].submit();
            return true;
        }
    </script>
    <link rel="stylesheet" href="${ctx}/staticfile/validator/jquery.validator.css">
    <script type="text/javascript" src="${ctx}/staticfile/validator/jquery.validator.js"></script>
    <script type="text/javascript" src="${ctx}/staticfile/validator/local/zh-CN.js"></script>

</head>

<body>

<div class="header bgf">

    <div class="con">
        <div class="logo"><!--<a href="#"><img src="images/logo.png"></a>--></div>
        <a href="#" class="dl" onclick="formSubmit('${ctx}/register/tocreate.action','_self');">注 册</a>
    </div>
</div>
<div class="login">
    <div class="login_con">
        <form id="demo1"  autocomplete="off" data-validator-option="{theme:'yellow_top'}" method="post">
            <div class="establish bgf">
                <div class="con">
                    <h1>登录</h1>
                    <ul>
                        <div class="msgtip" style="color: red;height: 10px;">
                            <c:if test="${!empty errorInfo}">
                                ${errorInfo}
                            </c:if>
                        </div>
                        <li>
                            <input type="text" name="FName" placeholder="请输入用户名" class="txt" data-rule="用户名: required;FName;"/>
                        </li>
                        <li><input type="password" name="FPassword" data-rule="密码: required;FPassword;" class="txt" placeholder="请输入密码" ></li>
                        <li><input type="checkbox" name="autologin" value="true"><label>两周内自动登录</label></li>
                        <li><input type="submit" class="btn" value="用户登录" onclick="formSubmit('${ctx}/loginController/login.action','_self');" /></li>
                        <li><p>还没有帐号？<a href="#"onclick="formSubmit('${ctx}/register/tocreate.action','_self');">立即注册</a></p></li>
                    </ul>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="foot">
</div>

</body>

</html>