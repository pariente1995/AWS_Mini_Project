package com.sagaji.shoppingmall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sagaji.shoppingmall.service.user.UserService;
import com.sagaji.shoppingmall.vo.UserVO;

@Controller
@RequestMapping
public class UserController {
	
	@Autowired
	UserService userService;
	//회원가입 진행
		@RequestMapping(value="/join.do", produces="application/text; charset=UTF-8")
		public String join(UserVO userVO, Model model) {
			int joinResult = userService.join(userVO);
			
			if(joinResult == 0) {
				model.addAttribute("joinMsg", "회원가입에 실패하셨습니다. 관리자에게 문의해주세요.");
				return "user/join";
			}
			
			model.addAttribute("joinMsg", "회원가입에 성공했습니다. 로그인해주세요.");
			return "user/login";
		}

}
