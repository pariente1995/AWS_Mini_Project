package com.sagaji.shoppingmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	@RequestMapping("/getCategoryProductList.do")
	public String getCategoryProductList() {
		return "category/getCategoryList";
	}	
}
