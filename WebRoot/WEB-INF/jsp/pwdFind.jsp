<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>密码找回</title>
<link href="<%=path%>/css/pwdFind.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h3>密码找回</h3>
	<div id="body">
		请输入你的手机号码：<input type="text" name="phnumber" / id="phnum"><br /> 请输入你的身份证号码：<input
			type="text" name="idnumber" id="idnum" /><br /> <input type="submit" name="submit" value="提交"
			onclick="show()" />
		<script>
			//window.alert = function(){
			alertFram.style.marginTop = "500px";
			//}
			function show() {
				//if()
				alert("你的密码是：");
				//else{
				//alert("该数据不存在。")
				//}
			}
		</script>
	</div>
</body>
</html>