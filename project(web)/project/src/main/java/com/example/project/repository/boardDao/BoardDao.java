package com.example.project.repository.boardDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public List<BoardVO> getBoardList(String boardNum, String boardTitle, String boardWriter, String boardContent,
			String boardRegdate, String boardViews) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardNum", boardNum);
		map.put("boardTitle", boardTitle);
		map.put("boardWriter", boardWriter);
		map.put("boardContent", boardContent);
		map.put("boardRegdate", boardRegdate);
		map.put("boardViews", boardViews);
		return sqlSession.selectList("board.getBoardList", map);
	}

}