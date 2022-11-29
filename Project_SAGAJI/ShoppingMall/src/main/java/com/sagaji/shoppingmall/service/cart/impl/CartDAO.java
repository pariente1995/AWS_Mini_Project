package com.sagaji.shoppingmall.service.cart.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sagaji.shoppingmall.vo.CartVO;

@Repository
public class CartDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<CartVO> getCartList(String) {
		return mybatis.;
	}
	
	public void deleteCart(Map<String, int> paramMap) {
		return mybatis.;
	}
	
	
	public void insertCart(CartVO cartVO) {
		mybatis.insert("CartDAO.addCart", cartVO);
	}
	

}
