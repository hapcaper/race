<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>中原工学院创业中心管理系统</title>

<!-- start: META -->
		<meta charset="utf-8" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/fonts/style.css">
		<link rel="stylesheet" href="assets/css/main.css">
		<link rel="stylesheet" href="assets/css/main-responsive.css">
		<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
		<link rel="stylesheet" href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
		<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css" id="skin_color">
		<link rel="stylesheet" href="assets/css/print.css" type="text/css" media="print"/>
		<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="stylesheet" href="assets/plugins/colorbox/example2/colorbox.css">
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="shortcut icon" href="favicon.ico" />
		
</head>

</head>

<body>
	<div class="main-container">
		<%@ include file="top.jspf"%>
		<%@ include file="left.jspf"%>
		<!-- start: PAGE -->
		<div class="main-content">
			<div class="container">
				<!-- start: PAGE HEADER -->
				<div class="row">
					<div class="col-sm-12">
						<!-- start: PAGE TITLE & BREADCRUMB -->
						<ol class="breadcrumb">
							<li><i class="clip-home-3"></i> <a href="manage/depanmentIndex.do"> 首页 </a></li>
							
						</ol>
						<div class="page-header">
							<h3>
								创业中心部门
							</h3>
						
						</div>
						
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<c:choose>
					<c:when test="${empty deviceMap }">
					 没有任何的部门，请先<a href="manage/toAddDevice.do">添加数据</a>
					</c:when>
					<c:otherwise>
					<!-- 按钮方式显示 -->
										<%--<c:forEach items="${deviceList }" var="depart">
											<div class="col-sm-4">
												<button class="btn btn-icon btn-block" onclick="location.href='manage/queryDeviceByDepartId.do?departId=${depart.departId}'">
													
													${depart.departName } <span class="badge badge-danger"> ${depart.count } </span>
												</button>
												</div>
										</c:forEach>
					--%>
					<!-- table表格显示方案 -->
					<%--<table class="table table-striped table-bordered table-hover table-full-width">
								
									<c:forEach items="${deviceMap }" var="keyValue">
									<tr><td width="10%">
											${keyValue.key }
											</td>
											<td>
											<c:forEach items="${keyValue.value }" var="depart">
												<div class="col-sm-4">
														<a href="manage/queryDeviceByDepartId.do?departId=${depart.depart.id}">${depart.depart.name}(${depart.count })</a>
												</div>
											
											</c:forEach>
											
											
											</td>
											</tr>
									</c:forEach>
								
						</table>
					--%>
					
					<c:forEach items="${deviceMap }" var="depanment">
									
											
												<div class="col-sm-3" style="height:30px">
														<a href="manage/queryDeviceByDepanmentId.do?depanmentID=${depanment.depanment.depanmentID}">${depanment.depanment.depanmentName}(${depanment.count })</a>
												</div>
											
											
											
											
											
									</c:forEach>
					</c:otherwise>
				</c:choose>
				
				<!-- end: PAGE CONTENT-->
			</div>

			<%@ include file="footer.jspf"%>
		</div>
	</div>
	<!-- end: PAGE -->
	<!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		
		<script src="assets/plugins/jquery/jquery.min.js"></script>
		
		<!--<![endif]-->
		<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>-->
		<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
		<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
		<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
		<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
		<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
		<script src="assets/plugins/less/less-1.5.0.min.js"></script>
		<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
		<script src="assets/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="assets/plugins/flot/jquery.flot.js"></script>
		<script src="assets/plugins/flot/jquery.flot.pie.js"></script>
		<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>
		<script src="assets/plugins/jquery.sparkline/jquery.sparkline.js"></script>
		<script src="assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
		<script src="assets/plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="assets/js/index.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
				
			});
	


</script>

</body>
</html>
