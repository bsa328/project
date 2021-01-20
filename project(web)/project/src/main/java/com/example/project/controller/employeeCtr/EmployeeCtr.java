package com.example.project.controller.employeeCtr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.EmployeeVO;
import com.example.project.service.EmployeeSrv;
import com.example.project.service.RegisterSrv;

@Controller
@RequestMapping("/employee")
public class EmployeeCtr {

	@Autowired
	RegisterSrv registerSrv;

	@Autowired
	EmployeeSrv employeeSrv;

	@RequestMapping("")
	public String getEmployeeMain() {
		return "employee/employee_main";
	}

	@RequestMapping("/employee_list")
	public ModelAndView getEmployeeList(@RequestParam(defaultValue = "emp_name") String searchOpt,
			@RequestParam(defaultValue = "") String words) {

		int count = employeeSrv.getEmpCount(searchOpt, words);
		List<EmployeeVO> list = employeeSrv.getEmpList(searchOpt, words);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);

		mav.setViewName("employee/employee_list");
		return mav;
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

	@RequestMapping(value = "/employee_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setEmployeeDelete(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		int empID;
		for (String list : chkArr) {
			empID = Integer.parseInt(list);
			employeeSrv.setEmployeeDelete(empID);
		}
		return "success";
	}

}
