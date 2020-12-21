package com.example.project.controller.memberCtr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.project.service.loginSrv.LoginSrv;
import com.example.project.service.memberSrv.MemberSrv;

@Controller
@RequestMapping("/member")
public class MemberCtr {

	@Autowired
	MemberSrv memberSrv;

	@Autowired
	LoginSrv loginSrv;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "register";
	}
}
