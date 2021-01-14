package com.example.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.EmployeeVO;
import com.example.project.service.LoginSrv;
import com.example.project.service.RegisterSrv;

@Controller
public class IDnRegCtr {

	@Autowired
	RegisterSrv registerSrv;

	@Autowired
	LoginSrv loginSrv;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getLogin() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");

		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute EmployeeVO employeevo, HttpSession httpSession,
			HttpServletResponse response) throws IOException {

		ModelAndView mav = new ModelAndView();
		int result = loginSrv.getEmpNumCheck(employeevo);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (result > 0) {
			EmployeeVO empvo = loginSrv.getEmpLoginInfo(employeevo);

			if (empvo.getEmpConfirm().equals("Y")) {
				loginSrv.setSession(employeevo, httpSession);
				mav.setViewName("main");

			} else {
				loginSrv.setSession(employeevo, httpSession);
				mav.setViewName("main");
			}

		} else {
			out.println("<script>alert('등록된 사번이 아닙니다.');</script>");
			out.flush();

			mav.setViewName("login");
		}

		return mav;
	}

	@RequestMapping("/logout")
	@ResponseBody
	public String getLogout(HttpSession httpSession) {
		loginSrv.setLogout(httpSession);

		return "success";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {

		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String setRegister(@ModelAttribute EmployeeVO employeevo) {

		int enterYear = Integer.parseInt(employeevo.getEmpEnter().substring(2, 4));
		String empNum = enterYear + employeevo.getEmpBuseoCode() + employeevo.getEmpGradeCode();

		employeevo.setEmpNum(empNum);
		registerSrv.setEmpRegister(employeevo);

		return "redirect:/login";
	}

}
