package com.example.project.repository;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.EmployeeVO;

@Repository
public class LoginDao {

	@Autowired
	SqlSession sqlSession;

	public int getEmpNumCheck(EmployeeVO employeevo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("empNum", employeevo.getEmpNum());
		map.put("empPwd", employeevo.getEmpPwd());

		return sqlSession.selectOne("login.getEmpNumCheck", map);
	}

	public EmployeeVO getEmpLoginInfo(EmployeeVO employeevo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("empNum", employeevo.getEmpNum());
		map.put("empPwd", employeevo.getEmpPwd());

		return sqlSession.selectOne("login.getEmpLoginInfo", map);
	}

}
