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
	
	// 메뉴 리스트에서 선택된 카테고리별 제품 리스트 조회
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
	
	// 카테고리 리스트 조회
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
	
<<<<<<< HEAD
	// 검색어 입력에 따른 조회
	// 제품명, 카테고리명으로만 검색
	@PostMapping(value="/getSearchList.do", produces="application/text; charset=UTF-8")
	public String getSearchList(@RequestParam Map<String, Object> paramMap) {
		System.out.println(paramMap.get("searchKeyword"));
		String searchKeyword = (String)paramMap.get("searchKeyword");

		return "redirect:/product/getProductList.do?searchKeyword=" + searchKeyword;
	}
	
	// 제품 리스트 조회
	@RequestMapping("/getProductList.do")
	public String getProductList(@RequestParam String searchKeyword, Model model) {
		List<Map<String, Object>> productList = productService.getProductList(searchKeyword);
		
		model.addAttribute(productList);
		
		return "product/getProductList";
	}
	
	// 제품 등록
=======
		// 제품 등록
>>>>>>> 9f52c8f5a4287086cff74ff393e6ce70372018c4
		@RequestMapping("/insertProduct.do")
		public String insertProduct(@RequestParam Map<String, Object> paramMap)  {
		System.out.println("test=============="+paramMap);
				
		//제품등록
		productService.insertProduct(paramMap);
				
		//제품등록상세
		productService.insertProductDetail(paramMap);
			
			
		//System.out.println();
		//return "redirect://product/getCategoryProductList.do";
		return "redirect://localhost:8099";
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
		
		
		@RequestMapping("/getCategoryProductDetail.do")
		public String getCategoryProductDetail(Model model) {

		return "product/insertProduct";
		}
		
<<<<<<< HEAD
		/*
		 * // 제품 수정
		 * 
		 * @RequestMapping("/getUpdateDetail.do") public String
		 * updateProduct(@RequestParam Map<String, Object> paramMap, Model model) {
		 * paramMap.put("prdctNo", "PRDCT20221128_12");
		 * 
		 * // 카테고리 조회 Map<String, Object> categroyMap =
		 * productService.getUpdateDetail(paramMap); model.addAttribute("categroyMap",
		 * categroyMap); return "product/updateProduct"; }
		 * 
		 * 
		 * 
		 * @PostMapping("/noCheck.do")
		 * 
		 * @ResponseBody public int noCheck(@RequestParam Map<String, Object> paramMap)
		 * throws JsonProcessingException {
		 * 
		 * int idCnt = productService.noCheck(paramMap);
		 * 
		 * 
		 * return idCnt; }
		 */
=======
		// 제품 수정
		@RequestMapping("/getUpdateDetail.do")
		public String updateProduct(@RequestParam Map<String, Object> paramMap, Model model) {
		paramMap.put("prdctNo", "PRDCT20221128_12");
				
		// 카테고리 조회
		Map<String, Object> categroyMap = productService.getUpdateDetail(paramMap);
		model.addAttribute("categroyMap", categroyMap);
		return "product/updateProduct";
		}
		
		
		
		@PostMapping("/noCheck.do")
		@ResponseBody
		public int noCheck(@RequestParam Map<String, Object> paramMap) throws JsonProcessingException {
			
		int idCnt = productService.noCheck(paramMap);
		
		
		return idCnt;
		}
>>>>>>> 9f52c8f5a4287086cff74ff393e6ce70372018c4
		
	}
