package com.pms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pms")
public class Login {
	private static final String SUCCESS = "success";

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");

		System.out.println(userName);
		System.out.println(passWord);
		System.out.println("登陆成功 !!!");
		// return "login";
		// return "login";
		return SUCCESS;
	}

	@RequestMapping("/enter")
	public String enter() {

		System.out.println("进入登陆页面 !!!");
		return "login";
		// return "login";
		// return SUCCESS;
	}
}
