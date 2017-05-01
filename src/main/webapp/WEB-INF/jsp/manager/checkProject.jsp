<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="top.jspf"%>
<%@ include file="left.jspf"%>
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

<title>审核项目</title>

<!-- start: META -->
<meta charset="utf-8" />
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
<link rel="stylesheet" href="assets/plugins/select2/select2.css">
<script src="IAssets/js/selectCheckbox2.js"></script>
<link rel="stylesheet"
	href="assets/plugins/datepicker/css/datepicker.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css">
<link rel="stylesheet"
	href="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
<link rel="stylesheet"
	href="assets/plugins/summernote/build/summernote.css">

<link rel="stylesheet"
	href="assets/plugins/ladda-bootstrap/dist/ladda-themeless.min.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-social-buttons/social-buttons-3.css">
<link rel="shortcut icon" href="favicon.ico" />


</head>

<body>
	<div class="main-content">
		<div class="container">
			<!-- start: PAGE HEADER -->
			<div class="row">
				<div class="col-sm-12">
					<!-- start: PAGE TITLE & BREADCRUMB -->
					<ol class="breadcrumb">
						<li><i class="clip-home-3"></i> <a
							href="manage/depanmentIndex.do"> 首页 </a></li>
						<li>项目管理</li>
					</ol>
					<div>
						<h3>审核项目</h3>
					</div>
					<div class="row">
						<div class="panel-body">
							<div class="tabbable">
								<div class="tab-content">
									<div class="tab-pane active">
										<form action="./${sessionScope.pathCode}/updateCheckGrade.do"
											method="post">
											<input type="hidden" name="tgId"
												value="${sessionScope.doucking}">
											<table class="table  table-hover"
												style="TABLE-LAYOUT:fixed;WORD-BREAK:break-all">
												<thead>
													<tr>
														<th width="3%"><input type="checkbox" id="selectAll" />
														</th>
														<th width="5%"><small>编号</small></th>
														<th><small>项目id</small></th>
														<th><small>项目名称</small></th>
														<th><small>项目描述</small></th>
														<th><small>项目人数</small></th>
														<th><small>指导教师</small></th>
														<th><small>项目状态</small>
														</th>
														<th width="15%"><small>操作</small></th>
													</tr>
												</thead>

												<%--<c:forEach items="" var="t" varStatus="i" ></c:forEach>
								--%>
												<tr>
													<td><label> <input type="checkbox" name="id"
															value="" /> </label>
													</td>
													<!-- 传过去一个项目id -->
													<td><small>1</small></td>
													<!-- ${i.index + 1 } 编号递增 -->
													<td><small>1111</small></td>
													<!-- 项目id${t.id} -->
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>

											</table>
											<div class="col-sm-2" style="float: right;">
												<button type="submit" class="btn btn-blue btn-block">
													通过</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
	<!-- 3 -->
	<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
	<!-- 1 -->
	<script src="assets/plugins/select2/select2.min.js"></script>
	<!-- 2 -->
	<script src="assets/js/form-elements.js"></script>
	<!-- 4 -->
	<script src="IAssets/js/selectCheckbox2.js"></script>
	<script>
    jQuery(document).ready(function () {
        FormElements.init();
    });
</script>

</body>
</html>
