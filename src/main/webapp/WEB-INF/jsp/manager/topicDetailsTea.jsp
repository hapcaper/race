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

<title>项目详情</title>

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
						<h3>项目详情</h3>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="panel-body">
								<div class="form-group">
									<table class="table">
										<tbody>
											<tr>
												<td width="10%"><small>项目标题:</small>
												</td>
												<td><small>创业中心管理系统</small>
												</td>
											</tr>
											<tr>
												<td><small>课题来源:</small>
												</td>
												<td>
													<%--在这里进行判断项目的类型 --%> <small>社会服务</small></td>
											</tr>
											<tr>
												<%--在这里进行判断技术领域--%>
												<td><small>技术领域:</small>
												</td>
												<td>javaweb</td>
											</tr>
											<tr>
												<td><small>指导教师:</small>
												</td>
												<td>郭丽</td>
											</tr>
											<tr>
												<td><small>项目描述:</small>
												</td>
												<td><small> <pre>这个是关于创新创业中的系统，用于项目的完善********************</pre>
												</small>
												</td>
											</tr>
											<tr>
												<td><small>附件下载</small>
												</td>
												<td><small>附件名称<a href="">下载</a> </small>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<%-- 遍历任务列表 --%>
								<%-- <c:if test="${SGTLink != null && SGTLink.size() > 0}">
									<c:forEach items="${SGTLink}" var="li">--%>
								<div>
									<h3>任务详情</h3>
								</div>
								<table width="100%" class="table   table-hover">
									<thead>
										
										<tr>
											<th><small>任务编号</small>
											</th>
											<th><small>任务描述</small>
											</th>
											<th><small>任务责任人</small>
											</th>
											<th ><small>完成状态</small>
											</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td><small>1</small></td>
											<td><small>设计任务说明：按照软件工程规范描述项目及任务管理模块需求，细化用例规约，合理设计数据库，实现项目及任务管理模块</small></td>
											<td><small>胡波</small></td>
											<td><small>已完成</small></td>
										</tr>
									</tbody>
								</table>
								<div class="form-group">
									<label class="col-sm-3 control-label"></label>
									<div class="col-sm-2" style="float: right;">
										<button type="button" class="btn btn-blue btn-block">
											返回</button>
									</div>
									<label class="col-sm-3 control-label"></label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
