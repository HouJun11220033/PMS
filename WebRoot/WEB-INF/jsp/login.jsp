<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<!-- Custom Theme files -->
<link href="<%=basePath%>/css/style_login_demo2.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


</head>
<body>
<div class="login">
	<h2>登陆</h2>
	<div class="login-top">
		<h1>LOGIN FORM</h1>
		<form action="login" method="post">
			<input type="text" name="username" value="User Id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Id';}">
			<input type="password" name="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
	    </form>
	    <div class="forgot">
	    	<a href="find">forgot Password</a>
	    	<input type="submit" name="login" value="Login" >
	    </div>
	</div>
	<div class="login-bottom">
		<h3>New User &nbsp;<a href="register">Register</a>&nbsp Here</h3>
	</div>
</div>	
<div class="copyright">
	<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - More Templates <a href="" target="_blank" title=""></a></p>
</div>


</body>
</html>