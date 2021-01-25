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
import com.example.project.pager.Pager;
import com.example.project.service.boardSrv.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	@Autowired
	BoardSrv boardSrv;

	@RequestMapping("")
	public ModelAndView getBoardMain(@RequestParam(defaultValue = "1") int curPage) {
		int count = boardSrv.getBoardCount();

		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<BoardVO> list = boardSrv.getBoardList(start, end);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());

		mav.setViewName("board/board_main");
		return mav;
	}

	@RequestMapping(value = "/board_insert", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardInsert(@ModelAttribute BoardVO boardVO) {
		boardSrv.setBoard(boardVO);
		boardSrv.createArticle(boardVO.getBoardCode());
		boardSrv.createComment(boardVO.getBoardCode());

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

	@RequestMapping(value = "/board_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardDelete(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		
		for (String boardCode : chkArr) {
			boardSrv.setBoardDelete(boardCode);
			boardSrv.dropArticle(boardCode);
			boardSrv.dropComment(boardCode);
		}
		
		return "success";
	}

}