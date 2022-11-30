package com.sagaji.shoppingmall.service.cart.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagaji.shoppingmall.service.cart.CartService;
import com.sagaji.shoppingmall.vo.CartVO;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public List<CartVO> getCartList(Map<String, String> paramMap) {
		return cartDAO.getCartList(paramMap);
	}
	
	@Override
	public void deleteCart(String prdctNo, int prdctDetailNo) {
		cartDAO.deleteCart(prdctNo, prdctDetailNo);
	}
	
	@Override
	public int insertCart(CartVO cartVO) {
		return cartDAO.insertCart(cartVO);
	}

}