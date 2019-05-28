<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.zjut.azure.Administrator" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>USuperStar酒店管理系统-后台</title>
<meta charset="UTF-8">
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

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
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="index.html" class="navbar-brand"> <small> <i
						class="fa fa-h-square"></i> 后台管理 &nbsp;<small> USuperStar
					</small>
				</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" src="assets/images/avatars/avatar4.png"
							alt="Jason's Photo" /> <span class="user-info"> <small>欢迎,</small>
								<%Administrator admi=(Administrator)request.getAttribute("Admi");
								if(admi!=null){%> 
								<%=admi.getName() %>
								<%}%>

						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i> 设置
							</a></li>

							<li><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> 个人信息
							</a></li>

							<li class="divider"></li>

							<li><a href="login.html"> <i
									class="ace-icon fa fa-power-off"></i> 退出登录
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<a class="btn btn-success" href="addbook.html"> <i
						class="ace-icon fa fa-plus"></i>
					</a> <a class="btn btn-info" href="showbook.html"> <i
						class="ace-icon fa fa-info"></i>
					</a> <a class="btn btn-warning" href="profile.html"> <i
						class="ace-icon fa fa-user"></i>
					</a>

					<!-- <button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button> -->
				</div>

				<!-- <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div> -->
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-desktop"></i> <span class="menu-text">
							日常操作 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 图书归还
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 图书借出
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 图书续借
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 借阅查询
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-file"></i> <span class="menu-text">
							资料管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="showbook.html"> <i
								class="menu-icon fa fa-caret-right"></i> 书籍列表
						</a> <b class="arrow"></b></li>
						<li class=""><a href="addbook.html"> <i
								class="menu-icon fa fa-caret-right"></i> 增加书籍
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 修改书籍
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 添加分类
						</a> <b class="arrow"></b></li>
						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 书籍下架
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> 系统设置 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 用户管理
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 参数设置
						</a> <b class="arrow"></b></li>

						<li class=""><a href="profile.html"> <i
								class="menu-icon fa fa-caret-right"></i> 个人信息
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#"> <i
								class="menu-icon fa fa-caret-right"></i> 学生信息
						</a> <b class="arrow"></b></li>
					</ul></li>

			</ul>
			<!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-tachometer home-icon"></i> <a
							class="active" href="index.html">总体信息</a></li>

					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
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
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-navbar" autocomplete="off" /> <label
										class="lbl" for="ace-settings-navbar"> 固定导航栏</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-sidebar" autocomplete="off" /> <label
										class="lbl" for="ace-settings-sidebar"> 固定侧边栏</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-breadcrumbs" autocomplete="off" /> <label
										class="lbl" for="ace-settings-breadcrumbs"> 固定面包屑导航</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" autocomplete="off" /> <label
										class="lbl" for="ace-settings-rtl"> 镜像</label>
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
						<h1>总体信息</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<!-- <div class="alert alert-block alert-success">
								<button type="button" class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>

								<i class="ace-icon fa fa-check green"></i>

								Welcome to
								<strong class="green">
									Ace
									<small>(v1.4)</small>
								</strong>,
								лёгкий, многофункциональный и простой в использовании шаблон для админки на bootstrap
								3.3.6. Загрузить исходники с <a href="https://github.com/bopoda/ace">github</a> (with
								minified ace js/css files).
							</div> -->

							<div class="row ">
								<div class="space-6"></div>
								<div class="col-sm-3 text-center">
									<div class="infobox infobox-green">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-book"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">50</span>
											<div class="infobox-content">在借书籍</div>
										</div>

										<div class="stat stat-success">8%</div>
									</div>
								</div>

								<div class="col-sm-3 text-center">
									<div class="infobox infobox-blue">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-clone"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">50</span>
											<div class="infobox-content">已还书籍</div>
										</div>

										<div class="stat stat-success">20%</div>
									</div>
								</div>

								<div class="col-sm-3 text-center">
									<div class="infobox infobox-pink">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-bookmark-o"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">18</span>
											<div class="infobox-content">当前预约书籍</div>
										</div>
										<div class="stat stat-important">4%</div>
									</div>
								</div>

								<div class="col-sm-3 text-center">
									<div class="infobox infobox-red">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-times-circle"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">7</span>
											<div class="infobox-content">逾期未还</div>
										</div>
										<div class="stat stat-important">5%</div>
									</div>
								</div>

							</div>

							<div class="hr hr10 hr-dotted"></div>

							<div class="row ">
								<div class="col-sm-6">
									<div class="widget-box">
										<div
											class="widget-header widget-header-flat widget-header-small">
											<h5 class="widget-title">
												<i class="ace-icon fa fa-table"></i> 借阅统计
											</h5>

											<div class="widget-toolbar no-border">
												<div class="inline dropdown-hover">
													<button class="btn btn-minier btn-primary">
														本周 <i
															class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
													</button>

													<ul
														class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
														<li class="active"><a href="#" class="blue"> <i
																class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
																本周
														</a></li>

														<li><a href="#"> <i
																class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																上周
														</a></li>

														<li><a href="#"> <i
																class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																本月
														</a></li>

														<li><a href="#"> <i
																class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																上月
														</a></li>
													</ul>
												</div>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div id="piechart-placeholder"></div>

												<div class="hr hr8 hr-double"></div>

												<div class="clearfix">
													<div class="grid3">
														<span class="grey"> <i
															class="ace-icon fa fa-calculator fa-2x blue"></i> 总出借阅量
														</span>
														<h4 class="bigger pull-right">255（册）</h4>
													</div>

													<div class="grid3">
														<span class="grey"> <i
															class="ace-icon fa fa-user fa-2x purple"></i> 教职工
														</span>
														<h4 class="bigger pull-right">54（册）</h4>
													</div>

													<div class="grid3">
														<span class="grey"> <i
															class="ace-icon fa  fa-graduation-cap fa-2x red"></i> 学生
														</span>
														<h4 class="bigger pull-right">201（册）</h4>
													</div>
												</div>
											</div>
											<!-- /.widget-main -->
										</div>
										<!-- /.widget-body -->
									</div>
									<!-- /.widget-box -->
								</div>
								<div class="col-sm-6">
									<div class="widget-box">
										<div class="widget-header">
											<h4 class="widget-title lighter smaller">
												<i class="ace-icon fa fa-comment blue"></i> 读者留言
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main no-padding">
												<div class="dialogs">
													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Alexa's Avatar"
																src="assets/images/avatars/avatar1.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="green">星期三</span>
															</div>

															<div class="name">
																<a href="#">潘潘</a>
															</div>
															<div class="text">希望增加有关web前端书籍。</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="John's Avatar"
																src="assets/images/avatars/avatar.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="blue">星期一</span>
															</div>

															<div class="name">
																<a href="#">蒙蒙</a>
															</div>
															<div class="text">希望增加有关web前端书籍。</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Jim's Avatar"
																src="assets/images/avatars/avatar4.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="grey">19/4/20</span>
															</div>

															<div class="name">
																<a href="#">老王</a>
															</div>
															<div class="text">希望增加有关web前端书籍。</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Alexa's Avatar"
																src="assets/images/avatars/avatar1.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="green">19/4/19</span>
															</div>

															<div class="name">
																<a href="#">潘潘</a>
															</div>
															<div class="text">希望增加有关web前端书籍。</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- /.widget-main -->
										</div>
										<!-- /.widget-body -->
									</div>
									<!-- /.widget-box -->
								</div>
								<!-- /.col -->
							</div>

							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">图书</span>
						管理系统 &copy; szr
					</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
							<i class="ace-icon fa fa-weixin light-green bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-qq text-primary bigger-150"></i>
					</a> <a href="#"> <i class="ace-icon fa fa-weibo orange bigger-150"></i>
					</a>
					</span>
				</div>
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
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
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<" + "/script>");
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

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$('.easy-pie-chart.percentage')
					.each(
							function() {
								var $box = $(this).closest('.infobox');
								var barColor = $(this).data('color')
										|| (!$box.hasClass('infobox-dark') ? $box
												.css('color')
												: 'rgba(255,255,255,0.95)');
								var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
										: '#E2E2E2';
								var size = parseInt($(this).data('size')) || 50;
								$(this)
										.easyPieChart(
												{
													barColor : barColor,
													trackColor : trackColor,
													scaleColor : false,
													lineCap : 'butt',
													lineWidth : parseInt(size / 10),
													animate : ace.vars['old_ie'] ? false
															: 1000,
													size : size
												});
							})

			$('.sparkline').each(
					function() {
						var $box = $(this).closest('.infobox');
						var barColor = !$box.hasClass('infobox-dark') ? $box
								.css('color') : '#FFF';
						$(this).sparkline('html', {
							tagValuesAttribute : 'data-values',
							type : 'bar',
							barColor : barColor,
							chartRangeMin : $(this).data('min') || 0
						});
					});

			//flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			//but sometimes it brings up errors with normal resize event handlers
			$.resize.throttleWindow = false;

			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});
			var data = [ {
				label : "马列主义、毛泽东思想",
				data : 10,
				color : "#68BC31"
			}, {
				label : "哲学",
				data : 24.5,
				color : "#2091CF"
			}, {
				label : "社会科学",
				data : 8.2,
				color : "#AF4E96"
			}, {
				label : "自然科学",
				data : 18.6,
				color : "#DA5430"
			}, {
				label : "综合性图书",
				data : 38.7,
				color : "#FEE074"
			} ]

			function drawPieChart(placeholder, data, position) {
				$.plot(placeholder, data, {
					series : {
						pie : {
							show : true,
							tilt : 0.8,
							highlight : {
								opacity : 0.25
							},
							stroke : {
								color : '#fff',
								width : 2
							},
							startAngle : 2
						}
					},
					legend : {
						show : true,
						position : position || "ne",
						labelBoxBorderColor : null,
						margin : [ -30, 15 ]
					},
					grid : {
						hoverable : true,
						clickable : true
					}
				})
			}
			drawPieChart(placeholder, data);

			/**
			we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			so that's not needed actually.
			 */
			placeholder.data('chart', data);
			placeholder.data('draw', drawPieChart);

			//pie chart tooltip example
			var $tooltip = $(
					"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
					.hide().appendTo('body');
			var previousPoint = null;

			placeholder.on('plothover', function(event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : "
								+ item.series['percent'] + '%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({
						top : pos.pageY + 10,
						left : pos.pageX + 10
					});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}

			});

			/////////////////////////////////////
			$(document).one('ajaxloadstart.page', function(e) {
				$tooltip.remove();
			});

			var d1 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d1.push([ i, Math.sin(i) ]);
			}

			var d2 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d2.push([ i, Math.cos(i) ]);
			}

			var d3 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.2) {
				d3.push([ i, Math.tan(i) ]);
			}

			var sales_charts = $('#sales-charts').css({
				'width' : '100%',
				'height' : '220px'
			});
			$.plot("#sales-charts", [ {
				label : "Domains",
				data : d1
			}, {
				label : "Hosting",
				data : d2
			}, {
				label : "Services",
				data : d3
			} ], {
				hoverable : true,
				shadowSize : 0,
				series : {
					lines : {
						show : true
					},
					points : {
						show : true
					}
				},
				xaxis : {
					tickLength : 0
				},
				yaxis : {
					ticks : 10,
					min : -2,
					max : 2,
					tickDecimals : 3
				},
				grid : {
					backgroundColor : {
						colors : [ "#fff", "#fff" ]
					},
					borderWidth : 1,
					borderColor : '#555'
				}
			});

			$('#recent-box [data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});

			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('.tab-content')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

			$('.dialogs,.comments').ace_scroll({
				size : 300
			});

			//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
			//so disable dragging when clicking on label
			var agent = navigator.userAgent.toLowerCase();
			if (ace.vars['touch'] && ace.vars['android']) {
				$('#tasks').on('touchstart', function(e) {
					var li = $(e.target).closest('#tasks li');
					if (li.length == 0)
						return;
					var label = li.find('label.inline').get(0);
					if (label == e.target || $.contains(label, e.target))
						e.stopImmediatePropagation();
				});
			}

			$('#tasks').sortable({
				opacity : 0.8,
				revert : true,
				forceHelperSize : true,
				placeholder : 'draggable-placeholder',
				forcePlaceholderSize : true,
				tolerance : 'pointer',
				stop : function(event, ui) {
					//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
					$(ui.item).css('z-index', 'auto');
				}
			});
			$('#tasks').disableSelection();
			$('#tasks input:checkbox').removeAttr('checked').on('click',
					function() {
						if (this.checked)
							$(this).closest('li').addClass('selected');
						else
							$(this).closest('li').removeClass('selected');
					});

			//show the dropdowns on top or bottom depending on window height and menu position
			$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
				var offset = $(this).offset();

				var $w = $(window)
				if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
					$(this).addClass('dropup');
				else
					$(this).removeClass('dropup');
			});

		})
	</script>
</body>

</html>