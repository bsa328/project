package com.example.project.repository.boardDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.project.model.BoardVO;

@Repository
public class BoardDao {

	@Autowired
	SqlSession sqlSession;

	public void setBoard(BoardVO boardVO) {
		sqlSession.insert("board.setBoard", boardVO);
	}

	public List<BoardVO> getBoardList() {
		return sqlSession.selectList("board.getBoardList");
	}

	public int codeCheck(String boardCode) {
		return sqlSession.selectOne("board.codeCheck", boardCode);
	}

	public int getBoardCount() {
		return sqlSession.selectOne("board.getBoardCount");
	}

}
