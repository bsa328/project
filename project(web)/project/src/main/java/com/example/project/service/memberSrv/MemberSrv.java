package com.example.project.service.memberSrv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.MemberVO;
import com.example.project.repository.memberDao.MemberDao;

@Service
public class MemberSrv {

	@Autowired
	MemberDao memberDao;

	public List<MemberVO> getMemberList(String memberNum, String memberName, String memberID, String memberPasswd,
			String memberRegdate) {
		return memberDao.getMemberList(memberNum, memberName, memberID, memberPasswd, memberRegdate);
	}

}
