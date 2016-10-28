package com.pms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PwdFind {

	@ResponseBody
	public String sendEmail(HttpServletRequest request) {
		//DynamicParams params = new DynamicParams(request);
		StringBuilder builder = new StringBuilder();
		StringBuffer url = new StringBuffer();
		// String type=params


	}

}
