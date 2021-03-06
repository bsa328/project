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

	public void createArticle(String boardCode) {
		boardDao.createArticle(boardCode);
	}

	public void createComment(String boardCode) {
		boardDao.createComment(boardCode);
	}

	public List<BoardVO> getBoardList(int start, int end) {
		return boardDao.getBoardList(start, end);
	}

	public int codeCheck(String boardCode) {
		return boardDao.codeCheck(boardCode);
	}

	public int getBoardCount() {
		return boardDao.getBoardCount();
	}

	public void setBoardDelete(String boardCode) {
		boardDao.setBoardDelete(boardCode);
	}

	public void dropArticle(String boardCode) {
		boardDao.dropArticle(boardCode);
	}

	public void dropComment(String boardCode) {
		boardDao.dropComment(boardCode);
	}

}