package com.example.project.controller.logRegCtr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.MemberVO;
import com.example.project.service.logRegSrv.LogRegSrv;

@Controller
public class LogRegCtr {

	@Autowired
	LogRegSrv logRegSrv;

	@RequestMapping("")
	public String Main() {
		return "main";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getLogin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute MemberVO membervo, HttpSession httpSession) {
		int result = logRegSrv.getLoginCheck(membervo);

		ModelAndView mav = new ModelAndView();

		String loginMsg;
		if (result > 0) {
			logRegSrv.setSession(membervo, httpSession);
			mav.setViewName("redirect:/admin");

		} else {
			loginMsg = "등록된 회원이 아닙니다.";
			mav.addObject("loginMsg", loginMsg);
			mav.setViewName("login");
		}

		return mav;
	}

	@RequestMapping("/logout")
	@ResponseBody
	public String getLogout(HttpSession httpSession) {
		logRegSrv.setLogout(httpSession);
		return "success";
	}

}
