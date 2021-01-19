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

	public void setBoard(BoardVO boardvo) {
		sqlSession.insert("board.setBoard", boardvo);
	}

	public List<BoardVO> getBoardList() {
		return sqlSession.selectList("board.getBoardList");
	}

	public int getBoardCount() {
		return sqlSession.selectOne("board.getBoardCount");
	}

}
