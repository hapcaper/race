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

<title>个人资料</title>

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
							<li>个人中心</li>
							<li class="active">个人资料</li>

						</ol>
						<div class="page-header">
							<h3>个人详细资料</h3>

						</div>

						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<div class="row">
					<div class="col-sm-12">
						<div class="tabbable">
							<ul class="nav nav-tabs tab-padding tab-space-3 tab-blue"
								id="myTab4">
								<li class="active"><a data-toggle="tab"
									href="#panel_overview"> 查看详情 </a>
								</li>
								<li><a data-toggle="tab" href="#panel_edit_account">
										信息编辑 </a>
								</li>

							</ul>

							<div class="tab-content">
								<div id="panel_overview" class="tab-pane in active">
									<div class="row">

										<div class="col-sm-12 col-md-12">
											<div class="user-right">
												<div class="left">
													<h4>${member.name}</h4>
													<div class="fileupload fileupload-new"
														data-provides="fileupload">
														<div class="user-image">
															<div class="fileupload-new thumbnail">
																<img src="${member.photoPath}" alt="">
															</div>
															<%--<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
																<div class="user-image-buttons">
																	<span class="btn btn-teal btn-file btn-sm"><span class="fileupload-new"><i class="fa fa-pencil"></i></span><span class="fileupload-exists"><i class="fa fa-pencil"></i></span>
																		<input type="file">
																	</span>
																	<a href="#" class="btn fileupload-exists btn-bricky btn-sm" data-dismiss="fileupload">
																		<i class="fa fa-times"></i>
																	</a>
																</div>
															--%>
														</div>
													</div>

												</div>
											</div>

										</div>
									</div>
									<div class="row">

										<div class="col-sm-6 col-md-6">
											<div class="user-left">

												<table class="table table-condensed table-hover">
													<thead>
														<tr>
															<th colspan="5">基本信息</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>性别:</td>
															<td>${member.gender }</td>
															
														</tr>
                                                  		<c:if test="${sessionScope.user.duty!=0 }">
														<tr>
															<td>专业班级</td>
															<td>${member.professional }${member.classes}</td>
														</tr>
														</c:if>
														<tr>
															<td>移动电话:</td>
															<td>${member.telphone }</td>
														</tr>
														<tr>
															<td>部门:</td>
															<td>${member.depanment.depanmentName}</td>
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
															<th colspan="5">其他信息</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>工号:</td>
															<td>${member.mid }</td>

														</tr>
																<c:if test="${sessionScope.user.duty!=0 }">
														<tr>
															<td>进入时间:</td>
															<td><fmt:formatDate value="${member.intime}"
																	type="date"></fmt:formatDate>
															</td>
															<!-- 实用JSP标签 时间格式 -->
														</tr>
														</c:if>
														<tr>
															<td>地址:</td>
															<td>${member.address }</td>
															
														</tr>
														<tr>
															<td>职务:</td>
															<td>
															<c:choose>
															<c:when test='${member.duty }==0'>
															学生
															</c:when>
															<c:otherwise>
														    教师
															</c:otherwise>
															</c:choose>
															</td>
														</tr>

													</tbody>
												</table>

											</div>
										</div>
									</div>
								</div>

								<div id="panel_edit_account" class="tab-pane">
									<form role="form" class="form-horizontal"
										action="manage/updateMember2.do" method="post">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-1">
												成员编号 </label>
											<div class="col-sm-4">
												<input type="text" placeholder="职工号" id="form-field-1"
													class="form-control" name="mid" value="${ member.mid}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-2">
												成员姓名 </label>
											<div class="col-sm-4">
												<input type="text" placeholder="员工姓名" id="form-field-2"
													class="form-control" name="name" value="${member.name }">
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-2 control-label"> 性别 </label>
											<div class="col-sm-4">
												<c:choose>

													<c:when test='${member.gender eq "男" }'>
														<label class="radio-inline"> <input type="radio"
															value="男" name="gender" class="grey" checked="checked">
															男 </label>
														<label class="radio-inline"> <input type="radio"
															value="女" name="gender" class="grey"> 女 </label>
													</c:when>
													<c:otherwise>
														<label class="radio-inline"> <input type="radio"
															value="男" name="gender" class="grey"> 男 </label>
														<label class="radio-inline"> <input type="radio"
															value="女" name="gender" class="grey" checked="checked">
															女 </label>
													</c:otherwise>
												</c:choose>

											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-4">
												手机号码 </label>
											<div class="col-sm-4">
												<input type="text" placeholder="手机号" id="form-field-4"
													class="form-control" name="telphone"
													value="${member.telphone }">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="form-field-5">
												地址</label>
											<div class="col-sm-4">
												<input type="text" placeholder="地址" id="form-field-5"
													class="form-control" name="address"
													value="${member.address }">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label"> 所属部门 </label>
											<div class="col-sm-4">
												<select name="depanmentId"
													class="form-control search-select">
													<c:forEach items="${depanmentList }" var="d">
														<c:choose>
															<c:when test="${member.depanmentId eq d.depanmentID }">
																<option value="${d.depanmentID }" selected="selected">${d.depanmentName}</option>
															</c:when>
															<c:otherwise>
																<option value="${d.depanmentID }">${d.depanmentName}</option>
															</c:otherwise>
														</c:choose>

													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label"> 专业 </label>
											<div class="col-sm-4">
												<select name="professional"
													class="form-control search-select">
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
												<select name="classes"
													class="form-control search-select">
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
											<label class="col-sm-2 control-label"> 职务</label>
											<div class="col-sm-4">
												<select name="duty" class="form-control search-select">
													<c:choose>
														<c:when test="${member.duty eq 0 }">
															<option value="0" selected="selected">部门学生</option>
														</c:when>
														<c:otherwise>
															<option value="0">部门学生</option>
														</c:otherwise>
													</c:choose>
													<c:choose>
														<c:when test="${member.duty eq 1}">
															<option value="1" selected="selected">部门负责人</option>
														</c:when>
														<c:otherwise>
															<option value="1">部门负责人</option>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>

										<%--<div class="form-group">
						<label class="col-sm-2 control-label"> 个人照片</label>
						<div class="col-sm-4">
							<div class="fileupload fileupload-new" data-provides="fileupload">
								<div class="fileupload-new thumbnail"
									style="width: 200px; height: 150px;">
									<img src="${ member.photoPath}" alt="" />
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
					</div>--%>
										<div class="form-group">
											<label class="col-sm-2 control-label"> </label>
											<div class="col-sm-4">
												<div class="col-sm-6">
													<input type="submit" value="修改"
														class="btn btn-blue btn-block">
												</div>
												<div class="col-sm-6">
													<input type="button" value="返回"
														class="btn btn-blue btn-block"
														onclick="javascript:history.go(-1);">
												</div>
											</div>
										</div>

									</form>
								</div>


								<script src="assets/plugins/jquery/jquery.min.js"></script>


								<script
									src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
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

								<script
									src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
								<script
									src="assets/plugins/jquery.pulsate/jquery.pulsate.min.js"></script>
								<script src="assets/js/pages-user-profile.js"></script>

								<script>
									jQuery(document).ready(function() {
										Main.init();
										PagesUserProfile.init();

									});
								</script>
</body>
</html>
