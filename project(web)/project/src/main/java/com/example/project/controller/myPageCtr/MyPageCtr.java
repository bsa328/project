package com.example.project.controller.myPageCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage")
public class MyPageCtr {

	@RequestMapping("")
	public String MyPageMain() {
		return "mypage/mypage_main";
	}

	@RequestMapping(value = "/mypage_modify", method = RequestMethod.GET)
	public String getMypageModify() {
		
		return "mypage/mypage_modify";
	}

	@RequestMapping(value = "/mypage_modify", method = RequestMethod.POST)
	public String setMypageModify() {
		
		return "redirect:/mypage";
	}

}
