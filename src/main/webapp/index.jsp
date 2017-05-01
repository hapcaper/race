<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.3 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->
	<!-- start: HEAD -->
	<head>
	<base href="<%=basePath%>">
		<title>中原工学院创业中心管理平台</title>
		<!-- start: META -->
		<meta charset="utf-8" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/util.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/default/easyui.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/color.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/icon.css"
	type="text/css"></link>
		<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/jslib/cloud.js"></script>
	<script language="javascript">
			$(function(){
			    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
				$(window).resize(function(){  
			    	$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
			    	
			    })  
			}); 
			
		</script>
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body
	style="background-color:#1c77ac; background-image:url(img/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>
	<div class="logintop">
		<span>欢迎登录中原工学院创业中心管理平台</span>
		<ul>
			<li><a>帮助</a>
			</li>
			<li><a>关于</a>
			</li>
		</ul>
	</div>
	
	<div class="loginbody">
	<br>
	<br>
	<br><br>
	<br>
	<br>
	<br><br>
		<span class="systemlogo"></span>
		<div align="center">
		<br>
	<br>
	<br><br>
		<a href="${pageContext.request.contextPath}/manage/depanmentIndex.do"><input type="button"  value="进入系统" style="width:128px;height:32px;background:url(images/btnbg.png);color:#FFFFFF"/></a></div>
	</div>
	
	</div>

	<div class="loginbm">
		版权所有 ©
		<script language="javascript">
				document.write((new Date()).getFullYear());
			</script>
	</div>
		

<%--<c:redirect url="/manage/depanmentIndex.do"/>
--%>

</body>

	<!-- end: BODY -->
</html>
