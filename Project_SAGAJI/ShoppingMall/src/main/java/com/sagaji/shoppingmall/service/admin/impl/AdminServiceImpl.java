package com.sagaji.shoppingmall.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagaji.shoppingmall.service.admin.AdminService;
import com.sagaji.shoppingmall.vo.UserVO;

@Service
public class AdminServiceImpl implements AdminService  {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public List<UserVO> userList() {
		return adminDAO.userList();
	}

}
