package com.example.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.EmployeeVO;
import com.example.project.repository.RegisterDao;

@Service
public class RegisterSrv {

	@Autowired
	RegisterDao registerDao;

	public void setEmpRegister(EmployeeVO employeeVO) {
		registerDao.setEmpRegister(employeeVO);
	}

	public void setEmpRegisterInfo(EmployeeVO employeeVO) {
		registerDao.setEmpRegisterInfo(employeeVO);
	}

	public void setEmpConfirmChange(String empConfirm, String empNum) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("empConfirm", empConfirm);
		map.put("empNum", empNum);
		registerDao.setEmpConfirmChange(map);
	}

}
