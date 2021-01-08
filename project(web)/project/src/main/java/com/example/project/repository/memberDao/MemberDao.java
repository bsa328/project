package com.example.project.repository.memberDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.MemberVO;

@Repository
public class MemberDao {

	@Autowired
	SqlSession sqlSession;

	public List<MemberVO> getMemberList(String memberNum, String memberName, String memberID, String memberPasswd,
			String memberRegdate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberNum", memberNum);
		map.put("memberName", memberName);
		map.put("memberID", memberID);
		map.put("memberPasswd", memberPasswd);
		map.put("memberRegdate", memberRegdate);
		return sqlSession.selectList("member.getMemberList", map);
	}

	public int setMemberDelete(int memberNum) {
		return sqlSession.delete("member.setMemberDelete", memberNum);
	}

	public int getMemberCount() {
		return sqlSession.selectOne("member.getMemberCount");
	}

}
