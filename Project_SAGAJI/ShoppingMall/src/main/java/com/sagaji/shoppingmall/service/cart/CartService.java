package com.sagaji.shoppingmall.service.cart;

import java.util.List;
import java.util.Map;

import com.sagaji.shoppingmall.vo.CartVO;

public interface CartService {
	List<CartVO> getCartList(Map<String, String> paramMap);
	
	void deleteCart(String prdctNo, int prdctDetailNo);
	
	int insertCart(CartVO cartVO);

}
