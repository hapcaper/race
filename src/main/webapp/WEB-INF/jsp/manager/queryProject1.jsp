<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
<base href="<%=basePath%>">
<title>设备管理</title>
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
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="favicon.ico" />

</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body>
	<%--<c:if test="${ !empty errorMessage}">
		<script type="text/javascript">
			alert(${errorMessage});
		</script>
	</c:if>
	--%>
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
							<li>工程管理</li>
							<li class="active">查询项目</li>
							<!--  	<li class="active">查询预约</li>-->

						</ol>
						<!--  <div class="page-header"></div>-->
						<br>
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<form id="condition" role="form" class="form-horizontal"
					action="manage/allDeviceQueryDevice.do" method="post">
					<div class="row">

						<div class="form-group col-md-3" style="text-align:left;">
							<label class="control-label col-sm-5" for="form-field-1">
								项目名称 </label>
							<div class="input-group col-sm-7">
								<input type="text" id="form-field-1"
									placeholder="请输入设备名称" class="form-control "
									name="deviceName">
								<label for="range-1">Slider:</label>
								<input name="range-1" id="range-1"
									data-highlight="true" min="0" max="100" value="40"
									type="range" />
							</div>
						</div>

						<div class="form-group col-md-1" style="text-align:right;">
							<input type="submit" value="查询" class="btn btn-primary" />

						</div>
					</div>
				</form>
				<!-- start: PAGE CONTENT -->
				<hr>
				<div class="row">
					<div class="col-md-12">
						<!-- start: TABLE WITH IMAGES PANEL -->


						<table class="table table-hover" id="sample-table-1">
							<thead>
								<tr>
									<th class="center">项目名称</th>
									<th class="center">项目简介</th>
									<th class="center">项目文档</th>
									<th class="center">项目进度</th>
									<th class="center">项目组长</th>
									<th class="center">项目状态</th>
									<th class="center"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${projectList }" var="project"
									varStatus="loop">

									<tr>
										<td class="center">${project.proname}</td>
										<td class="center">${project.describe}</td>
										<td class="center" width="10%">${project.document }</td>
										<td class="center" width="8%"><progress
												value=${project.progress } max="100"></progress></td>
										<td class="center" width="10%">${project.headman }</td>
										<td class="center" width="8%"><c:choose>
												<c:when test="${project.status eq 0 }">
													<span class="label label-sm label-inverse">审核中</span>
												</c:when>
												<c:when test="${project.status eq 1 }">
													<span class="label label-sm label-inverse">任务分配</span>
												</c:when>
												<c:when test="${project.status eq 2 }">
													<span class="label label-sm label-warning">项目进行中</span>
												</c:when>
												<c:when test="${project.status eq 3 }">
													<span class="label label-sm label-success">项目完成</span>
												</c:when>
												<c:when test="${project.status eq 4 }">
													<span class="label label-sm label-warning">项目修改</span>
												</c:when>
												<c:otherwise>
													<span class="label label-sm label-danger">项目报废</span>
												</c:otherwise>
											</c:choose></td>
										<td class="center" width="20%">
											<!-- class="btn btn-xs btn-bricky" -->
											<div class="visible-md visible-lg hidden-sm hidden-xs">
												<a href="manage/deviceDetail.do?deviceID=${device.deviceID}"><i
													class="fa fa-info-circle"></i>详情 </a>
												


													<c:choose>
														<c:when test="${project.status==0 }">
															<a href="www.google.com"><i
																class="fa fa-edit"></i>初审通过 </a>
																<a href="www.sina.com"><i class="fa fa-edit"></i>初审不通过</a>
														</c:when>
														<c:when test="${project.status==1 }">
															<a href=""><i class="fa fa-edit"></i>复审通过</a>
															<a href=""><i class="fa fa-edit"></i>复审不通过</a>
														</c:when>
														<c:when test="${project.status==2 }">
															<a href="www.bing.com"><i class="clip-busy"></i>项目完成</a>
														</c:when>

													</c:choose>

											</div>
										</td>
										<td class="center" width="13%">
											<!-- class="btn btn-xs btn-bricky" -->
									</tr>

								</c:forEach>
								<!--  
							<tr>
								<td colspan="10" align="right" style="">
								<input type="hidden" id="currentPage" value="${pageDO.currenPage }"/>
											<input type="hidden" id="totlePage" value="${pageDO.totlePage }"/>
									当前第${pageDO.currenPage }页,共${pageDO.totlePage }页,共${pageDO.totleCount }条记录
									<div >
										<ul class="pagination pagination-teal" >
										
											<li class='disabled' id='startli'><a onclick="submitForm(${pageDO.currenPage-1});"><i class='fa fa-chevron-left'></i></a></li>
											
											<%--<c:forEach begin="1" end="${pageDO.totlePage }" var="page">
												--%>
												<c:forEach begin="${pageDO.startIndex }" end="${pageDO.endIndex }" var="page">
												<c:choose>
													<c:when test="${page == pageDO.currenPage }">
														<li class="active">
															<a onclick="submitForm(${page});">
																${page}
															</a>
														</li>
													</c:when>
													<c:otherwise>
														<li >
															<a onclick="submitForm(${page});">
																${page}
															</a>
														</li>
													</c:otherwise>
												</c:choose>
												
											
											</c:forEach>
											
											<li class='disabled' ><a onclick="submitForm(${pageDO.currenPage+1});"><i class='fa fa-chevron-right'></i></a></li>
											
										</ul>
									</div>
								</td>
							</tr>
							 -->
							</tbody>
						</table>
					</div>

					<!-- end: TABLE WITH IMAGES PANEL -->

				</div>
			</div>
		</div>
		<!-- end: PAGE -->
		<%@ include file="footer.jspf"%>
	</div>
	<!-- end: MAIN CONTAINER -->

	</div>

	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script type="text/javascript"
		src="assets/plugins/jquery/jquery.min.js"></script>
	<!--<![endif]-->
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
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->

	<script>
		function pageList(currentPage, totlePage) {

			var startPage = parseInt(currentPage) - 2;

			if (startPage <= 1) {
				startPage = parseInt(currentPage);
			}
			var endPage = 5 + startPage;
			if (parseInt(endPage) > parseInt(totlePage)) {
				endPage = parseInt(totlePage);
			}
			for (var i = startPage; i < endPage; i++) {
				var html = "<a onclick='submitForm(" + i + ");'>" + i + "</a>";
				if (i == currentPage) {
					html = "<li class='active'>" + html + "</li>";
				} else {
					html = "<li>" + html + "</li>";
				}
				alert(html);
				$("#startli").append(html);
			}

			var right = "<li class='disabled' ><a href='#'><i class='fa fa-chevron-right'></i></a></li>";
			$("#startli").append(right);
		}
		jQuery(document).ready(function() {
			Main.init();
			FormElements.init();
			//	var cp = $('#currentPage').val();
			//	var tp = $('#totlePage').val();
			//	pageList(cp,tp);
		});
	</script>
</body>
</html>
