package com.example.project.repository.logRegDao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.MemberVO;

@Repository
public class LogRegDao {

	@Autowired
	SqlSession sqlSession;

	public void setMemberRegister(MemberVO membervo) {
		sqlSession.insert("register.setMemberRegister", membervo);
	}

	public int getLoginCheck(MemberVO membervo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userID", membervo.getUserID());
		map.put("passwd", membervo.getPasswd());
		return sqlSession.selectOne("register.getLoginCheck", map);
	}

	public int getRegisterCheck(MemberVO membervo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userID", membervo.getUserID());
		return sqlSession.selectOne("register.getRegisterCheck", map);
	}

	public MemberVO getMemberInfo(MemberVO membervo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userID", membervo.getUserID());
		map.put("passwd", membervo.getPasswd());
		return sqlSession.selectOne("register.getMemberInfo", map);
	}

}
