package com.pms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pms")
public class Test {
	private static final String SUCCESS = "success";

	@RequestMapping("/test")
	public String test() {
		System.out.println("Spring !!!");
		return SUCCESS;
	}
}
