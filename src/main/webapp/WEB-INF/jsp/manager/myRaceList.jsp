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
							<li>竞赛管理</li>
							<li class="active">申报赛事</li>

						</ol>


						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
					<div class="page-header">
						<br> <br>
						<h3 class="center">
							我的所有赛事<small>（当前学年：${term.term+2015 }）</small>
						</h3>
					</div>
					<form method="get" id="frm" class="form-inline"
						action="manage/queryMyRace.do">
						<label>&nbsp;&nbsp;选择学年: 
						<select name="t" id="c" class="form-control" >
						<c:forEach items="${termlist }" var="t">
							<option value="${t.term }">${t.term +2015}</option>
						</c:forEach>
								
						</select>
						</label>
						<button type="submit" class="btn btn-primary"
							style="margin-left: 30px">查询</button>
					</form>

				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT enctype="multipart/form-data"-->
				<div class="panel-body">
					<table class="table table-hover" id="sample-table-1">
						<thead>
							<tr>
								<th>赛事名称</th>
								<th class="hidden-xs">项目名称</th>
								<th>所属人员</th>
								<th class="hidden-xs">项目简介</th>
								<th class="hidden-xs">进行状态</th>
								<th>所获奖项</th>
								<th>详情</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${racelist }" var="race" varStatus="loop">
								<tr>
									<td>${race.rname}</td>
									<td class="hidden-xs">${race.proname }</td>
									<td>${prolist[loop.count-1].persons }</td>
									<td class="hidden-xs">${prolist[loop.count-1].description }</td>
									<td class="hidden-xs"><c:if test="${race.progress == 1 }">
											<span class="label label-warning"> 赛事进行中</span>
										</c:if> <c:if test="${race.progress == 2 }">
											<span class="label label-success"> 赛事已完成</span>
										</c:if></td>
									<td class="hidden-xs"><c:if test="${race.progress == 1 }"></c:if>
										<c:if test="${race.progress == 2 }">
											<c:if test="${race.result == 1 }">一等奖</c:if>
											<c:if test="${race.result == 2 }">二等奖</c:if>
											<c:if test="${race.result == 3 }">三等奖</c:if>
											<c:if test="${race.result == 4 }">其他奖项</c:if>
										</c:if></td>
									<td><a href="manage/toRaceDetail.do?rid=${race.id}">查看</a></td>
								</tr>
							</c:forEach>


						</tbody>
					</table>
				</div>




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
