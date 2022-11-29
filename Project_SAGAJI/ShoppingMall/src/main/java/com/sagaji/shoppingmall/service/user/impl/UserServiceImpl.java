package com.sagaji.shoppingmall.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagaji.shoppingmall.service.user.UserService;
import com.sagaji.shoppingmall.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public int join(UserVO userVO) {
		return userDAO.join(userVO);
	}

	@Override
	public int idCheck(String userId) {
		return userDAO.idCheck(userId);
	}

	@Override
	public UserVO login(UserVO userVO) {
		return userDAO.login(userVO);
	}

	
}
