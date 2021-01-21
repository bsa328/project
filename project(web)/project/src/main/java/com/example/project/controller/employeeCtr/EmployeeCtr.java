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
import com.example.project.pager.Pager;
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
	public ModelAndView getEmployeeList(@RequestParam(defaultValue = "1") int curPage) {

		int count = employeeSrv.getEmpCount();
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<EmployeeVO> list = employeeSrv.getEmpList(start, end);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());

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
