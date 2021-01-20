package com.example.project.controller.boardCtr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.BoardVO;
import com.example.project.service.boardSrv.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	@Autowired
	BoardSrv boardSrv;

	@RequestMapping("")
	public ModelAndView getBoardMain() {
		List<BoardVO> list = boardSrv.getBoardList();
		int count = boardSrv.getBoardCount();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);

		mav.setViewName("board/board_main");
		return mav;
	}

	@RequestMapping(value = "/board_insert", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardInsert(@ModelAttribute BoardVO boardVO) {
		boardSrv.setBoard(boardVO);

		return "success";
	}

	@RequestMapping(value = "/code_check", method = RequestMethod.POST)
	@ResponseBody
	public String getCodeCheck(@RequestParam String boardCode) {
		int result = boardSrv.codeCheck(boardCode);

		String msg;
		if (result > 0)
			msg = "false";
		else
			msg = "success";

		return msg;
	}

}
