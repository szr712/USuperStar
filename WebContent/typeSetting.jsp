<%@page import="com.zjut.azure.Type"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>USuperStar酒店管理系统-后台</title>
	<meta charset="UTF-8">
	<meta name="description" content="overview &amp; stats" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

	<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

	<link rel="shortcut icon" href="assets/images/3.ico" type="image/x-icon" />

	<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="assets/js/ace-extra.min.js"></script>

	<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

	<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
	<%@ include file="HTMLfile/navbar.html" %>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {}
		</script>

		<%@ include file="HTMLfile/sidebar.html" %>

		<div class="main-content">
			<div class="main-content-inner">


				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; 选择皮肤</span>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-navbar" autocomplete="off" /> <label class="lbl"
										for="ace-settings-navbar"> 固定导航栏</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-sidebar" autocomplete="off" /> <label class="lbl"
										for="ace-settings-sidebar"> 固定侧边栏</label>
								</div>



								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"
										autocomplete="off" /> <label class="lbl" for="ace-settings-rtl"> 镜像</label>
								</div>

								<!-- <div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-add-container" autocomplete="off" />
									<label class="lbl" for="ace-settings-add-container">
										Inside
										<b>.container</b>
									</label>
								</div> -->
							</div>
							<!-- /.pull-left -->

							<!-- <div class="pull-left width-50">
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"
										autocomplete="off" />
									<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"
										autocomplete="off" />
									<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"
										autocomplete="off" />
									<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
								</div>
							</div>/.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->

					<div class="page-header">
						<h1>房型设置</h1>
					</div>
					<!-- /.page-header -->
					<div>
						<table id="dynamic-table" class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">房型</th>
									<th class="center">床型</th>
									<th class="center col-xs-1">入住人数</th>

									<th class="center detail-col">
										WIFI
									</th>
									<th class="center">房间面积（㎡）</th>
									<th class="center">房价（元）</th>

									<th class="center col-xs-2">
										<button class="btn btn-xs btn-warning pull-right" href="#row1" role="button"
											data-toggle="modal">
											<i class="ace-icon fa fa-plus "></i>
										</button>
									</th>
								</tr>
							</thead>
							<tbody>
								<%ArrayList<Type> typelist=(ArrayList<Type>)request.getAttribute("typelist");
								for(int i=0;i<typelist.size();i++){%>
								<tr>

									<td class="center"><%=typelist.get(i).getType()%></td>
									<td class="center"><%=typelist.get(i).getBed()%></td>
									<td class="center"><%=typelist.get(i).getCapability()%></td>
									<%if(typelist.get(i).isWifi()){ %></td>
									<td class="center">有</td>
									<%}else{ %>
									<td class="center">无</td>
									<%} %>
									<td class="center"><%=typelist.get(i).getRoomsize()%></td>
									<td class="center"><%=typelist.get(i).getPrice()%></td>
									<td>
										<div class="hidden-sm hidden-xs btn-group">


											<button class="btn btn-xs btn-info" href="#row1" role="button"
												data-toggle="modal">
												<i class="ace-icon fa fa-pencil bigger-120"></i>
											</button>
											<form class="no-padding" action="typeDelete" method="get" accept-charset="UTF-8">
										
											<button class="btn btn-xs btn-danger"  name="delete" value="1">
												<i class="ace-icon fa fa-trash-o bigger-120" ></i>
											</button>
											</form>
										</div>
									</td>
								</tr>
								<%}%>
											
											
							</tbody>


						</table>
					</div>
					<div id="row1" class="modal fade" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header no-padding">
                                            <div class="table-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">
                                                    <span class="white">&times;</span>
                                                </button>
                                                详细信息
                                            </div>
                                        </div>

                                        <div class="modal-body no-padding">
                                            <tr class="detail-row">
												<form class="form-horizontal" role="form"  action="typeAdd" method="POST" accept-charset="UTF-8">
													<div class="space-6"></div>
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right"> 房型： </label>
					
														<div class="col-sm-9">
															<input type="text" placeholder="房型" class="col-xs-8" required="required" name="type"/>
														</div>
													</div>
					
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right"> 床型： </label>
					
														<div class="col-sm-9">
															<input type="text"  placeholder="床型" class="col-xs-8" required="required" name="bed"/>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right"> 入住人数： </label>
					
														<div class="col-sm-9">
															<input type="text"  placeholder="入住人数" class="col-xs-8" required="required" name="capability"/>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right"> WIFI： </label>
					
														<div class="col-sm-9">
															<input type="radio"  name="WIFI" value="true" />有WIFI 
														 	<input type="radio"  name="WIFI" value="false" />无WIFI
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right"> 房间面积： </label>
					
														<div class="col-sm-9">
															<input type="text"  placeholder="房间面积" class="col-xs-8" required="required" name="roomsize"/>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right"> 房价： </label>
					
														<div class="col-sm-9">
															<input type="text"  placeholder="房价" class="col-xs-8" required="required" name="price"/>
														</div>
													</div>
					
													<div class="space-4"></div>
					
													
										
													<div class="clearfix form-actions">
														<div class="col-md-offset-3 col-md-9">
															<button class="btn btn-info" type="submit">
																<i class="ace-icon fa fa-check bigger-110"></i>
																完成
															</button>
					
															&nbsp; &nbsp; &nbsp;
															<button class="btn" type="reset">
																<i class="ace-icon fa fa-undo bigger-110"></i>
																重置
															</button>
														</div>
													</div>
												</form>
					
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>

					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<%@ include file="HTMLfile/footer.html" %>

								<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i
										class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
								</a>
					</div>
					<!-- /.main-container -->

					<!-- basic scripts -->

					<!--[if !IE]> -->
					<script src="assets/js/jquery-2.1.4.min.js"></script>

					<!-- <![endif]-->

					<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
					<script type="text/javascript">
						if ('ontouchstart' in document.documentElement)
							document
							.write("<script src='assets/js/jquery.mobile.custom.min.js'>" +
								"<" + "/script>");
					</script>
					<script src="assets/js/bootstrap.min.js"></script>

					<!-- page specific plugin scripts -->

					<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
					<script src="assets/js/jquery-ui.custom.min.js"></script>
					<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
					<script src="assets/js/jquery.easypiechart.min.js"></script>
					<script src="assets/js/jquery.sparkline.index.min.js"></script>
					<script src="assets/js/jquery.flot.min.js"></script>
					<script src="assets/js/jquery.flot.pie.min.js"></script>
					<script src="assets/js/jquery.flot.resize.min.js"></script>

					<!-- ace scripts -->
					<script src="assets/js/ace-elements.min.js"></script>
					<script src="assets/js/ace.min.js"></script>



</body>

</html>