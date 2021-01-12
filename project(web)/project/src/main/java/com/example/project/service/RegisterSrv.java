package com.example.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.RegisterVO;
import com.example.project.repository.RegisterDao;

@Service
public class RegisterSrv {

	@Autowired
	RegisterDao registerDao;

	public void setEmpRegister(RegisterVO registervo) {
		registerDao.setEmpRegister(registervo);
	}

}
