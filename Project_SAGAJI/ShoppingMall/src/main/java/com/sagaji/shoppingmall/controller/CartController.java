package com.sagaji.shoppingmall.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sagaji.shoppingmall.service.cart.CartService;
import com.sagaji.shoppingmall.vo.CartVO;
import com.sagaji.shoppingmall.vo.UserVO;

public class CartController {
	@Autowired
	private CartService cartService;
	
	
	@ResponseBody
	@RequestMapping(value="/.do", produces="application/text; charset=UTF-8")
	public String getCartList(Model model, @RequestParam Map<String, String> paramMap) {
		List<CartVO> cartList = cartService.getCartList(paramMap);
		
		model.addAttribute("cartList", cartList);
		
		return null; 
	}
	
	//카트에 품목 삭제
	@RequestMapping("/.do")
	public String deleteCart(@RequestParam("prdctNo") String prdctNo, @RequestParam("prdctDetailNo") int prdctDetailNo) {
	      cartService.deleteCart(prdctNo, prdctDetailNo);
	      
	      return null;
	   }
	
	//카트에 품목 추가
	@PostMapping("/insertCart.do")
	@ResponseBody
	public int insertCart(CartVO cartVO, HttpSession session) {
		UserVO loginUser = (UserVO)session.getAttribute("loginUser");
		
		cartVO.setUserId(loginUser.getUserId());
	      int result = cartService.insertCart(cartVO);
	      
	      return result;
	   }
	
}
