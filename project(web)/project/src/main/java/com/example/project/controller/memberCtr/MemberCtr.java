package com.example.project.controller.memberCtr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.MemberVO;
import com.example.project.service.logRegSrv.LogRegSrv;
import com.example.project.service.memberSrv.MemberSrv;

@Controller
@RequestMapping("/member")
public class MemberCtr {

	@Autowired
	MemberSrv memberSrv;

	@Autowired
	LogRegSrv logRegSrv;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView setRegister(@ModelAttribute MemberVO membervo) {
		String userName = membervo.getUserName();
		String userID = membervo.getUserID();
		String passwd = membervo.getPasswd();
		int result = logRegSrv.getRegisterCheck(membervo);

		ModelAndView mav = new ModelAndView();
		String registerMsg;
		if (result == 0) {
			logRegSrv.setMemberRegister(membervo);
			mav.setViewName("redirect:/login");
		} else {
			registerMsg = "이미 사용중인 아이디입니다.";
			mav.addObject("registerMsg", registerMsg);
			mav.setViewName("register");
		}
		return mav;
	}

}
