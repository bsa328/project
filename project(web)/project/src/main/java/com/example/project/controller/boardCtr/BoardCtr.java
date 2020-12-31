package com.example.project.controller.boardCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	@RequestMapping("")
	public String getBoardMain() {
		return "board/board_main";
	}

}
