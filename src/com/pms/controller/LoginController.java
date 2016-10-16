package com.pms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pms.model.Customer;
import com.pms.service.impl.CustomerServiceImpl;

@Controller
@RequestMapping("/pms")
public class LoginController {
	private static final String SUCCESS = "success";
	CustomerServiceImpl customerService = new CustomerServiceImpl();

	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		Customer customer = new Customer();
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		System.out.println(userName);
		System.out.println(passWord);
		customer = customerService.findByLoginNameAndPassword(userName, passWord);
		if (customer != null) {

			System.out.println("登陆成功 !!!");
			return SUCCESS;

		} else {
			return "login";
		}

		// return "login";
		// return "login";

	}

	@RequestMapping("/enter")
	public String enter() {

		System.out.println("进入登陆页面 !!!");
		return "login";
		// return "login";
		// return SUCCESS;
	}
}
