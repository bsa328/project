package com.example.project.service.memberSrv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.repository.memberDao.MemberDao;

@Service
public class MemberSrv {

	@Autowired
	MemberDao memberDao;

}
