package com.pms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pms.model.Staff;
import com.pms.service.impl.StaffServiceImpl;

@Controller
@RequestMapping("/pms")
public class RegisterController {

	StaffServiceImpl staffServiceImpl = new StaffServiceImpl();
	private static final String SUCCESS = "register";

	@RequestMapping("/register")
	public String registerPage() {

		return SUCCESS;

	}

	@RequestMapping("/submitData")
	public String registerOK(HttpServletRequest request, HttpServletResponse response) {
		Boolean sexBoolean;
		String userName = request.getParameter("username");
		// System.out.println(userName);
		String passWord = request.getParameter("password");
		String position = request.getParameter("usertype");
		String sex = request.getParameter("gender");
		String idCardNum = request.getParameter("idCardNum");
		String phoneNum = request.getParameter("phoneNum");
		// System.out.println(phoneNum);
		Staff staff = new Staff();
		staff.setIdCNum(userName);
		staff.setPwd(passWord);
		staff.setPosition(position);

		if (sex == "男") {
			sexBoolean = true;
		} else {
			sexBoolean = false;
		}
		staff.setSex(sexBoolean);

		staffServiceImpl.saveStaff(staff);
		System.out.println("入库成功！");
		// System.out.println(userName);

		return "success";

	}
}
