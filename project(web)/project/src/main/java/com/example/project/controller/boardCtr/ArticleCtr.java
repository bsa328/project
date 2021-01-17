package com.example.project.controller.boardCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/article")
public class ArticleCtr {

	@RequestMapping("/article_list")
	public String getArticleList() {
		return "article/article_list";
	}

}
