package com.example.project.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.RegisterVO;

@Repository
public class RegisterDao {

	@Autowired
	SqlSession sqlSession;

	public void setEmpRegister(RegisterVO registervo) {
		sqlSession.insert("register.setEmpRegister", registervo);
	}

}
