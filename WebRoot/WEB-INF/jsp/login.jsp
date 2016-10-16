<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link href="<%=path%>/css/login.css" rel="stylesheet" type="text/css" />
<!-- <link href="<%=path%>/css/bootstrap.css" rel="stylesheet" type="text/css" /> -->
<!-- <script type="text/javascript" src="<%=path%>/js/bootstrap.js>"></script> -->

</head>
<body>
	<!-- 	<script type="text/javascript"> -->
	<!-- 		//添加用户   -->
	<!-- 		function login() { -->
	<!-- 			var form = document.forms[0]; -->
	<!-- 			form.action = "/pms/login"; -->
	<!-- 			//form.action = "${pageContext.request.contextPath}/user/addUser2";   -->
	<!-- 			//form.action = "${pageContext.request.contextPath}/user/addUser3";   -->
	<!-- 			form.method = "post"; -->
	<!-- 			form.submit(); -->
	<!-- 		} -->
	</script>
	<div id="reg">
		<form action="login" method="post">
			<a href="pms/login">用户名：</a> <input class="tex" type="text" name="username" /> <br /> 密&nbsp;码：<input
				class="tex" type="text" name="password" /> <br />
			<div id="btn">
				<input type="submit" name="login" value="登录"> <input type="button" name="cancel"
					/ value="取消"> <a id="a1" href="register">注册</a>|<a href="#">找回</a>
		</form>

	</div>
	</div>
</body>
</html>
