<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.css"/>
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.1.js"></script>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal" action="" method="post">
				<div class="control-group">
					<label class="control-label" for="inputEmail">新密码</label>
					
					<div class="controls">
						<input id="inputEmail" name="newPwd" type="text" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">请再输入一遍</label>
					<div class="controls">
						<input id="inputPassword" name="repeatPwd" type="text" />
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<br /> <button class="btn" type="submit">确定</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

</body>


</html>
