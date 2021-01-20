package com.example.project.service.boardSrv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.model.BoardVO;
import com.example.project.repository.boardDao.BoardDao;

@Service
public class BoardSrv {

	@Autowired
	BoardDao boardDao;

	public void setBoard(BoardVO boardVO) {
		boardDao.setBoard(boardVO);
	}

	public List<BoardVO> getBoardList() {
		return boardDao.getBoardList();
	}

	public int codeCheck(String boardCode) {
		return boardDao.codeCheck(boardCode);
	}

	public int getBoardCount() {
		return boardDao.getBoardCount();
	}

}