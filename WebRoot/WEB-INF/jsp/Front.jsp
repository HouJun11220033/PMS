<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>酒店后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/animate.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/simple-line-icons.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/font.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/app.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/pure-min.css">
<link rel="stylesheet" href="<%=path%>/css/normalize_checkbox.css">
<link rel="stylesheet" href="<%=path%>/css/style_checkbox.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/icon.css">
<link rel="stylesheet" type="text/css" href="xxcss/demo.css">
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.easyui.min.js"></script>
<style type="text/css">
.sss {
	margin-left: 70px;
}
</style>
</head>

<body>
	<div class="app app-header-fixed" id="app">
		<!-- navbar -->
		<div class="app-header navbar">

			<!-- navbar header -->
			<div class="navbar-header bg-dark">
				<button class="pull-right visible-xs dk" data-toggle="class:show" data-target=".navbar-collapse">
					<i class="glyphicon glyphicon-cog"></i>
				</button>
				<button class="pull-right visible-xs" data-toggle="class:off-screen" data-target=".app-aside"
					ui-scroll="app">
					<i class="glyphicon glyphicon-align-justify"></i>
				</button>
				<!-- brand -->
				<a href="#/" class="navbar-brand text-lt"> <img src="<%=path%>/images/logo.png" alt="."
					class="hide"> <span class="hidden-folded m-l-xs">后台管理系统</span>
				</a>
				<!-- / brand -->
			</div>
			<div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle clear"
						data-toggle="dropdown"> <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
								<img src="<%=path%>/images/a0.jpg" alt="..."> <i class="on md b-white bottom"></i>
						</span> <span class="hidden-sm hidden-md">JDroid</span> <b class="caret"></b>
					</a></li>
				</ul>
				<!-- / navbar right -->
			</div>
			<!-- / navbar collapse -->
		</div>
		<!-- / navbar -->
		<!-- menu -->
		<div class="app-aside hidden-xs bg-dark">
			<div class="aside-wrap">
				<div class="navi-wrap">
					<!-- user -->
					<div class="clearfix hidden-xs text-center hide" id="aside-user">
						<div class="dropdown wrapper">
							<a ui-sref="app.page.profile"> <span class="thumb-lg w-auto-folded avatar m-t-sm">
									<img src="<%=path%>/images/a0.jpg" class="img-full" alt="...">
							</span>
							</a> <a href="#" data-toggle="dropdown" class="dropdown-toggle hidden-folded"> <span
								class="clear"> <span class="block m-t-sm"> <strong class="font-bold text-lt">John.Smith</strong>
										<b class="caret"></b>
								</span> <span class="text-muted text-xs block">Art Director</span>
							</span>
							</a>

							<!-- / dropdown -->
						</div>
						<div class="line dk hidden-folded"></div>
					</div>
					<!-- / user -->
					<!-- 左侧树形菜单 -->
					<nav ui-nav class="navi">
						<ul class="nav">
							<li class="hidden-folded padder m-t m-b-sm text-muted text-xs"><span
								translate="aside.nav.HEADER">导航栏</span></li>
							<li ui-sref-active="active"><a id="nav1" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">登记入住</span></a></li>
							<li ui-sref-active="active"><a id="nav2" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">登记退房</span></a></li>
							<li ui-sref-active="active"><a id="nav3" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">订单管理</span></a></li>
							<li ui-sref-active="active"><a id="nav4" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">客房状态</span></a></li>
							<li ui-sref-active="active"><a id="nav5" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">客人信息</span></a></li>
							<li ui-sref-active="active"><a id="nav6" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">历史查看</span></a></li>
							<li ui-sref-active="active"><a id="nav7" href="#"> <em
									class="glyphicon glyphicon-calendar icon text-info-dker"></em> <span class="font-bold"
									translate="aside.nav.CALENDAR">个人账号</span></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- / menu -->
		<!-- content -->

		<div>
			<div class="app-content">

				<a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside"></a>
				<div style="margin: 20px 0;"></div>

				<div id="con1" style="display: block">
					<form class="pure-form pure-form-stacked">
						<fieldset>
							<label for="email">房间号</label> <input id="email" type="email" placeholder="房间号"
								style="width: 300px;"> <label for="email">退还时间</label>
							<div class="time">
								<input class="easyui-datetimebox" value="10/11/2012 2:3:56"
									style="margin-top: 17px; margin-bottom: 151px;">
							</div>
							<label for="email">退还金额</label> <input id="email" type="email" placeholder="退还金额"
								style="width: 300px;"> <label for="email">备注</label>
							<textarea name="MSG" cols=40 rows=4>
	
								</textarea>
							<button type="submit" class="pure-button pure-button-primary">确认退房</button>
						</fieldset>
					</form>
				</div>



				<div id="con2" style="display: none">
					<form class="pure-form pure-form-stacked">
						<fieldset>
							<table>
								<tr>
									<td><label for="email">姓名</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="password">身份证号</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="姓名" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="身份证号" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">性别</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">总人数</label></td>
								</tr>
								<tr>
									<td><div class="sexBt">
											<input type="radio" name="genfer" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="radio" name="genfer" value="女" />女
										</div></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="总人数" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">入住时间</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">离开时间</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="入住时间" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="离开时间" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">押金数目</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">入住房间号</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="押金数目" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="入住房间号" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">备注</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="备注" style="width: 300px;"></td>
								</tr>
							</table>
							<button type="submit" class="pure-button pure-button-primary">确认入住</button>
						</fieldset>
					</form>
				</div>

				<div id="con3" style="display: none">
					<form class="pure-form pure-form-stacked">
						<fieldset>
							<table>
								<tr>
									<td><label for="email">姓名</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="password">身份证号</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">备注</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="姓名" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="身份证号" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="备注" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">性别</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">总人数</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">备注</label></td>
								</tr>
								<tr>
									<td><div class="sexBt">
											<input type="radio" name="genfer" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="radio" name="genfer" value="女" />女
										</div></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="总人数" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="备注" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">入住时间</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">离开时间</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><button type="submit" class="pure-button pure-button-primary">确认订单</button></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="入住时间" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="离开时间" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">押金数目</label></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><label for="email">入住房间号</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="押金数目" style="width: 300px;"></td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td><input id="email" type="email" placeholder="入住房间号" style="width: 300px;"></td>
								</tr>
								<tr>
									<td><label for="email">备注</label></td>
								</tr>
								<tr>
									<td><input id="email" type="email" placeholder="备注" style="width: 300px;"></td>
								</tr>
							</table>
							<!--<div class="riht">
									<label for="email">备注</label>
									<input id="email" type="email" placeholder="备注" style="width:300px;">
									<label for="email">备注</label>
									<input id="email" type="email" placeholder="备注" style="width:300px;">
									<textarea name="MSG" cols=40 rows=4>
	
									</textarea>
									<button type="submit" class="pure-button pure-button-primary">确认订单</button>
								</div>-->
						</fieldset>
					</form>
				</div>
				<div id="con4" style="display: none"></div>
				<div id="con5" style="display: none"></div>
				<div id="con6" style="display: none"></div>
				<div id="con7" style="display: none"></div>
			</div>
		</div>

		<script>
			$('#nav1').on('click', function() {
				$('#con1').css({
					display : 'block',
				})
				$('#con2').css({
					display : 'none',
				})
				$('#con3').css({
					display : 'none',
				})
				$('#con4').css({
					display : 'none',
				})
				$('#con5').css({
					display : 'none',
				})
				$('#con6').css({
					display : 'none',
				})
				$('#con7').css({
					display : 'none',
				})
				$('#nav1').css({
					color : 'black',
				})
				$('#nav2').css({
					color : 'white',
				})
				$('#nav3').css({
					color : 'white',
				})
				$('#nav4').css({
					color : 'white',
				})
				$('#nav5').css({
					color : 'white',
				})
				$('#nav6').css({
					color : 'white',
				})
				$('#nav7').css({
					color : 'white',
				})
			})
			$('#nav2').on('click', function() {
				$('#con1').css({
					display : 'none',
				})
				$('#con2').css({
					display : 'block',
				})
				$('#con3').css({
					display : 'none',
				})
				$('#con4').css({
					display : 'none',
				})
				$('#con5').css({
					display : 'none',
				})
				$('#con6').css({
					display : 'none',
				})
				$('#con7').css({
					display : 'none',
				})
				$('#nav1').css({
					color : 'white',
				})
				$('#nav2').css({
					color : 'black',
				})
				$('#nav3').css({
					color : 'white',
				})
				$('#nav4').css({
					color : 'white',
				})
				$('#nav5').css({
					color : 'white',
				})
				$('#nav6').css({
					color : 'white',
				})
				$('#nav7').css({
					color : 'white',
				})
			})
			$('#nav3').on('click', function() {
				$('#con1').css({
					display : 'none',
				})
				$('#con2').css({
					display : 'none',
				})
				$('#con3').css({
					display : 'block',
				})
				$('#con4').css({
					display : 'none',
				})
				$('#con5').css({
					display : 'none',
				})
				$('#con6').css({
					display : 'none',
				})
				$('#con7').css({
					display : 'none',
				})
				$('#nav1').css({
					color : 'white',
				})
				$('#nav2').css({
					color : 'white',
				})
				$('#nav3').css({
					color : 'black',
				})
				$('#nav4').css({
					color : 'white',
				})
				$('#nav5').css({
					color : 'white',
				})
				$('#nav6').css({
					color : 'white',
				})
				$('#nav7').css({
					color : 'white',
				})
			})
			$('#nav4').on('click', function() {
				$('#con1').css({
					display : 'none',
				})
				$('#con2').css({
					display : 'none',
				})
				$('#con3').css({
					display : 'none',
				})
				$('#con4').css({
					display : 'block',
				})
				$('#con5').css({
					display : 'none',
				})
				$('#con6').css({
					display : 'none',
				})
				$('#con7').css({
					display : 'none',
				})
				$('#nav1').css({
					color : 'white',
				})
				$('#nav2').css({
					color : 'white',
				})
				$('#nav3').css({
					color : 'white',
				})
				$('#nav4').css({
					color : 'black',
				})
				$('#nav5').css({
					color : 'white',
				})
				$('#nav6').css({
					color : 'white',
				})
				$('#nav7').css({
					color : 'white',
				})
			})
			$('#nav5').on('click', function() {
				$('#con1').css({
					display : 'none',
				})
				$('#con2').css({
					display : 'none',
				})
				$('#con3').css({
					display : 'none',
				})
				$('#con4').css({
					display : 'none',
				})
				$('#con5').css({
					display : 'block',
				})
				$('#con6').css({
					display : 'none',
				})
				$('#con7').css({
					display : 'none',
				})
				$('#nav1').css({
					color : 'white',
				})
				$('#nav2').css({
					color : 'white',
				})
				$('#nav3').css({
					color : 'white',
				})
				$('#nav4').css({
					color : 'white',
				})
				$('#nav5').css({
					color : 'black',
				})
				$('#nav6').css({
					color : 'white',
				})
				$('#nav7').css({
					color : 'white',
				})
			})
			$('#nav6').on('click', function() {
				$('#con1').css({
					display : 'none',
				})
				$('#con2').css({
					display : 'none',
				})
				$('#con3').css({
					display : 'none',
				})
				$('#con4').css({
					display : 'none',
				})
				$('#con5').css({
					display : 'none',
				})
				$('#con6').css({
					display : 'block',
				})
				$('#con7').css({
					display : 'none',
				})
				$('#nav1').css({
					color : 'white',
				})
				$('#nav2').css({
					color : 'white',
				})
				$('#nav3').css({
					color : 'white',
				})
				$('#nav4').css({
					color : 'white',
				})
				$('#nav5').css({
					color : 'white',
				})
				$('#nav6').css({
					color : 'black',
				})
				$('#nav7').css({
					color : 'white',
				})
			})
			$('#nav7').on('click', function() {
				$('#con1').css({
					display : 'none',
				})
				$('#con2').css({
					display : 'none',
				})
				$('#con3').css({
					display : 'none',
				})
				$('#con4').css({
					display : 'none',
				})
				$('#con5').css({
					display : 'none',
				})
				$('#con6').css({
					display : 'none',
				})
				$('#con7').css({
					display : 'block',
				})
				$('#nav1').css({
					color : 'white',
				})
				$('#nav2').css({
					color : 'white',
				})
				$('#nav3').css({
					color : 'white',
				})
				$('#nav4').css({
					color : 'white',
				})
				$('#nav5').css({
					color : 'white',
				})
				$('#nav6').css({
					color : 'white',
				})
				$('#nav7').css({
					color : 'black',
				})
			})
		</script>
		<script>
			function submitForm() {
				$('#ff').form('submit');
			}

			function clearForm() {
				$('#ff').form('clear');
			}
		</script>
	</div>

	<script>
		function submitForm() {
			$('#ff').form('submit');
		}

		function clearForm() {
			$('#ff').form('clear');
		}
	</script>

	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/jquery/bootstrap.js"></script>
	<script type="text/javascript">
		+function($) {
			$(function() {
				// class
				$(document)
						.on(
								'click',
								'[data-toggle^="class"]',
								function(e) {
									e && e.preventDefault();
									console.log('abc');
									var $this = $(e.target), $class, $target, $tmp, $classes, $targets;
									!$this.data('toggle')
											&& ($this = $this
													.closest('[data-toggle^="class"]'));
									$class = $this.data()['toggle'];
									$target = $this.data('target')
											|| $this.attr('href');
									$class && ($tmp = $class.split(':')[1])
											&& ($classes = $tmp.split(','));
									$target && ($targets = $target.split(','));
									$classes
											&& $classes.length
											&& $
													.each(
															$targets,
															function(index,
																	value) {
																if ($classes[index]
																		.indexOf('*') !== -1) {
																	var patt = new RegExp(
																			'\\s'
																					+ $classes[index]
																							.replace(
																									/\*/g,
																									'[A-Za-z0-9-_]+')
																							.split(
																									' ')
																							.join(
																									'\\s|\\s')
																					+ '\\s',
																			'g');
																	$($this)
																			.each(
																					function(
																							i,
																							it) {
																						var cn = ' '
																								+ it.className
																								+ ' ';
																						while (patt
																								.test(cn)) {
																							cn = cn
																									.replace(
																											patt,
																											' ');
																						}
																						it.className = $
																								.trim(cn);
																					});
																}
																($targets[index] != '#')
																		&& $(
																				$targets[index])
																				.toggleClass(
																						$classes[index])
																		|| $this
																				.toggleClass($classes[index]);
															});
									$this.toggleClass('active');
								});

				// collapse nav
				$(document).on(
						'click',
						'nav a',
						function(e) {
							var $this = $(e.target), $active;
							$this.is('a') || ($this = $this.closest('a'));

							$active = $this.parent().siblings(".active");
							$active
									&& $active.toggleClass('active').find(
											'> ul:visible').slideUp(200);

							($this.parent().hasClass('active') && $this.next()
									.slideUp(200))
									|| $this.next().slideDown(200);
							$this.parent().toggleClass('active');

							$this.next().is('ul') && e.preventDefault();

							setTimeout(function() {
								$(document).trigger('updateNav');
							}, 300);
						});
			});
		}(jQuery);
	</script>
</body>

</html>
