package com.example.project.service.logRegSrv;

import javax.servlet.http.HttpSession;

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

	public MemberVO getMemberInfo(MemberVO membervo) {
		return logRegDao.getMemberInfo(membervo);
	}

	public void setSession(MemberVO membervo, HttpSession session) {
		MemberVO vo = logRegDao.getMemberInfo(membervo);

		if (vo != null) {
			session.setAttribute("memberName", vo.getMemberName());
			session.setAttribute("memberID", vo.getMemberID());
			session.setAttribute("memberPasswd", vo.getMemberPasswd());
		}
	}

	public void setLogout(HttpSession session) {
		session.invalidate();
	}

}
