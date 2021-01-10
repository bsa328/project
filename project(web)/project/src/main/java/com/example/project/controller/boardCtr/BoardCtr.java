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
	public ModelAndView getBoardMain(String boardNum, String boardTitle, String boardWriter, String boardContent,
			String boardRegdate, String boardViews) {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> list = boardSrv.getBoardList(boardNum, boardTitle, boardWriter, boardContent, boardRegdate,
				boardViews);

		int count = boardSrv.getBoardCount();

		mav.addObject("list", list);
		mav.addObject("count", count);
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
		return "redirect:/board";
	}

	@RequestMapping(value = "/board_view", method = RequestMethod.GET)
	public ModelAndView getBoardView(@ModelAttribute BoardVO boardvo, int boardNum) {

		ModelAndView mav = new ModelAndView();
		boardSrv.viewsUp(boardvo);
		mav.addObject("view", boardSrv.getBoardOne(boardNum));
		mav.setViewName("board/board_view");

		return mav;
	}

	@RequestMapping(value = "/board_modify", method = RequestMethod.GET)
	public String getBoardModify() {

		return "board/board_modify";
	}

	@RequestMapping(value = "/board_modify", method = RequestMethod.POST)
	public String setBoardModify() {

		return "redirect:/board";
	}

	@RequestMapping(value = "/board_delete", method = RequestMethod.POST)
	@ResponseBody
	public String boardDelete(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		int boardNum;
		for (String list : chkArr) {
			boardNum = Integer.parseInt(list);
			boardSrv.setBoardDelete(boardNum);
		}
		return "success";
	}

}
