package com.example.project.controller.boardCtr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.project.model.ArticleVO;
import com.example.project.service.articleSrv.ArticleSrv;

@Controller
@RequestMapping("/article")
public class ArticleCtr {

	@Autowired
	ArticleSrv articleSrv;

	@RequestMapping("/article_list")
	public String getArticleList() {

		return "board/article_list";
	}

	@RequestMapping(value = "/article_insert", method = RequestMethod.GET)
	public String getArticleInsert() {
		return "board/article_insert";
	}

	@RequestMapping(value = "/article_insert", method = RequestMethod.POST)
	@ResponseBody
	public String setArticleInsert(@ModelAttribute ArticleVO articleVO) {
		articleSrv.setArticle(articleVO);

		return "redirect:/article/article_list?boardCode=" + articleVO.getBoardCode();
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
