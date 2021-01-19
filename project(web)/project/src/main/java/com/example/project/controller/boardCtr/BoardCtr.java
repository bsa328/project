package com.example.project.controller.boardCtr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.BoardVO;
import com.example.project.service.boardSrv.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	@Autowired
	BoardSrv boardsrv;

	@RequestMapping("")
	public ModelAndView getBoardMain() {
		List<BoardVO> list = boardsrv.getBoardList();
		int count = boardsrv.getBoardCount();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);

		mav.setViewName("board/board_main");
		return mav;
	}

	@RequestMapping(value = "/board_insert", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardInsert(@ModelAttribute BoardVO boardvo) {
		boardsrv.setBoard(boardvo);

		return "success";
	}

}
