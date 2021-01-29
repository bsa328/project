package com.example.project.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.EmployeeVO;
import com.example.project.repository.LoginDao;

@Service
public class LoginSrv {

	@Autowired
	LoginDao loginDao;

	public int getEmpNumCheck(EmployeeVO employeeVO) {
		return loginDao.getEmpNumCheck(employeeVO);
	}

	public EmployeeVO getEmpLoginInfo(EmployeeVO employeeVO) {
		return loginDao.getEmpLoginInfo(employeeVO);
	}

	public void setSession(EmployeeVO employeeVO, HttpSession httpSession) {
		EmployeeVO empvo = loginDao.getEmpLoginInfo(employeeVO);

		if (empvo != null) {
			httpSession.setAttribute("empName", empvo.getEmpName());
			httpSession.setAttribute("empBuseoName", empvo.getEmpBuseoName());
			httpSession.setAttribute("empGradeName", empvo.getEmpGradeName());
			httpSession.setAttribute("empNum", empvo.getEmpNum());
			httpSession.setAttribute("empConfirm", empvo.getEmpConfirm());
			httpSession.setAttribute("empAuth", empvo.getEmpAuth());
		}
	}

	public void setLogout(HttpSession httpSession) {
		httpSession.invalidate();
	}

}
