//package com.sagaji.shoppingmall.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.sagaji.shoppingmall.service.cart.CartService;
//import com.sagaji.shoppingmall.vo.CartVO;
//
//public class CartController {
//	@Autowired
//	private CartService cartService;
//	
//	
//	@ResponseBody
//	@PostMapping(value="/.do", produces="application/text; charset=UTF-8")
//	public String getCartList() {
//		cartService.getCartList();
//		
//		return null; 
//	}
//	
//	@RequestMapping("/.do")
//	public String deleteCart(CartVO cartVO) {
//	      cartService.deleteCart(cartVO);
//	      
//	      return null;
//	   }
//	
//	@RequestMapping("/.do")
//	public String insertCart(CartVO cartVO) {
//	      cartService.insertCart(cartVO);
//	      
//	      return null;
//	   }
//	
//}
