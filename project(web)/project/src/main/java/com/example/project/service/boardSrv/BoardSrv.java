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

	public void setBoard(BoardVO boardvo) {
		boardDao.setBoard(boardvo);
	}

	public List<BoardVO> getBoardList(String boardNum, String boardTitle, String boardWriter, String boardContent,
			String boardRegdate, String boardViews) {
		return boardDao.getBoardList(boardNum, boardTitle, boardWriter, boardContent, boardRegdate, boardViews);
	}

	public int setBoardDelete(int boardNum) {
		return boardDao.setBoardDelete(boardNum);
	}

	public int getBoardCount() {
		return boardDao.getBoardCount();
	}

	public BoardVO getBoardOne(int boardNum) {
		return boardDao.getBoardOne(boardNum);
	}

	public void viewsUp(BoardVO boardvo) {
		boardDao.viewsUp(boardvo);
	}

}
