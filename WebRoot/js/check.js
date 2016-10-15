function checkGender() {
	var genderNum = document.getElementsByName("gender");
	var gender = "";
	for ( var i = 0; i < genderNum.length; ++i) {
		if (genderNum[i].checked)
			gender = genderNum[i].value;
	}
	if (gender == "") {
		document.getElementById("tips_gender").innerHTML = "<em style='color:#FF0000'>至少选择其中一项</em>";
		return false;
	} else {
		document.getElementById("tips_gender").innerHTML = "OK！";
	}
}
function checkForm() {
	if (document.getElementById("txtUser").value.length < 6
			|| document.getElementById("txtUser").value.length > 18) {
		document.getElementById("tips_username").innerHTML = "<em style='color:#FF0000'>用户名由6-18个字符组成</em>";
		return false;
	} else {
		document.getElementById("tips_username").innerHTML = "OK！";
	}
	var reg = /[^A-Za-z0-9_]+/;
	var regs = /^[a-zA-Z0-9_\u4e00-\u9fa5]+$/;
	if (document.getElementById("txtPwd").value.length < 6
			|| document.getElementById("txtPwd").value.length > 18
			|| regs.test(document.getElementById("txtPwd").value)) {
		document.getElementById("tips_password").innerHTML = "<em style='color:#FF0000'>密码由6-18个字符、数字和标点符号组成</em>"

		return false;
	} else {
		document.getElementById("tips_password").innerHTML = "OK！";
	}
	if (document.getElementById("txtRpt").value != document
			.getElementById("txtPwd").value) {
		document.getElementById("tips_repeat").innerHTML = "<em style='color:#FF0000'>两次输入的密码不一致</em>";

		return false;
	} else {
		document.getElementById("tips_repeat").innerHTML = "OK！";

	}
	if (document.getElementById("selUser").selectedIndex == 0) {
		document.getElementById("tips_usertype").innerHTML = "<em style='color:#FF0000'>没有选择用户类型</em>";

		return false;
	} else {
		document.getElementById("tips_usertype").innerHTML = "OK！";
	}
}
function checkIdnumber() {
	var veg = /^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
	if (!veg.test(document.getElementById("idnumber").value)) {
		document.getElementById("idcheck").innerHTML = "<em style='color:#FF0000'>身份证号码由18个数字组成</em>";

		return false;

	} else {

		document.getElementById("idcheck").innerHTML = "OK！";
	}
}
function checkphnumber() {
	var veg = /^1[34578]\d{9}$/;
	if (!veg.test(document.getElementById("phnumber").value)) {
		document.getElementById("phcheck").innerHTML = "<em style='color:#FF0000'>手机号码由11个数字组成</em>";
		return false;
	} else {
		document.getElementById("phcheck").innerHTML = "OK！";

	}
}