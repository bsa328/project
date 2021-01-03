package com.example.project.controller.boardCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	@RequestMapping("")
	public String getBoardMain() {
		return "board/board_main";
	}

	@RequestMapping(value = "board_insert", method = RequestMethod.GET)
	public String setBoardInsert() {
		return "redirect:/board/board_main";
	}

}
