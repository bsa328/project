package com.example.project.controller.memberCtr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.MemberVO;
import com.example.project.service.logRegSrv.LogRegSrv;
import com.example.project.service.memberSrv.MemberSrv;

@Controller
@RequestMapping("/member")
public class MemberCtr {

	@Autowired
	MemberSrv memberSrv;

	@Autowired
	LogRegSrv logRegSrv;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView setRegister(@ModelAttribute MemberVO membervo) {
		int result = logRegSrv.getRegisterCheck(membervo);

		ModelAndView mav = new ModelAndView();
		String registerMsg;
		if (result == 0) {
			logRegSrv.setMemberRegister(membervo);
			mav.setViewName("redirect:/login");
		} else {
			registerMsg = "이미 사용중인 아이디입니다.";
			mav.addObject("registerMsg", registerMsg);
			mav.setViewName("register");
		}
		return mav;
	}

	@RequestMapping("")
	public ModelAndView getMemberMain(String memberNum, String memberName, String memberID, String memberPasswd,
			String memberRegdate) {
		ModelAndView mav = new ModelAndView();
		List<MemberVO> list = memberSrv.getMemberList(memberNum, memberName, memberID, memberPasswd, memberRegdate);

		int count = memberSrv.getMemberCount();

		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("memberNum", memberNum);
		mav.addObject("memberName", memberName);
		mav.addObject("memberID", memberID);
		mav.addObject("memberPasswd", memberPasswd);
		mav.addObject("memberRegdate", memberRegdate);

		mav.setViewName("member/member_main");
		return mav;
	}

	@RequestMapping(value = "/member_delete", method = RequestMethod.POST)
	@ResponseBody
	public String memberDelete(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		int memberNum;
		for (String list : chkArr) {
			memberNum = Integer.parseInt(list);
			memberSrv.setMemberDelete(memberNum);
		}
		return "success";
	}

	@RequestMapping("/member_view")
	public String getMemberView() {
		return "member/member_view";
	}

}
