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
	<div class="container w-xl w-auto-xs" ng-init="app.settings.container = false;">
		<a href class="navbar-brand block m-t">{{app.name}}</a>
		<div class="m-b-lg">
			<div class="wrapper text-center">
				<strong>Input your email to reset your password</strong>
			</div>
			<form name="reset" ng-init="isCollapsed=true">
				<div class="list-group list-group-sm">
					<div class="list-group-item">
						<input type="email" placeholder="Email" ng-model="email" class="form-control no-border"
							required>
					</div>
				</div>
				<button type="submit" ng-disabled="reset.$invalid" class="btn btn-lg btn-primary btn-block"
					ng-click="isCollapsed = !isCollapsed">Send</button>
			</form>
			<div collapse="isCollapsed" class="m-t">
				<div class="alert alert-success">
					<p>
						A reset link sent to your email address, please check it in 7 days. <a ui-sref="access.signin"
							class="btn btn-sm btn-success">Sign in</a>
					</p>
				</div>
			</div>
		</div>
		<div class="text-center" ng-include="'tpl/blocks/page_footer.html'"></div>
	</div>
</body>
</html>