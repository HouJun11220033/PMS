<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Slick Login</title>
<meta name="description" content="slick Login">
<meta name="author" content="Webdesigntuts+">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/style.css" />
<script type="text/javascript" src="<%=path%>/js/placeholder.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>

</head>
<body>
	<form id="slick-login">
		<label for="username">username</label><input type="text"
			name="username" class="placeholder" placeholder="me@tutsplus.com">
		<label for="password">password</label><input type="password"
			name="password" class="placeholder" placeholder="password"> <input
			type="submit" value="Log In">
	</form>
</body>
</html>