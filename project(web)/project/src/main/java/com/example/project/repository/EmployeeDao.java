package com.example.project.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.EmployeeVO;

@Repository
public class EmployeeDao {

	@Autowired
	SqlSession sqlSession;

	public List<EmployeeVO> getEmpList(String searchOpt, String words) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);

		return sqlSession.selectList("employee.getEmpList", map);
	}

	public int getEmpCount(String searchOpt, String words) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);

		return sqlSession.selectOne("employee.getEmpCount", map);
	}

	public int setEmployeeDelete(int empID) {
		return sqlSession.delete("employee.setEmployeeDelete", empID);
	}

}
