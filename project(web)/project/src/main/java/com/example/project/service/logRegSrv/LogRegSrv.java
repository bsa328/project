package com.example.project.service.logRegSrv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.MemberVO;
import com.example.project.repository.logRegDao.LogRegDao;

@Service
public class LogRegSrv {

	@Autowired
	LogRegDao logRegDao;

	public void setMemberRegister(MemberVO membervo) {
		logRegDao.setMemberRegister(membervo);
	}

	public int getLoginCheck(MemberVO membervo) {
		return logRegDao.getLoginCheck(membervo);
	}
	
	public int getRegisterCheck(MemberVO membervo) {
		return logRegDao.getRegisterCheck(membervo);
	}
}
