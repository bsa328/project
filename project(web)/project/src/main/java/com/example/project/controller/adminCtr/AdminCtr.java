package com.example.project.controller.adminCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminCtr {

	@RequestMapping("")
	public String getAdmin() {
		return "admin/admin_main";
	}

}
