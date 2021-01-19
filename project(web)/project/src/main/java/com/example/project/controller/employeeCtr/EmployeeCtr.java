package com.example.project.controller.employeeCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/employee")
public class EmployeeCtr {

	@RequestMapping("")
	public String getEmployeeMain() {
		return "employee/employee_main";
	}

	@RequestMapping("/employee_list")
	public String getEmployeeList() {
		return "employee/employee_list";
	}

	@RequestMapping(value = "/employee_register", method = RequestMethod.GET)
	public String getEmployeeRegister() {
		return "employee/employee_register";
	}

	@RequestMapping(value = "/employee_register", method = RequestMethod.POST)
	public String setEmployeeRegister() {
		return "redirect:/employee/employee_list";
	}

	@RequestMapping(value = "/employee_view", method = RequestMethod.GET)
	public String getEmployeeView() {
		return "employee/employee_view";
	}

}
