<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>XX酒店</title>
</head>
<link href="<%=path%>/css/front.css" rel="stylesheet" type="text/css" />

<body>
	<script>
		//alert("欢迎使用，X小姐（先生）。")
	</script>
	<div id="head">
		当前登录：XXX 前台 <a id="logout" href="登录页.html">注销</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
			id="time"></span>
	</div>
	<script>
		setInterval(function() {
			var naw = new Date;
			var year = naw.getFullYear();
			var month = naw.getMonth();
			var day = naw.getDate();
			var week = naw.getDay();
			var hours = naw.getHours();
			var minutes = naw.getMinutes();
			var seconds = naw.getSeconds();
			if (month < 10) {
				month = month + 1;
			}
			if (minutes < 10) {
				minutes = minutes + 1;
			}
			if (seconds < 10) {
				seconds = seconds + 1;
			}
			switch (week) {
			case 0:
				week = "日";
				break;
			case 1:
				week = "一";
				break;
			case 2:
				week = "二";
				break;
			case 3:
				week = "三";
				break;
			case 4:
				week = "四";
				break;
			case 5:
				week = "五";
				break;
			case 6:
				week = "六";
				break;
			}
			document.getElementById("time").innerHTML = year + "年" + month
					+ "月" + day + "日&nbsp周" + week + "&nbsp" + hours + ":"
					+ minutes + ":" + seconds;
		}, 1000);
	</script>
	<script src="js/jquery-1.11.3.min.js"></script>
	<div id="log">
		<div id="img">这里是酒店log</div>
		<div id="hname">这里是酒店名称</div>
	</div>
	<div id="navigation">
		<a id="nav1" href="#" style="color: black;">登记入住</a><br /> <a
			id="nav2" href="#">登记退房</a><br /> <a id="nav3" href="#">订单管理</a><br />
		<a id="nav4" href="#">客房状态</a><br /> <a id="nav5" href="#">客人信息</a><br />
		<a id="nav6" href="#">历史查看</a><br /> <a id="nav7" href="#">个人账号</a>
	</div>
	<div id="body0">
		<div id="body1" style="display: block;">
			<table style="text-align: left;">
				<tr>
					<th>姓名：</th>
					<th><input type="text" name="name" id="name" value="" /><input
						type="submit" name="add" id="add" value="添加" /></th>
				<tr>
					<th>身份证号：</th>
					<th><input type="text" name="idnumber" id="idnumber" value="" /><input
						type="submit" name="add" id="add" value="添加" /></th>
				</tr>
				<tr>
					<th>性别：</th>
					<th><input type="radio" name="genfer" value="男" />男&nbsp;&nbsp;<input
						type="radio" name="genfer" value="女" />女&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="submit" name="add" id="add" value="添加" /></th>
				</tr>
				<tr>
					<th>总人数：</th>
					<th><input type="text" name="pnumber" id="pnumber" value="" /></th>
				</tr>
				<tr>
					<th>入住时间：</th>
					<th><input type="text" name="time" id="time" value="" /></th>
				</tr>
				<tr>
					<th>离开时间：</th>
					<th><input type="text" name="time" id="time" value="" /></th>
				</tr>
				<tr>
					<th>押金数目：</th>
					<th><input type="text" name="monay" id="monay" value="" /></th>
				</tr>
				<tr>
					<th>入住房间号：</th>
					<th><input type="text" name="rnumber" id="rnumber" value="" /></th>
				</tr>
				<tr>
					<th>备注：</th>
					<th><textarea name="" rows="" cols="50"></textarea></th>
				</tr>
			</table>
			<br /> <input type="submit" name="" id="" value="确认入住" />
		</div>
		<div id="body2" style="display: none;">
			<table style="text-align: left;">
				<tr>
					<th>房间号：</th>
					<th><input type="text" name="rnumber" id="rnumber" value="" /></th>
				</tr>
				<tr>
					<th>退房时间：</th>
					<th><input type="text" name="time" id="time" value="" /></th>
				</tr>
				<tr>
					<th>退还金额：</th>
					<th><input type="text" name="rmonay" id="rmonay" value="" /></th>
				</tr>
				<tr>
					<th>备注：</th>
					<th><textarea name="" rows="" cols="50"></textarea></th>
				</tr>
			</table>
			<br /> <input type="submit" name="" id="" value="确认退房" />
		</div>
		<div id="body3" style="display: none;">
			<table style="text-align: left;">
				<tr>
					<th>订单号：</th>
					<th><input type="text" name="onumber" id="onumber"
						value="00000001" readonly="readonly" /></th>
					<th>入住房间号：</th>
					<th><input type="text" name="runmber" id="runmber" value="" /></th>
				</tr>
				<tr>
					<th>订单来源：</th>
					<th><input type="text" name="osource" id="osource" value="携程网"
						readonly="readonly" /></th>
					<th>备注：</th>
					<th><textarea name="" rows="" cols="35"></textarea></th>
				</tr>
				<tr>
					<th>姓名：</th>
					<th><input type="text" name="name" id="name" value="李明"
						readonly="readonly" /></th>
				</tr>
				<tr>
					<th>性别：</th>
					<th><input type="text" name="gender" id="gender" value="男"
						readonly="readonly" /></th>
				</tr>
				<tr>
					<th>手机号码：</th>
					<th><input type="text" name="pnumber" id="pnumber"
						value="13611111111" readonly="readonly" /></th>
				<tr>
					<th>人数：</th>
					<th><input type="text" name="penumber" id="penumber" value="1"
						readonly="readonly" /></th>
				</tr>
				<tr>
					<th>房间类型：</th>
					<th><input type="text" name="rtype" id="rtype" value="单人间"
						readonly="readonly" /></th>
				</tr>
				<tr>
					<th>入住日期：</th>
					<th><input type="text" name="time" id="time" value="2016.11.1"
						readonly="readonly" /></th>
				</tr>
				<tr>
					<th>离开日期：</th>
					<th><input type="text" name="time" id="time" value="2016.11.3"
						readonly="readonly" /></th>
				</tr>
				<tr>
					<th>备注：</th>
					<th><textarea name="" rows="" cols="35" readonly="readonly"></textarea></th>
				</tr>
			</table>
			<br /> <input type="submit" name="" id="" value="确认订单" />
		</div>
		<div id="body4" style="display: none;">
			<div style="float: right;">
				<input type="search" name="rtext" id="rtext" value="" /> <input
					type="submit" name="rsearch" id="rsearch" value="查看" />
			</div>
			<table>
				<tr>
					<td id="001"></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>001</th>
					<th>002</th>
					<th>003</th>
					<th>004</th>
					<th>005</th>
					<th>006</th>
					<th>007</th>
					<th>008</th>
					<th>009</th>
					<th>010</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>011</th>
					<th>012</th>
					<th>013</th>
					<th>014</th>
					<th>015</th>
					<th>016</th>
					<th>017</th>
					<th>018</th>
					<th>019</th>
					<th>020</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>021</th>
					<th>022</th>
					<th>023</th>
					<th>024</th>
					<th>025</th>
					<th>026</th>
					<th>027</th>
					<th>028</th>
					<th>029</th>
					<th>030</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>031</th>
					<th>032</th>
					<th>033</th>
					<th>034</th>
					<th>035</th>
					<th>036</th>
					<th>037</th>
					<th>038</th>
					<th>039</th>
					<th>040</th>
				</tr>
			</table>
			<br /> <input type="submit" name="" id="" value="刷新" />
		</div>
		<div id="body5" style="display: none;">
			<div style="float: right;">
				<input type="search" name="ptext" id="ptext" value="" /> <input
					type="submit" name="psearch" id="psearch" value="查找" />
			</div>
			<div style="width: 60%; height: 350px; border: 1px solid black;">
				<div id="idcard"
					style="width: 70%; height: 200px; border: 1px solid black; margin: auto; margin-top: 10px;">

				</div>
				<table style="margin: auto; margin-top: 10px;">
					<tr>
						<th>房间号：</th>
						<th><input type="text" name="rnumber" id="rnumber" value=""
							readonly="readonly" /></th>
					</tr>
					<tr>
						<th>入住时间：</th>
						<th><input type="text" name="itime" id="itime" value=""
							readonly="readonly" /></th>
					</tr>
					<tr>
						<th>离开时间：</th>
						<th><input type="text" name="otime" id="otime" value=""
							readonly="readonly" /></th>
					</tr>
				</table>
			</div>
			<br /> <input type="submit" name="print" id="print" value="打印" />
		</div>
		<div id="body6" style="display: none;">
			<div style="float: right;">
				<input type="text" name="year" id="year" value=""
					style="width: 50px;">-年 <input type="text" name="month"
					id="month" value="" style="width: 50px;" />-月<input type="text"
					name="day" id="day" value="" style="width: 50px;" />-日 <input
					type="submit" name="psearch" id="psearch" value="检索" />
			</div>
			<br /> <br />
			<div
				style="width: 80%; height: 300px; border: 1px solid black; clear: both;">

			</div>
			<br /> <input type="submit" name="" id="" value="打印" />
		</div>
		<div id="body7" style="display: none;">
			<table style="text-align: left;">
				<tr>
					<th><br /></th>
				</tr>
				<tr>
					<th><br /></th>
				</tr>
				<tr>
					<th>工号：</th>
					<th><input type="text" name="jnumber" id="jnumber"
						value="00001" readonly="readonly"></th>
				</tr>
				<tr>
					<th><br /></th>
				</tr>
				<tr>
					<th>类型：</th>
					<th><input type="text" name="jtype" id="jtype" value="前台"
						readonly="readonly"></th>
				</tr>
				<tr>
					<th><br /></th>
				</tr>
				<tr>
					<th>姓名：</th>
					<th><input type="text" name="name3" id="name3" value="李明"><input
						type="submit" name="nrevise" id="nrevise" value="修改" /></th>
				</tr>
				<tr>
					<th><br /></th>
				</tr>
				<tr>
					<th>密码：</th>
					<th><input type="password" name="password" id="password"
						value="123456"><input type="submit" name="previse"
						id="previse" value="修改" /></th>
				</tr>
			</table>
		</div>
	</div>
	<script>
		$('#nav1').on('click', function() {
			$('#body1').css({
				display : 'block',
			})
			$('#body2').css({
				display : 'none',
			})
			$('#body3').css({
				display : 'none',
			})
			$('#body4').css({
				display : 'none',
			})
			$('#body5').css({
				display : 'none',
			})
			$('#body6').css({
				display : 'none',
			})
			$('#body7').css({
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
			$('#body1').css({
				display : 'none',
			})
			$('#body2').css({
				display : 'block',
			})
			$('#body3').css({
				display : 'none',
			})
			$('#body4').css({
				display : 'none',
			})
			$('#body5').css({
				display : 'none',
			})
			$('#body6').css({
				display : 'none',
			})
			$('#body7').css({
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
			$('#body1').css({
				display : 'none',
			})
			$('#body2').css({
				display : 'none',
			})
			$('#body3').css({
				display : 'block',
			})
			$('#body4').css({
				display : 'none',
			})
			$('#body5').css({
				display : 'none',
			})
			$('#body6').css({
				display : 'none',
			})
			$('#body7').css({
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
			$('#body1').css({
				display : 'none',
			})
			$('#body2').css({
				display : 'none',
			})
			$('#body3').css({
				display : 'none',
			})
			$('#body4').css({
				display : 'block',
			})
			$('#body5').css({
				display : 'none',
			})
			$('#body6').css({
				display : 'none',
			})
			$('#body7').css({
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
			$('#body1').css({
				display : 'none',
			})
			$('#body2').css({
				display : 'none',
			})
			$('#body3').css({
				display : 'none',
			})
			$('#body4').css({
				display : 'none',
			})
			$('#body5').css({
				display : 'block',
			})
			$('#body6').css({
				display : 'none',
			})
			$('#body7').css({
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
			$('#body1').css({
				display : 'none',
			})
			$('#body2').css({
				display : 'none',
			})
			$('#body3').css({
				display : 'none',
			})
			$('#body4').css({
				display : 'none',
			})
			$('#body5').css({
				display : 'none',
			})
			$('#body6').css({
				display : 'block',
			})
			$('#body7').css({
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
			$('#body1').css({
				display : 'none',
			})
			$('#body2').css({
				display : 'none',
			})
			$('#body3').css({
				display : 'none',
			})
			$('#body4').css({
				display : 'none',
			})
			$('#body5').css({
				display : 'none',
			})
			$('#body6').css({
				display : 'none',
			})
			$('#body7').css({
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
		$('#nrevise').on('click', function() {
			alert('信息修改成功。');
		})
		$('#previse').on('click', function() {
			alert('信息修改成功。');
		})
	</script>
	<div id="foot"></div>
</body>

</html>