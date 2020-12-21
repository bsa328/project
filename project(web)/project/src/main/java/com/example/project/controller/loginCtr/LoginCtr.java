package com.example.project.controller.loginCtr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.project.service.loginSrv.LoginSrv;

@Controller
public class LoginCtr {

	@Autowired
	LoginSrv loginSrv;

	@RequestMapping("")
	public String Main() {
		return "main";
	}

}
