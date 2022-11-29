package com.sagaji.shoppingmall.service.cart.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagaji.shoppingmall.vo.CartVO;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public List<CartVO> getCartList(String) {
		return cartDAO.getCartList();
	}
	
	@Override
	public void deleteCart(Map<String, int> paramMap) {
		return cartDAO.deleteCart(paramMap);
	}
	
	@Override
	public void insertCart(CartVO cartVO) {
		return cartDAO.insertCart(cartVO);
	}

}
