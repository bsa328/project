package com.example.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.EmployeeVO;
import com.example.project.repository.EmployeeDao;

@Service
public class EmployeeSrv {

	@Autowired
	EmployeeDao employeeDao;

	public List<EmployeeVO> getEmpList(int start, int end) {
		return employeeDao.getEmpList(start, end);
	}

	public int getEmpCount() {
		return employeeDao.getEmpCount();
	}

	public int setEmployeeDelete(int empID) {
		return employeeDao.setEmployeeDelete(empID);
	}

}
