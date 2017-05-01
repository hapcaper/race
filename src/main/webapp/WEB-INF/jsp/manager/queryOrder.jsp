<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>预约管理</title>
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
<script type="text/javascript">
function PostJSONQuery(postURL,json,id,status)
{
  $.ajax({
    url: postURL,
    type:"post",
    contentType : "application/x-www-form-urlencoded;charset=utf-8",
    processData : true,
    data: json,
    dataType: "json",
    success: function(response,status,id) {
    	alert(response);
		if(status==1){
			$("confirm"+id).remove();
			$("delete"+id).remove();
		}else if(status==2){
			$("tr"+id).remove();
		}
		
    },
    error: function (xhr, ajaxOptions, thrownError) {
    	//showAlertInfo("error");
    }
  });
}

</script>
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
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
							<li><i class="clip-home-3"></i> <a href="manage/departIndex"> 首页 </a>
							</li>
							<li>预约管理</li>
							<li class="active">查询预约</li>
							
						</ol>
						<!--  <div class="page-header"></div>-->
						<br>
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<form role="form" class="form-horizontal" action="manage/queryOrderListbyDeviceName.do" method="post">
					<div class="row">

						<div class="form-group col-md-3" style="text-align:left;">
							<label class="control-label col-sm-5" for="form-field-1">
								设备名称 </label>
							<div class="input-group col-sm-7">

								<input type="text"  id="form-field-1"
									class="form-control " name="queryKey">
							</div>
						</div>
						<div class="form-group col-md-4" style="text-align:left;">
							<label class="control-label col-sm-4" for="form-field-2">
								申请状态 </label>
							<div class="input-group col-sm-8">
								<select name="status" class="form-control search-select" >
									<option value="-1" selected="selected">全部</option>
									<option value="0">未处理</option>
									<option value="1">已处理</option>
									<option value="2">已失效</option>
								</select>
								
							</div>
						</div>
						
						
						<div class="form-group col-md-1" style="text-align:right;"></div>
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
									<th>设备名称</th>
									<th>申请人</th>
									<th>申请时间</th>
									<th>处理人</th>
									<th>处理时间</th>
									<th>申请状态</th>
									
									<th></th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${orderList }" var="order">
							
								<tr id="tr${order.id}">
									<td ><a href="manage/deviceDetail.do?dno=${order.device.dno}" >${order.device.name}</a>
									</td>
									<td >${order.appUser.name}</td>
									<td class="hidden-xs"><fmt:formatDate value='${order.appTime }' pattern='yyyy-MM-dd'/></td>
									<td class="hidden-xs">${order.dealUser.name}</td>

									<td class="hidden-xs"><fmt:formatDate value='${order.dealTime }' pattern='yyyy-MM-dd'/></td>
									
									<td>
									
										<c:choose>
											<c:when test="${order.status eq 0 }"><span class="label label-sm label-success">待处理</span></c:when>
											<c:when test="${order.status eq 1 }"><span class="label label-sm label-danger">已确认</span></c:when>
											<%--<c:when test="${order.status eq 2 }"><span class="label label-sm label-warning">预约</span></c:when>
											--%><c:otherwise><span class="label label-sm label-inverse">已失效</span></c:otherwise>
										</c:choose>
									</td>
									<td  id ="td${order.id }" class="center">
									<!-- class="btn btn-xs btn-bricky" -->
										<div class="visible-md visible-lg hidden-sm hidden-xs">
										<c:if test="${order.status eq 0}">
										<c:choose>
											<c:when test="${type eq 1}">
													<a  id="confirm${order.id }" href="manage/updateOrderstatus.do?status=1&id=${order.id}&type=1"><i class="fa fa-edit"></i>确认预约
													</a>
													<a  id="delete${order.id }" href="manage/updateOrderstatus.do?status=2&id=${order.id}&type=1"><i class="fa fa-trash-o"></i>
													删除</a>
											</c:when>
											<c:otherwise>
													<a  id="delete${order.id }" href="manage/updateOrderstatus.do?status=2&id=${order.id}&type=2"><i class="fa fa-trash-o"></i>
													删除</a>
											</c:otherwise>
										</c:choose>
										</c:if>
										
											
											
											
										</div>
									</td>

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
		jQuery(document).ready(function() {
			Main.init();
			FormElements.init();
		});
	</script>
</body>
</html>
