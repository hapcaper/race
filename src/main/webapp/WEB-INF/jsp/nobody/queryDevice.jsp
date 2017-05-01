<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<c:if test="${ !empty errorMessage}">
		<script type="text/javascript">
			alert(${errorMessage});
		</script>
	</c:if>
	<div class="main-container">
		<%@ include file="../manager/top.jspf"%>
		<%@ include file="../manager/left.jspf"%>
		<!-- start: PAGE -->
		<div class="main-content">

			<div class="container">
				<!-- start: PAGE HEADER -->
				<div class="row">
					<div class="col-sm-12">

						<!-- start: PAGE TITLE & BREADCRUMB -->
						<ol class="breadcrumb">
							<li><i class="clip-home-3"></i> <a href="manage/departIndex.do"> 首页 </a>
							</li>
							<li>设备管理</li>
							<li class="active">查询预约</li>
							
						</ol>
						<!--  <div class="page-header"></div>-->
						<br>
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<form role="form" class="form-horizontal">
					<div class="row">

						<div class="form-group col-md-3" style="text-align:left;">
							<label class="control-label col-sm-5" for="form-field-1">
								设备名称 </label>
							<div class="input-group col-sm-7">

								<input type="text"  id="form-field-1"
									class="form-control ">
							</div>
						</div>
						<div class="form-group col-md-4" style="text-align:left;">
							<label class="control-label col-sm-3" for="form-field-2">
								部门 </label>
							<div class="input-group col-sm-9">
								<select name="departId" class="form-control search-select" >
									<option value="0">全部</option>
									<c:forEach items="${departList }" var="depart">
										<c:choose>
											<c:when test="${depart.id eq departId }">
												<option value="${depart.id }" selected="selected">${depart.name }</option>
											</c:when>
											<c:otherwise>
												<option value="${depart.id }">${depart.name }</option>
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
								</select>
								
							</div>
						</div>
						<%-- 
						<div class="form-group col-md-4" style="text-align:left;">
							<label class="control-label col-sm-3" for="form-field-3">
								员工 </label>
							<div class="input-group col-sm-9">

								<select name="leaderId" class="form-control search-select" id="form-field-3">
									<option value="0">全部</option>
									<c:forEach items="${employeeList }" var="employee">
										<c:choose>
											<c:when test="${employee.id eq leaderId}">
												<option value="${employee.id }" selected="selected">${employee.name }</option>
											</c:when>
											<c:otherwise>
												<option value="${employee.id }">${employee.name }</option>
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
								</select>
							</div>
						</div>
						--%>
						<div class="form-group col-md-1" style="text-align:right;">
							<input  type="submit" value="查询" class="btn btn-primary" />
							
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
									<th class="center">设备图片</th>
									<th>设备编号</th>
									<th>设备名称</th>
									<th>总价格</th>
									<th>存放地点</th>
									<th>负责人</th>
									<%--<th>领用人</th>
									--%><th>所属部门</th>
									<th>设备状态</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${deviceList }" var="device">
							
								<tr>
									<td class="center"><img src="${ device.photoPath}" alt="设备缩略图"
										width="80px" height="80px" />
									</td>
									<td class="center">${device.dno }</td>
									<td class="hidden-xs">${device.name }</td>
									<td class="hidden-xs">${device.price }</td>

									<td class="hidden-xs">${device.storageSite }</td>
									<td>${device.leader.name }</td>
									
									<%--<td>${device.receiver.name }</td>
									--%><td>${device.depart.name }</td>
									<td>
									
										<c:choose>
											<c:when test="${device.status eq 0 }"><span class="label label-sm label-success">设备闲置</span></c:when>
											<c:when test="${device.status eq 1 }"><span class="label label-sm label-danger">设备借出</span></c:when>
											<c:when test="${device.status eq 2 }"><span class="label label-sm label-warning">设备维修</span></c:when>
											<c:otherwise><span class="label label-sm label-inverse">设备报废</span></c:otherwise>
										</c:choose>
									</td>
									<td class="center">
									<!-- class="btn btn-xs btn-bricky" -->
										<div class="visible-md visible-lg hidden-sm hidden-xs">
											<a  href="manage/deviceDetail.do?dno=${device.dno }"><i class="fa fa-info-circle"></i>详情
											</a>
											<a  href="manage/insertOrder.do?did=${device.id }"><i class="fa fa-trash-o"></i>
												预约
											</a>
											<%--<c:if test="${sessionScope.user.role>0 }">
												<c:choose>
													<c:when test="${device.status < 2 }">
														<a  href="manage/repairDevice.do?did=${device.id }"><i class="clip-inject"></i>维修
														</a>
													</c:when>
													<c:otherwise>
														<a  href="manage/enableDevice.do?did=${device.id }"><i class="clip-busy"></i>闲置
														</a>
													</c:otherwise>
												</c:choose>
												
													
												<c:if test="${device.status != -1 }">	
													<a  href="manage/getDevice.do?dno=${device.dno }"><i class="fa fa-edit"></i>编辑
													</a>
													<a  href="manage/deleteDevice.do?did=${device.id }"><i class="fa fa-trash-o"></i>
													报废</a>
													
												</c:if>
											</c:if>
										--%></div></td>

								</tr>
								
							</c:forEach>
							<tr>
								<td colspan="10" align="right" style="">
									<div>
										<ul class="pagination pagination-teal">
											<li class="disabled">
												<a href="#"><i class="fa fa-chevron-left"></i></a>
											</li>
											<li class="active">
												<a href="#">
													1
												</a>
											</li>
											<li>
												<a href="#">
													2
												</a>
											</li>
											<li>
												<a href="#">
													3
												</a>
											</li>
											<li>
												<a href="#">
													4
												</a>
											</li>
											<li>
												<a href="#"><i class="fa fa-chevron-right"></i></a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
							
							</tbody>
						</table>
					</div>

					<!-- end: TABLE WITH IMAGES PANEL -->
					
				</div>
			</div>
		</div>
		<!-- end: PAGE -->	
		<%@ include file="../manager/footer.jspf"%>
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
		jQuery(document).ready(function() {
			Main.init();
			FormElements.init();
		});
	</script>
</body>
</html>
