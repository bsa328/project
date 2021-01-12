package com.example.project.controller.mainCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainCtr {

	@RequestMapping("")
	public String getWebsiteHome() {
		return "main";
	}
}
