package com.example.project.service.loginSrv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.repository.loginDao.LoginDao;

@Service
public class LoginSrv {
	
	@Autowired
	LoginDao loginDao;

}
