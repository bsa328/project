package com.example.project.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.EmployeeVO;

@Repository
public class RegisterDao {

	@Autowired
	SqlSession sqlSession;

	public void setEmpRegister(EmployeeVO employeevo) {
		sqlSession.insert("register.setEmpRegister", employeevo);
	}

}
