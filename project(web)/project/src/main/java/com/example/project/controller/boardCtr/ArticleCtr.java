package com.example.project.controller.boardCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/article")
public class ArticleCtr {

	@RequestMapping("/article_list")
	public String getArticleList() {
		return "board/article_list";
	}

	@RequestMapping(value = "/article_insert", method = RequestMethod.GET)
	public String getArticleInsert() {
		return "board/article_insert";
	}

	@RequestMapping(value = "/article_insert", method = RequestMethod.POST)
	public String setArticleInsert() {
		return "redirect:/article/article_list";
	}

	@RequestMapping(value = "/article_view", method = RequestMethod.GET)
	public String getArticleView() {
		return "board/article_view";
	}

	@RequestMapping(value = "/article_modify", method = RequestMethod.GET)
	public String getArticleModify() {
		return "board/article_modify";
	}

}
