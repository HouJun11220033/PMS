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
<meta charset="utf-8" />
<title></title>
<link href="<%=path%>/css/login.css" rel="stylesheet" type="text/css" />
<!-- <link href="<%=path%>/css/login.css" rel="stylesheet" type="text/css" /> -->
</head>
<body>
	<div id="reg">
		用户名：<input class="tex" type="text" name="username" /><br />
		密&nbsp;码：<input class="tex" type="text" name="password" /><br />
		<div id="but">
			<input type="button" name="register" value="登录" /> <input
				type="button" name="cancel" / value="取消"> <a id="a1"
				href="#">注册</a>|<a href="#">找回</a>
		</div>
	</div>
</body>
</html>
