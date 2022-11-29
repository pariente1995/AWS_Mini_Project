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
		// 카테고리별 리스트 조회
		List<Map<String, Object>> cateProductList = productService.getCategoryProductList(categoryCd);
		
		// 카테고리 조회
		Map<String, Object> categroyMap = productService.getCategoryInfo(categoryCd);
		
		System.out.println(cateProductList);
		System.out.println(cateProductList.size());
		System.out.println(categroyMap);
		
		// 화면단으로 넘겨줄 조회 데이터 셋팅
		model.addAttribute("categoryProductList", cateProductList);
		model.addAttribute("categoryInfo", categroyMap);

		return "category/getCategoryList";
	}
}
