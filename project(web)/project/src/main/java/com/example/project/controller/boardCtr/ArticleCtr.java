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

import com.example.project.model.ArticleVO;
import com.example.project.model.BoardVO;
import com.example.project.pager.Pager;
import com.example.project.service.articleSrv.ArticleSrv;

@Controller
@RequestMapping("/article")
public class ArticleCtr {

	@Autowired
	ArticleSrv articleSrv;

	@RequestMapping("/article_list")
	public ModelAndView getArticleList(@RequestParam(defaultValue = "1") int curPage, @RequestParam String boardCode) {

		int count = articleSrv.getArticleCount(boardCode);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		BoardVO boardVO = articleSrv.getBoardOne(boardCode);
		List<ArticleVO> list = articleSrv.getArticleList(start, end, boardCode);

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
		mav.addObject("boardCode", boardVO.getBoardCode());
		mav.addObject("boardGroup", boardVO.getBoardGroup());
		mav.addObject("boardColor", boardVO.getBoardColor());
		mav.addObject("boardManager", boardVO.getBoardManager());

		mav.setViewName("board/article_list");
		return mav;
	}

	@RequestMapping(value = "/article_insert", method = RequestMethod.GET)
	public ModelAndView getArticleInsert(@RequestParam String boardCode) {
		BoardVO boardVO = articleSrv.getBoardOne(boardCode);

		ModelAndView mav = new ModelAndView();
		mav.addObject("boardCode", boardCode);
		mav.addObject("boardColor", boardVO.getBoardColor());

		mav.setViewName("board/article_insert");
		return mav;
	}

	@RequestMapping(value = "/article_insert", method = RequestMethod.POST)
	public String setArticleInsert(@ModelAttribute ArticleVO articleVO) {
		articleSrv.setArticle(articleVO);

		return "redirect:/article/article_list?boardCode=" + articleVO.getBoardCode();
	}

	@RequestMapping(value = "/article_view", method = RequestMethod.GET)
	public ModelAndView getArticleView(@ModelAttribute ArticleVO articleVO, @RequestParam String boardCode) {

		ArticleVO articlevo = articleSrv.getArticleOne(articleVO);
		BoardVO boardVO = articleSrv.getBoardOne(boardCode);

		ModelAndView mav = new ModelAndView();
		articleSrv.getArticleHit(articleVO);
		mav.addObject("view", articlevo);
		mav.addObject("boardCode", boardVO.getBoardCode());
		mav.addObject("boardGroup", boardVO.getBoardGroup());
		mav.addObject("boardColor", boardVO.getBoardColor());

		mav.setViewName("board/article_view");
		return mav;
	}

	@RequestMapping(value = "/article_modify", method = RequestMethod.GET)
	public ModelAndView getArticleModify(@ModelAttribute ArticleVO articleVO, @RequestParam String boardCode) {
		BoardVO boardVO = articleSrv.getBoardOne(boardCode);
		ArticleVO articlevo = articleSrv.getArticleOne(articleVO);

		ModelAndView mav = new ModelAndView();
		mav.addObject("modify", articlevo);
		mav.addObject("boardCode", articleVO.getBoardCode());
		mav.addObject("boardColor", boardVO.getBoardColor());

		mav.setViewName("board/article_modify");
		return mav;
	}

	@RequestMapping(value = "/article_modify", method = RequestMethod.POST)
	public ModelAndView setArticleModify(@ModelAttribute ArticleVO articleVO) {

		ModelAndView mav = new ModelAndView();
		mav.addObject("boardCode", articleVO.getBoardCode());
		articleSrv.setArticleModify(articleVO);

		mav.setViewName("redirect:/article/article_view?articleID=" + articleVO.getArticleID());
		return mav;
	}

	@RequestMapping(value = "/article_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setArticleDelete(@ModelAttribute ArticleVO articleVO,
			@RequestParam(value = "chkArr[]") List<String> chkArr) {

		int articleID;

		for (String list : chkArr) {
			articleID = Integer.parseInt(list);
			articleVO.setArticleID(articleID);
			articleVO.setBoardCode(articleVO.getBoardCode());

			articleSrv.setArticleDelete(articleID, articleVO.getBoardCode());
		}

		return "success";
	}

}
