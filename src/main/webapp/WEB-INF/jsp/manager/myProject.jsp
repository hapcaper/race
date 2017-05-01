<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>当前项目</title>
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
<link rel="stylesheet" href="assets/plugins/select2/select2.css">
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

<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="favicon.ico" />
<!-- 
<script type="text/javascript">
	function getEmployeeByDepart(var did){
		//获得name为DeviceName的部门下的所有的员工列表
		 $.post("manage/getEmployeeByDepartId.do",{"departId":did},  
                 function(data){
			 		var i=0;
                    for(i=0;i<data.size();i++){
                    	
                    } 
                 }); 
	}
</script>
 -->
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
								href="manage/depanmentIndex.do"> 首页 </a></li>
							<li>项目管理</li>
							<li class="active">当前项目</li>

						</ol>
						<div class="page-header">
							<h3 class="center">
								${myProject.proname }<small>${myProject.description }</small>

							</h3>
							<div class="center">
								<small> ---------------------- <c:forEach items="${projectTeamerList }" var="t">${t.membername} &nbsp &nbsp &nbsp</c:forEach></small>
							</div>

						</div>

						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT enctype="multipart/form-data"-->

				<div class="form-group">
					<div>
						我的进度：
						<div class="progress progress-striped active progress-sm content">
							<div style="width: ${myCompleteTask/allMyTask*100}%;" aria-valuemax="100" aria-valuemin="0"
								role="progressbar"
								class="progress-bar progress-bar-success step-bar">
								<span class="sr-only"> 0% Complete (success)</span>
							</div>
						</div>
					</div>
					<div>
						总进度：
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="${allCompleteTask }" aria-valuemin="0"
								aria-valuemax="${allTaskCount }" style="width: ${allCompleteTask/allTaskCount*100}%">
								<span class="sr-only"></span>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="tabbable">
							<ul id="myTab4"
								class="nav nav-tabs tab-padding tab-space-3 tab-blue">
								<li class="active"><a href="#panel_tab3_example1"
									data-toggle="tab"> 我的任务 </a></li>
								<li><a href="#panel_tab3_example2" data-toggle="tab">
										所有任务 </a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane in active" id="panel_tab3_example1">
									<form action="manage/completeTask.do" method="post"
										class="form-horizontal" enctype="multipart/form-data">
										<div class="panel panel-default">
											<div class="panel-body">
												<table class="table table-condensed table-hover"
													id="sample-table-3">
													<thead>
														<tr>
															<th class="center hidden-xs" width="10%"></th>
															<th class="hidden-xs">任务名称</th>
															<th class="hidden-xs">完成情况</th	>
															<th class="hidden-xs"></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${myTaskList }" var="task">
															<tr>
																<td class="hidden-xs" width="10%"><c:if
																		test="${task.status eq 0}">
																		<input type="checkbox" name="a[]" class="flat-grey"
																			value="${task.id }">
																	</c:if></td>
																<td class="hidden-xs">${task.name }</td>
																<td class="hidden-xs"><c:choose>
																		<c:when test="${task.status eq 1}">
																			<span class="label label-sm label-success">任务完成</span>
																		</c:when>
																		<c:when test="${task.status eq 0}">
																			<span class="label label-sm label-danger">未完成</span>
																		</c:when>
																	</c:choose></td>
																<td class="hidden-xs"><c:if
																		test="${task.status eq 0}">
																		<a href="manage/completeOneTask.do?taskid=${task.id }">完成任务</a>
																	</c:if></td>
															</tr>
														</c:forEach>

													</tbody>
												</table>
												<div class="form-group">
													<label class="col-sm-2 control-label" for="form-field-1">
													</label>
													<div class="col-sm-3 col-sm-offset-7">
														<div class="col-sm-8">
															<input type="submit" value="更新进度"
																class="btn btn-blue btn-block"><br>
														</div>
														<div class="col-sm-8">
															<input type="button" value="返回"
																class="btn btn-blue btn-block"
																onclick="javascript:history.go(-1);">
														</div>
													</div>
												</div>
											</div>

										</div>

									</form>
								</div>
								<div class="tab-pane" id="panel_tab3_example2">
									<div class="panel panel-default">
										<div class="panel-body">
											<table class="table table-condensed table-hover"
												id="sample-table-3">
												<thead>
													<tr>

														<th>任务名称</th>
														<th><i class="fa fa-time"></i> 所属人员</th>
														<th class="hidden-xs">完成状况</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${allTaskList }" var="task">
														<tr>

															<td>${task.name }</td>
															<td class="hidden-xs">${task.membername }</td>
															<td class="hidden-xs"><c:choose>
																	<c:when test="${task.status eq 1}">
																		<span class="label label-sm label-success">任务完成</span>
																	</c:when>
																	<c:when test="${task.status eq 0}">
																		<span class="label label-sm label-danger">未完成</span>
																	</c:when>
																</c:choose></td>
														</tr>
													</c:forEach>

												</tbody>
											</table>
										</div>
									</div>
								</div>




							</div>
						</div>
					</div>
				</div>


				<br>
				<table>


				</table>


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
	<!-- end: MAIN JAVASCRIPTS -->

	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
	<script src="assets/plugins/select2/select2.min.js"></script>
	<script
		src="assets/plugins/jquery.maskedinput/src/jquery.maskedinput.js"></script>
	<script src="assets/plugins/jquery-maskmoney/jquery.maskMoney.js"></script>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
	<script
		src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script src="assets/plugins/bootstrap-colorpicker/js/commits.js"></script>
	<script src="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js"></script>
	<script
		src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>

	<script src="assets/plugins/summernote/build/summernote.min.js"></script>
	<script src="assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
	<script src="assets/js/form-elements.js"></script>

	<script src="assets/plugins/ladda-bootstrap/dist/spin.min.js"></script>
	<script src="assets/plugins/ladda-bootstrap/dist/ladda.min.js"></script>
	<script
		src="assets/plugins/bootstrap-switch/static/js/bootstrap-switch.min.js"></script>
	<script src="assets/js/ui-buttons.js"></script>

	<script
		src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/js/form-validation.js"></script>

	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->

	<script>
		jQuery(document).ready(function() {
			Main.init();
			//Index.init();
			FormElements.init();
			UIButtons.init();
			FormValidator.init();
		});
	</script>
</body>
</html>
