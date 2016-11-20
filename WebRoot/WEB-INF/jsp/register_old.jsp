<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
<link rel="stylesheet" href="<%=path%>/css/register.css" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/check.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.1.js"></script>
</head>
<body>
	<fieldset>
		<legend>表单验证</legend>
		<form id="userForm" name="user" method="post" action="submitData">
			<table>
				<tr>
					<td>用 户 名</td>
					<td><input name="username" type="text" id="txtUser" onBlur="return checkForm()"></input></td>
					<td><span id="tips_username">* 用户名由3-10位字符组成</span></td>
				</tr>
				<tr>
					<td>密&nbsp;&nbsp;码</td>
					<td><input name="password" type="password" id="txtPwd" onBlur="checkForm()"></input></td>
					<td><span id="tips_password">* 密码由6-18位字符组成，且必须包含字母、数字和标点符号</span></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input name="pwdrepeat" type="password" id="txtRpt" onBlur="return checkForm()"></input></td>
					<td><span id="tips_repeat">* 请再次输入你的密码</span></td>
				</tr>
				<tr>
					<td>用户类型</td>
					<td><select name="usertype" id="selUser" onBlur="return checkForm()">
							<option>请选择</option>
							<option value="前台">前台</option>
							<option value="经理">经理</option>
					</select></td>
					<td><span id="tips_usertype">* 请选择用户类型</span></td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp;别</td>
					<td><input name="gender" type="radio" value="男" onClick="return checkGender()" />男 <input
						name="gender" type="radio" value="女" onClick="return checkGender()" />女</td>
					<td><span id="tips_gender">* 请选择你的性别</span></td>
				</tr>
				<tr>
					<td>身份证号码：</td>
					<td><input type="text" name="idCardNum" id="idnumber" onBlur="return checkIdnumber()" /></td>
					<td><span id="idcheck">* 请输入18位身份证号码</span></td>
				</tr>
				<tr>
					<td>手机号码：</td>
					<td><input type="text" name="phoneNum" id="phnumber" onBlur="return checkphnumber()" /></td>
					<td><span id="phcheck">* 请输入11位电话号码</span></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" name="submit" value="提交" /> <input
						type="reset" name="reset" value="重置" /></td>
				</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>