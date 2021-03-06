package com.example.project.repository;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.EmployeeVO;

@Repository
public class RegisterDao {

	@Autowired
	SqlSession sqlSession;

	public void setEmpRegister(EmployeeVO employeeVO) {
		sqlSession.insert("register.setEmpRegister", employeeVO);
	}

	public void setEmpRegisterInfo(EmployeeVO employeeVO) {
		sqlSession.insert("register.setEmpRegisterInfo", employeeVO);
	}

	public void setEmpConfirmChange(HashMap<String, String> map) {
		sqlSession.update("register.setEmpConfirmChange", map);
	}

}
