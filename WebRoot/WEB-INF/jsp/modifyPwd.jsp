<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码找回</title>
<link rel="stylesheet" href="<%=path%>/css/style.css">
<link rel="stylesheet" href="<%=path%>/css/iconfont.css">
<script src="<%=path%>/js/jquery-1.7.2.min.js"></script>
</head>

<body>
	<div class="login-box">
		<div class="box-con tran">
			<div class="login-con f-l">
				<div class="form-group">
					<input type="text" placeholder="手机号码"> <span
						class="error-notic">邮箱/手机号码不正确</span>
				</div>
				<div class="form-group">
					<input type="password" placeholder="身份证号"> <span
						class="error-notic">密码不正确</span>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup a-tag tran blue-border">密码重置<em
						class="iconfont tran"></em></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-reset a-tag tran">返回登陆页面<em
						class="iconfont tran"></em></a>
				</div>
				<div class="form-group"></div>
			</div>
		</div>
	</div>
	<div style="height: 80px;"></div>
	<div class="login-footer">
		<p>Copyright© 2016-2017 Powered by</p>
		<p>京ICP备XXXXXX</p>
	</div>
</body>
</html>