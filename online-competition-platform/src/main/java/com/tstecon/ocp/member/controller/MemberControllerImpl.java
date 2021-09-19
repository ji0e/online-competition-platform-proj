package com.tstecon.ocp.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.tstecon.ocp.common.base.BaseController;
import com.tstecon.ocp.member.service.MemberService;
import com.tstecon.ocp.member.vo.AdminVO;
import com.tstecon.ocp.member.vo.MemberVO;

@Controller("memberController")
@RequestMapping(value = "/member")
public class MemberControllerImpl extends BaseController implements MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;
	@Autowired
	private AdminVO adminVO;

	@Override
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public @ResponseBody String login(@RequestBody String login, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Map<String, String> loginMap = new Gson().fromJson(login, Map.class);

		memberVO = memberService.loginByMember(loginMap);
		adminVO = memberService.loginByAdmin(loginMap);

		HttpSession session = request.getSession();
		if (memberVO != null) { // member로 로그인 성공 시
			session.setAttribute("loginStatus", "member");
			session.setAttribute("loginInfo", memberVO);
			return "true";
		} else if (adminVO != null) { // admin으로 로그인 성공 시
			session.setAttribute("loginStatus", "admin");
			session.setAttribute("loginInfo", adminVO);
			return "true";
		} else { // 로그인 실패 시
			return "false";
		}
	}

	@Override
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo");
		mav.setViewName("redirect:/main/main.do");
		return mav;
	}
}