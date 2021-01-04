package com.example.project.controller.boardCtr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.project.model.BoardVO;
import com.example.project.service.boardSrv.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	@Autowired
	BoardSrv boardSrv;

	@RequestMapping("")
	public String getBoardMain() {
		return "board/board_main";
	}

	@RequestMapping(value = "/board_insert", method = RequestMethod.GET)
	public String getBoardInsert() {
		return "board/board_insert";
	}

	@RequestMapping(value = "/board_insert", method = RequestMethod.POST)
	public String setBoardInsert(BoardVO boardvo) {
		boardSrv.setBoard(boardvo);
		return "board/board_main";
	}

	@RequestMapping(value = "/board_view", method = RequestMethod.GET)
	public String getBoardView() {
		return "board/board_view";
	}

}
