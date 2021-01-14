package com.example.project.controller.employeeCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeCtr {

	@RequestMapping("")
	public String getEmployeeMain() {
		return "employee/employee_main";
	}

}
