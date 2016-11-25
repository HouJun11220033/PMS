package com.pms.controller;

import org.hibernate.procedure.internal.Util.ResultClassesResolutionContext;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pms")
public class FrontController {
	@RequestMapping("/front")
	public String front(){

		return "Front";
	}

}
