package com.example.project.repository;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.EmployeeVO;

@Repository
public class EmployeeDao {

	@Autowired
	SqlSession sqlSession;

	public List<EmployeeVO> getEmpList(int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);

		return sqlSession.selectList("employee.getEmpList", map);
	}

	public int getEmpCount() {
		return sqlSession.selectOne("employee.getEmpCount");
	}

	public int setEmployeeDelete(int empID) {
		return sqlSession.delete("employee.setEmployeeDelete", empID);
	}

}
