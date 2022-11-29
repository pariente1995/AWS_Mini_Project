package com.sagaji.shoppingmall.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sagaji.shoppingmall.service.product.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	// 카테고리에 해당하는 제품 리스트 조회
	@RequestMapping("/getCategoryProductList.do")
	public String getCategoryProductList(@RequestParam("categoryCd") int categoryCd, Model model) {		
		List<Map<String, Object>> cateProductList = productService.getCategoryProductList(categoryCd);
		
		System.out.println(cateProductList);
		System.out.println("test" + cateProductList.get(0));
		System.out.println("test111" + cateProductList.get(0).get("PRDCT_COLOR"));
		
		model.addAttribute("categoryProductList", cateProductList);
		System.out.println(model);
		return "category/getCategoryList";
	}
}
