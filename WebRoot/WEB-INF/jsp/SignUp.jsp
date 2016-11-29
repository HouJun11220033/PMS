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
<link rel="stylesheet" href="<%=path%>css/animate.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>css/simple-line-icons.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>css/font.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>css/app.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>css/pure-min.css">
<link rel="stylesheet" href="<%=path%>css/normalize_checkbox.css">
<link rel="stylesheet" href="<%=path%>css/style_checkbox.css" type="text/css" />
</head>

<body>
	<div class="container w-xxl w-auto-xs" ng-controller="SignupFormController"
		ng-init="app.settings.container = false;">
		<a href class="navbar-brand block m-t">{{app.name}}</a>
		<div class="m-b-lg">
			<div class="wrapper text-center">
				<strong>Sign up to find interesting thing</strong>
			</div>
			<form name="form" class="form-validation">
				<div class="text-danger wrapper text-center" ng-show="authError">{{authError}}</div>
				<div class="list-group list-group-sm">
					<div class="list-group-item">
						<input placeholder="Name" class="form-control no-border" ng-model="user.name" required>
					</div>
					<div class="list-group-item">
						<input type="email" placeholder="Email" class="form-control no-border" ng-model="user.email"
							required>
					</div>
					<div class="list-group-item">
						<input type="password" placeholder="Password" class="form-control no-border"
							ng-model="user.password" required>
					</div>
				</div>
				<div class="checkbox m-b-md m-t-none">
					<label class="i-checks"> <input type="checkbox" ng-model="agree" required> <i></i>
						Agree the <a href>terms and policy</a>
					</label>
				</div>
				<button type="submit" class="btn btn-lg btn-primary btn-block" ng-click="signup()"
					ng-disabled='form.$invalid'>Sign up</button>
				<div class="line line-dashed"></div>
				<p class="text-center">
					<small>Already have an account?</small>
				</p>
				<a ui-sref="access.signin" class="btn btn-lg btn-default btn-block">Sign in</a>
			</form>
		</div>
		<div class="text-center" ng-include="'tpl/blocks/page_footer.html'"></div>
	</div>
</body>
</html>