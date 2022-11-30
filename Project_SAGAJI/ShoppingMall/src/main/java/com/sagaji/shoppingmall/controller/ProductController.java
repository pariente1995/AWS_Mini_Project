package com.sagaji.shoppingmall.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sagaji.shoppingmall.service.product.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/getCategoryProductList.do")
	public String getCategoryProductList(@RequestParam("categoryCd") int categoryCd, Model model) {
		// 카테고리별 리스트 조회
		List<Map<String, Object>> cateProductList = productService.getCategoryProductList(categoryCd);
		
		// 카테고리 조회
		Map<String, Object> categroyMap = productService.getCategoryInfo(categoryCd);
		
		// 화면단으로 넘겨줄 조회 데이터 셋팅
		model.addAttribute("categoryProductList", cateProductList);
		model.addAttribute("categoryInfo", categroyMap);

		return "category/getCategoryList";
	}
	
	@PostMapping(value="/getCategoryList.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String getCategoryList() throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> categoryList = productService.getCategoryList();
		
		returnMap.put("categoryList", categoryList);
		
		String jsonStr = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(returnMap);
		
		return jsonStr;
	}
	
	// 제품 등록
			@RequestMapping("/insertProduct.do")
			public String insertProduct(@RequestParam Map<String, Object> paramMap)  {
			/*
				map.put("prdctNo","1");	//제품번호
				map.put("prdctDetailNo","4");	//제품 상세번호
				map.put("prdctNm","쇼파"); //제품명
				map.put("prdctCategoryCd","옷장"); //카테고리
				map.put("prdctSize","S"); //사이즈
				map.put("prdctColor","red"); //색상
				map.put("prdctMaterial","tree"); //소재
				map.put("prdctPrice","366000"); //가격
				map.put("prdctRemain","제품 ㅇㅇㅇㅇ"); //설명
			*/			
			//제품등록
			productService.insertProduct(paramMap);
					
			//제품등록상세
			productService.insertProductDetail(paramMap);
				
				
			System.out.println();
			return "redirect://product/getCategoryProductList.do";
			}
			
			// 제품 수정
			@PostMapping("/updateProduct.do")
			public String updateProduct(@RequestParam Map<String, Object> paramMap) {
				
		
			
			productService.updateProduct(paramMap);

			return "product/productlist";
			}
			
			// 제품 옵션 추가
			@PostMapping("/optionProduct.do")
			public String optionProduct(@RequestParam Map<String, Object> paramMap) {
				
				
			
			productService.insertProductDetail(paramMap);

			return "product/productlist";
			}
			
			
			
			@PostMapping("/useYnProduct.do")
			public String deleteProduct(@RequestParam Map<String, Object> paramMap) {
				
			Map<String, Object> map = new HashMap<>();
				
			// 제품 삭제
			productService.useYnProduct(map);
			return "product/productlist";
			
			}
}
