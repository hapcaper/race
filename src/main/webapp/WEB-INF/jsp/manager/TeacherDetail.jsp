<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

<title>个人资料</title>

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
		<link rel="stylesheet" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-social-buttons/social-buttons-3.css">
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
							<li><i class="clip-home-3"></i> <a href="manage/departIndex.do"> 主页 </a></li>
							<li >个人中心</li>
							<li class="active">个人资料</li>
							
						</ol>
						<div class="page-header">
							<h3>
								个人详细资料 
							</h3>
						
						</div>
						
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<div class="row">
						<div class="col-sm-12">
							<div class="tabbable">
								<ul class="nav nav-tabs tab-padding tab-space-3 tab-blue" id="myTab4">
									<li class="active">
										<a data-toggle="tab" href="#panel_overview">
											查看详情
										</a>
									</li>
									<li>
										<a data-toggle="tab" href="#panel_edit_account">
											账户编辑
										</a>
									</li>
									
								</ul>
								<div class="tab-content">
									<div id="panel_overview" class="tab-pane in active">
										<div class="row">
											
											<div class="col-sm-12 col-md-12">
												<div class="user-right">
													<div class="center">
														<h4>${sessionScope.user.name }</h4>
														<div class="fileupload fileupload-new" data-provides="fileupload">
															<div class="user-image">
																
																<%--<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
																<div class="user-image-buttons">
																	<span class="btn btn-teal btn-file btn-sm"><span class="fileupload-new"><i class="fa fa-pencil"></i></span><span class="fileupload-exists"><i class="fa fa-pencil"></i></span>
																		<input type="file">
																	</span>
																	<a href="#" class="btn fileupload-exists btn-bricky btn-sm" data-dismiss="fileupload">
																		<i class="fa fa-times"></i>
																	</a>
																</div>
															--%></div>
														</div>
														<hr>
														<p>
															${sessionScope.user.depanment.name }
														</p>
														<hr>
													</div>
												</div>
													
										</div>
										</div>
										<div class="row">
											
											<div class="col-sm-6 col-md-6">
												<div class="user-left">
													
													<table class="table table-condensed table-hover">
													<!-- 	<thead>
															<tr>
																<th colspan="3">联系方式</th>
															</tr>
														</thead>
														-->
														<tbody>
															<tr>
																<td>教师性别:</td>
																<td>
																
																	${sessionScope.user.gender }
																</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<tr>
																
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
														</tbody>
													</table>
													
												</div>
											</div>
											<div class="col-sm-6 col-md-6">
												<div class="user-right">
													
													<table class="table table-condensed table-hover">
														<thead>
															<tr>
																<th colspan="3">工作信息</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>教师工号:</td>
																<td>${sessionScope.teacher.id }</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<!--  <tr>
																<td>所在部门:</td>
																<td>${sessionScope.user.depanment.name }</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															-->
														<!-- 	<tr>
																<td>部门职务:</td>
																<td>
																</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<tr>
																<td>系统角色:</td>
																<td>
																<c:choose>
														
																	<c:when test="${sessionScope.user.role==0 }">
																		<span class="label label-sm label-info">职工</span>
																	</c:when>
																	<c:when test="${sessionScope.user.role==1 }">
																		<span class="label label-sm label-info">设备负责人</span>
																	</c:when>
																	<c:when test="${sessionScope.user.role==2 }">
																		<span class="label label-sm label-info">部门负责人</span>
																	</c:when>
																	<c:otherwise>
																		<span class="label label-sm label-info">国资处管理员</span>
																	</c:otherwise>
																</c:choose>
																</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>-->
														</tbody>
													</table>
													
												</div>
											</div>
										</div>
									</div>
									
									<div id="panel_edit_account" class="tab-pane">
										<form action="manage/updateEmployee.do" method="post" role="form" id="form">
											<div class="row">
												<div class="col-md-12">
													<h3>账户信息</h3>
													<hr>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="control-label">
															教师工号
														</label>
														<input type="hidden" value="${sessionScope.teacher.id }" class="form-control"  name="id">
														<!--<input type="text" value="${sessionScope.user.eno }" class="form-control"  name="eno">-->
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="control-label">
															教师姓名
														</label>
														<input type="text" value="${sessionScope.teacher.name }" class="form-control" id="lastname" name="name">
													</div>
													<div class="form-group">
														<label class="control-label">
															教师性别
														</label>
														<div>
														<c:choose>
														
															<c:when test="${sessionScope.teacher.gender=='男' }">
																<label class="radio-inline">
																	<input type="radio" class="grey" value="男" name="gender" id="gender_female" checked="checked">
																	男
																</label>
																<label class="radio-inline">
																	<input type="radio" class="grey" value="女" name="gender"  id="gender_male" >
																	女
																</label>
															</c:when>
															<c:otherwise>
															<label class="radio-inline">
																	<input type="radio" class="grey" value="男" name="gender" id="gender_female" >
																	男
																</label>
																<label class="radio-inline">
																	<input type="radio" class="grey" value="女" name="gender"  id="gender_male" checked="checked">
																	女
																</label>
															</c:otherwise>
														</c:choose>
															
														</div>
													</div>
													<div class="form-group">
														<label class="control-label">
															所在部门
														</label>
														<input type="text" disabled="disabled" value="${sessionScope.user.depart.name }" class="form-control" id="phone" >
												 	</div>
													<!-- <div class="form-group">
														<label class="control-label">
															系统角色
														</label>
														<c:choose>
														
															<c:when test="${sessionScope.user.role==0 }">
																<input type="text" disabled="disabled" value="职工" class="form-control" id="phone" >
															</c:when>
															<c:when test="${sessionScope.user.role==1 }">
																<input type="text" disabled="disabled" value="设备负责人" class="form-control" id="phone" >
															</c:when>
															<c:when test="${sessionScope.user.role==2 }">
																<input type="text" disabled="disabled" value="部门负责人" class="form-control" id="phone" >
															</c:when>
															<c:otherwise>
															<input type="text" disabled="disabled" value="国资处管理员" class="form-control" id="phone" >
															</c:otherwise>
														</c:choose>
														
													</div>
													-->
													<%--<div class="form-group">
														<label class="control-label">
															原始密码
														</label>
														<input type="password" placeholder="password" class="form-control" name="password" id="password">
													</div>
													<div class="form-group">
														<label class="control-label">
															新建密码
														</label>
														<input type="password" placeholder="password" class="form-control" name="password" id="password">
													</div>
													<div class="form-group">
														<label class="control-label">
															重复密码
														</label>
														<input type="password"  placeholder="password" class="form-control" id="password_again" name="password_again">
													</div>
													
												--%></div>
											</div>
											
											
											<div class="row">
												<div class="col-md-8">
													<p>
														系统暂时不支持图片上传及修改.
													</p>
												</div>
												<div class="col-md-4">
													<button class="btn btn-teal btn-block" type="submit">
														修改信息 <i class="fa fa-arrow-circle-right"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
									
								</div>
							</div>
						</div>
					</div>
					<!-- end: PAGE CONTENT-->
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
		<script src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		<script src="assets/plugins/jquery.pulsate/jquery.pulsate.min.js"></script>
		<script src="assets/js/pages-user-profile.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				PagesUserProfile.init();
				
			});
	


</script>

</body>
</html>
