<!--<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";%>

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

<title>项目详情</title>

<!-- start: META -->
<meta charset="utf-8" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<!-- start: MAIN CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/fonts/style.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/main-responsive.css">
<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
<link rel="stylesheet"
	href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css"
	id="skin_color">
<link rel="stylesheet" href="assets/css/print.css" type="text/css"
	media="print" />
<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-social-buttons/social-buttons-3.css">
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
							<li><i class="clip-home-3"></i> <a
								href="manage/depanmentIndex.do"> 主页 </a></li>
							<li>工程管理</li>
							<li class="active">项目详情</li>

						</ol>
						<div class="page-header">
							<h3>项目审核</h3>
						</div>
					</div>
				</div>
				<form action="manage/updateCheckGrade.do" method="post">
					<input type="hidden"  value="${project.id}" name="id">
					<div class="row">
						<div class="col-sm-12">
							<div class="tabbable">
								<div class="row">
									<div class="col-sm-12">
										<table class="table table-condensed table-hover">
											<tbody>
												<tr>
													<td>项目名称:</td>
													<td>${project.proname }</td>

												</tr>

												<tr>
													<td>项目简介:</td>
													<td>${project.description }</td>
												</tr>

												<tr>
													<td>项目组长:</td>
													<td>${project.headman }</td>
												</tr>
												<tr>
													<td>项目文档:</td>
													<td><a target="_blank"  href="${pageContext.request.contextPath}${project.document}">打开文档</a></td>

												</tr>
												<tr>
													<td>项目人数:</td>
													<td>${teamer.size()}</td>
												</tr>
												<tr>
													<td>项目组员</td>
													<td><c:forEach items="${teamer}" var="t">
															<small>${t.membername}</small>
														</c:forEach>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<div class="col-sm-2">
											<button type="button" class="btn btn-blue btn-block" onclick="window.location='manage/updateCheckGrade.do?Status=1&id=${project.id}'">
												通过</button>
										</div>
										<div class="col-sm-2">
											<button type="button" class="btn btn-blue btn-block" onclick="window.location='manage/updateCheckGrade.do?Status=0&id=${project.id}'">
												退回编辑</button>
										</div>
										<div class="col-sm-2">
											<button type="button" class="btn btn-blue btn-block" onclick="window.location='manage/updateCheckGrade.do?Status=-1&id=${project.id}'">
												不通过</button>
										</div>
										<div class="col-sm-2">
											<input type="button" value="返回"
												class="btn btn-blue btn-block"
												onclick="javascript:history.go(-1);">
										</div>
									</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<script src="assets/plugins/jquery/jquery.min.js"></script>


	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
	<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="assets/plugins/less/less-1.5.0.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
	<script src="assets/js/main.js"></script>

	<script
		src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script src="assets/plugins/jquery.pulsate/jquery.pulsate.min.js"></script>
	<script src="assets/js/pages-user-profile.js"></script>

	<script>
		jQuery(document).ready(function() {
			Main.init();
			PagesUserProfile.init();

		});
	</script>
</body>
</html>
