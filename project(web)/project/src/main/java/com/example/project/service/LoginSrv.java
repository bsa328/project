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

	public int getEmpNumCheck(EmployeeVO employeevo) {
		return loginDao.getEmpNumCheck(employeevo);
	}

	public EmployeeVO getEmpLoginInfo(EmployeeVO employeevo) {
		return loginDao.getEmpLoginInfo(employeevo);
	}

	public void setSession(EmployeeVO employeevo, HttpSession httpSession) {
		EmployeeVO empvo = loginDao.getEmpLoginInfo(employeevo);

		if (empvo != null) {
			httpSession.setAttribute("empName", empvo.getEmpName());
			httpSession.setAttribute("empNum", empvo.getEmpNum());
			httpSession.setAttribute("empConfirm", empvo.getEmpConfirm());
			httpSession.setAttribute("empAuth", empvo.getEmpAuth());
		}
	}

	public void setLogout(HttpSession httpSession) {
		httpSession.invalidate();
	}

}
