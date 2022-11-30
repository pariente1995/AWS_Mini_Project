package com.sagaji.shoppingmall.service.user;

import com.sagaji.shoppingmall.vo.UserVO;

public interface UserService {

	int idCheck(String userId);

	UserVO login(UserVO userVO);

	int join(UserVO userVO);

	void myInfo(UserVO userVO);

	void updateUser(UserVO userVO);
}
