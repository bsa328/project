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
	BoardSrv boardSrv;

	@RequestMapping("")
	public ModelAndView getBoardMain(String boardNum, String boardTitle, String boardWriter, String boardContent,
			String boardRegdate, String boardViews) {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> list = boardSrv.getBoardList(boardNum, boardTitle, boardWriter, boardContent, boardRegdate,
				boardViews);

		mav.addObject("list", list);
		mav.addObject("boardNum", boardNum);
		mav.addObject("boardTitle", boardTitle);
		mav.addObject("boardWriter", boardWriter);
		mav.addObject("boardContent", boardContent);
		mav.addObject("boardRegdate", boardRegdate);
		mav.addObject("boardViews", boardViews);

		mav.setViewName("board/board_main");
		return mav;
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

	@RequestMapping(value = "/board_modify", method = RequestMethod.GET)
	public String getBoardModify() {
		return "board/board_modify";
	}

	@RequestMapping(value = "/board_modify", method = RequestMethod.POST)
	public String setBoardModify() {
		return "board/board_main";
	}

}
