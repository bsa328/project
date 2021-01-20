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

	public int getEmpNumCheck(EmployeeVO employeeVO) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("empNum", employeeVO.getEmpNum());
		map.put("empPwd", employeeVO.getEmpPwd());

		return sqlSession.selectOne("login.getEmpNumCheck", map);
	}

	public EmployeeVO getEmpLoginInfo(EmployeeVO employeeVO) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("empNum", employeeVO.getEmpNum());
		map.put("empPwd", employeeVO.getEmpPwd());

		return sqlSession.selectOne("login.getEmpLoginInfo", map);
	}

}
