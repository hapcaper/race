<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>添加学生</title>

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
								href="manage/depanmentIndex.do"> 首页 </a>
							</li>
							<li>学生管理</li>
							<li class="active">添加学生</li>

						</ol>
						<div class="page-header">
							<h3>
								添加学生 <small>请填写学生详细信息</small>
							</h3>

						</div>

						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT enctype="multipart/form-data"-->
				<form role="form" class="form-horizontal"
					onsubmit="return checkgrade()" action="manage/addMember.do"
					method="post">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-1">
							学生号 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="学生号" id="mid"
								class="form-control" name="mid">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-2">
							学生姓名 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="学生姓名" id="name"
								class="form-control" name="name">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label"> 性别 </label>
						<div class="col-sm-4">
							<label class="radio-inline"> 
							<input type="radio"	value="男" name="gender" class="grey"> 男 </label> <label
								class="radio-inline">
								 <input type="radio" value="女"	name="gender" class="grey"> 女 </label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> 专业 </label>
						<div class="col-sm-4">
							<select name="professional" class="form-control search-select">
								<c:forEach items="${professionalList }" var="p">
									<c:choose>
										<c:when test="${member.professional eq p.professional }">
											<option value="${p.professional }" selected="selected">${p.professional}</option>
										</c:when>
										<c:otherwise>
											<option value="${p.professional }">${p.professional}</option>
										</c:otherwise>
									</c:choose>

								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">班级</label>
						<div class="col-sm-4">
							<select name="classes" class="form-control search-select">
								<c:forEach items="${classesList }" var="c">
									<c:choose>
										<c:when test="${member.classes eq c.classes }">
											<option value="${c.classes }" selected="selected">${c.classes}</option>
										</c:when>
										<c:otherwise>
											<option value="${c.classes }">${c.classes}</option>
										</c:otherwise>
									</c:choose>

								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-2">
							住址 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="寝室住址" id="form-field-2"
								class="form-control" name="address">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-field-4">
							手机号码 </label>
						<div class="col-sm-4">
							<input type="text" placeholder="手机号" id="telphone"
								class="form-control" name="telphone">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> 所属部门 </label>
						<div class="col-sm-4">
							<select name="depanmentId" class="form-control search-select">
								<c:forEach items="${depanmentList }" var="depanment">
									<option value="${depanment.depanmentID }">${depanment.depanmentName
										}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label"> 职务 </label>
						<div class="col-sm-4">
							<select name="duty" class="form-control search-select">
								<option value="0">部门学生</option>
								<option value="1">部门负责人</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label"> 个人照片</label>
						<div class="col-sm-4">
							<div class="fileupload fileupload-new" data-provides="fileupload">
								<div class="fileupload-new thumbnail"
									style="width: 200px; height: 150px;">
									<img
										src="http://www.placehold.it/200x150/EFEFEF/AAAAAA?text=no+image"
										alt="" />
								</div>
								<div class="fileupload-preview fileupload-exists thumbnail"
									style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
								<div>
									<span class="btn btn-light-grey btn-file"><span
										class="fileupload-new"><i class="fa fa-picture-o"></i>
											选择图片</span><span class="fileupload-exists"><i
											class="fa fa-picture-o"></i>更换图片</span> <input type="file"
										name="photoPath" value="img/device/notImg.png"> </span> <a
										href="#" class="btn fileupload-exists btn-light-grey"
										data-dismiss="fileupload"> <i class="fa fa-times"></i>
										移除图片 </a>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> 进入时间 <span
							class="symbol required"></span> </label>
						<div class="col-sm-4">
							<div class="input-group">
								<input type="text" data-date-format="yyyy-mm-dd"
									data-date-viewmode="years" class="form-control date-picker" id ="data"
									name="time"> <span class="input-group-addon"> <i
									class="fa fa-calendar"></i> </span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> </label>
						<div class="col-sm-4">
							<div class="col-sm-6">
								<input type="submit" value="添加成员" class="btn btn-blue btn-block">
							</div>
							<div class="col-sm-6">
								<input type="button" value="返回" class="btn btn-blue btn-block"
									onclick="javascript:history.go(-1);">
							</div>
						</div>
					</div>
				</form>

				<!-- end: PAGE CONTENT-->
			</div>

			<%@ include file="footer.jspf"%>
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
		<script
			src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
		<script
			src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
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

		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->

		<script>
function checkgrade(){
	var mid = document.getElementById("mid");
	var name = document.getElementById("name");
	var telphone = document.getElementById("telphone");
	var data = document.getElementById("data");
	var res = false;
	if(mid.value == null || name.value == null || name.value == "" || mid.value == "" || data.value == "" || data.value == null ){
			alert("添加的数据错误，请检查后再次提交");
			return res;
	}else{
		res = true;
		return res;
	}
}
</script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				//Index.init();
				FormElements.init();
				UIButtons.init();
			});
		</script>
</body>
</html>
