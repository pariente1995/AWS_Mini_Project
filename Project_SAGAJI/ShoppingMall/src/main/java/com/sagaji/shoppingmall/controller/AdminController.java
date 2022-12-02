package com.sagaji.shoppingmall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sagaji.shoppingmall.service.admin.AdminService;
import com.sagaji.shoppingmall.vo.UserVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService AdminService;
	
	@RequestMapping("/userList.do")
	public String userList(Model model) {
		
		List<UserVO> UserList = AdminService.userList();
		
		model.addAttribute("userList", UserList);
		
		return "admin/userList";
	}
}
