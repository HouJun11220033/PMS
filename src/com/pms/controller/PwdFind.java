/*
 *
 * 10.31,迪杰斯特拉的最短路，PAT的第三道题，已经拖了一星期了，感觉心里有一个结似的，一直想到一个题没能A掉，心里就很不舒服
 * 就这吧，去睡觉，明天星期二，不吃不喝不睡，也要把这个题给A了！！！
 * 
 */
package com.pms.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pms.service.impl.StaffServiceImpl;

@Controller
@RequestMapping("/pms")
public class PwdFind {
	StaffServiceImpl staffServiceImpl = new StaffServiceImpl();

	@RequestMapping("/find")
	public String findPage() {
		return "pwdFind";

	}

	@RequestMapping("/show")
	public String showPwd(HttpServletRequest request) {
		ServletContext servletContext = request.getServletContext();
		ModelMap model = new ModelMap();
		boolean flag = false;
		String phoneNum;
		String idNum;
		String hint;
		// hint = "请重新输入电话号码和身份证信息";
		phoneNum = request.getParameter("phnumber");
		idNum = request.getParameter("idnumber");
		flag = staffServiceImpl.findIdNumByPhoneNum(phoneNum, idNum);
		servletContext.setAttribute("hint", "");
		if (flag == true) {
			// model = new ModelAndView("modifyPwd");
			// model.put("", value);
			// return new ModelAndView(new RedirectView("modifyPwd.jsp"));
			return "modifyPwd";

		} else {
			// model = new ModelAndView("pwdFind");
			model.put("hint", "请重新输入电话号码和身份证信息");
			// model.addObject("hint", "请重新输入电话号码和身份证信息");

			servletContext.setAttribute("hint", "请重新输入电话号码和身份证信息");

			System.out.println("请重新输入电话号码和身份证信息");
			// return new ModelAndView(new RedirectView("pwdFind.jsp"));
			return "pwdFind";
		}
		// return model;

	}

}
