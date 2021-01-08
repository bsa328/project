package com.example.project.controller.myPageCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageCtr {

	@RequestMapping("")
	public String getMemberView() {
		return "mypage/my_page";
	}
}
